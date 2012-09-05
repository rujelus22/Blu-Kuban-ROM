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
    .line 47750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49078
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49121
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49164
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49207
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49250
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49293
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49336
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49379
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49422
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49465
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49508
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49551
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49594
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49637
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49680
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49723
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49766
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49809
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49852
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49895
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 49938
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 49981
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50024
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50067
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50110
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50153
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50196
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50239
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50282
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50325
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50368
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50411
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50454
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50497
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50540
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50583
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50626
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50669
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50712
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50798
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50841
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50884
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 50927
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 50970
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51013
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51056
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51099
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51142
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51185
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51228
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51314
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51357
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51443
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51486
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51529
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51572
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51615
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51658
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51701
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51744
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51787
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51830
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51873
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 47751
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->maybeForceBuilderInitialization()V

    .line 47752
    return-void
.end method

.method static synthetic access$64200()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 1

    .prologue
    .line 47745
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 1

    .prologue
    .line 47757
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 47755
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 3

    .prologue
    .line 47908
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    .line 47909
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 47910
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 47912
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47745
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

    .line 47926
    new-instance v3, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 47927
    .local v3, result:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47928
    .local v0, from_bitField0_:I
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47929
    .local v1, from_bitField1_:I
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47930
    .local v2, from_bitField2_:I
    const/4 v4, 0x0

    .line 47931
    .local v4, to_bitField0_:I
    const/4 v5, 0x0

    .line 47932
    .local v5, to_bitField1_:I
    const/4 v6, 0x0

    .line 47933
    .local v6, to_bitField2_:I
    and-int/lit8 v7, v0, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 47934
    or-int/lit8 v4, v4, 0x1

    .line 47936
    :cond_21
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47937
    and-int/lit8 v7, v0, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2d

    .line 47938
    or-int/lit8 v4, v4, 0x2

    .line 47940
    :cond_2d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 47941
    and-int/lit8 v7, v0, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_39

    .line 47942
    or-int/lit8 v4, v4, 0x4

    .line 47944
    :cond_39
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 47945
    and-int/lit8 v7, v0, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_46

    .line 47946
    or-int/lit8 v4, v4, 0x8

    .line 47948
    :cond_46
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 47949
    and-int/lit8 v7, v0, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_53

    .line 47950
    or-int/lit8 v4, v4, 0x10

    .line 47952
    :cond_53
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 47953
    and-int/lit8 v7, v0, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_60

    .line 47954
    or-int/lit8 v4, v4, 0x20

    .line 47956
    :cond_60
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$64902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 47957
    and-int/lit8 v7, v0, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_6d

    .line 47958
    or-int/lit8 v4, v4, 0x40

    .line 47960
    :cond_6d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 47961
    and-int/lit16 v7, v0, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_7a

    .line 47962
    or-int/lit16 v4, v4, 0x80

    .line 47964
    :cond_7a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 47965
    and-int/lit16 v7, v0, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_87

    .line 47966
    or-int/lit16 v4, v4, 0x100

    .line 47968
    :cond_87
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 47969
    and-int/lit16 v7, v0, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_94

    .line 47970
    or-int/lit16 v4, v4, 0x200

    .line 47972
    :cond_94
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 47973
    and-int/lit16 v7, v0, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_a1

    .line 47974
    or-int/lit16 v4, v4, 0x400

    .line 47976
    :cond_a1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 47977
    and-int/lit16 v7, v0, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_ae

    .line 47978
    or-int/lit16 v4, v4, 0x800

    .line 47980
    :cond_ae
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 47981
    and-int/lit16 v7, v0, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_bb

    .line 47982
    or-int/lit16 v4, v4, 0x1000

    .line 47984
    :cond_bb
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 47985
    and-int/lit16 v7, v0, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_c8

    .line 47986
    or-int/lit16 v4, v4, 0x2000

    .line 47988
    :cond_c8
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 47989
    and-int/lit16 v7, v0, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_d5

    .line 47990
    or-int/lit16 v4, v4, 0x4000

    .line 47992
    :cond_d5
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 47993
    and-int v7, v0, v10

    if-ne v7, v10, :cond_df

    .line 47994
    or-int/2addr v4, v10

    .line 47996
    :cond_df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$65902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 47997
    and-int v7, v0, v11

    if-ne v7, v11, :cond_e9

    .line 47998
    or-int/2addr v4, v11

    .line 48000
    :cond_e9
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 48001
    and-int v7, v0, v12

    if-ne v7, v12, :cond_f3

    .line 48002
    or-int/2addr v4, v12

    .line 48004
    :cond_f3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 48005
    and-int v7, v0, v13

    if-ne v7, v13, :cond_fd

    .line 48006
    or-int/2addr v4, v13

    .line 48008
    :cond_fd
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 48009
    const/high16 v7, 0x8

    and-int/2addr v7, v0

    const/high16 v8, 0x8

    if-ne v7, v8, :cond_10c

    .line 48010
    const/high16 v7, 0x8

    or-int/2addr v4, v7

    .line 48012
    :cond_10c
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 48013
    const/high16 v7, 0x10

    and-int/2addr v7, v0

    const/high16 v8, 0x10

    if-ne v7, v8, :cond_11b

    .line 48014
    const/high16 v7, 0x10

    or-int/2addr v4, v7

    .line 48016
    :cond_11b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 48017
    const/high16 v7, 0x20

    and-int/2addr v7, v0

    const/high16 v8, 0x20

    if-ne v7, v8, :cond_12a

    .line 48018
    const/high16 v7, 0x20

    or-int/2addr v4, v7

    .line 48020
    :cond_12a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 48021
    const/high16 v7, 0x40

    and-int/2addr v7, v0

    const/high16 v8, 0x40

    if-ne v7, v8, :cond_139

    .line 48022
    const/high16 v7, 0x40

    or-int/2addr v4, v7

    .line 48024
    :cond_139
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 48025
    const/high16 v7, 0x80

    and-int/2addr v7, v0

    const/high16 v8, 0x80

    if-ne v7, v8, :cond_148

    .line 48026
    const/high16 v7, 0x80

    or-int/2addr v4, v7

    .line 48028
    :cond_148
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 48029
    const/high16 v7, 0x100

    and-int/2addr v7, v0

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_157

    .line 48030
    const/high16 v7, 0x100

    or-int/2addr v4, v7

    .line 48032
    :cond_157
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 48033
    const/high16 v7, 0x200

    and-int/2addr v7, v0

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_166

    .line 48034
    const/high16 v7, 0x200

    or-int/2addr v4, v7

    .line 48036
    :cond_166
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$66902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 48037
    const/high16 v7, 0x400

    and-int/2addr v7, v0

    const/high16 v8, 0x400

    if-ne v7, v8, :cond_175

    .line 48038
    const/high16 v7, 0x400

    or-int/2addr v4, v7

    .line 48040
    :cond_175
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 48041
    const/high16 v7, 0x800

    and-int/2addr v7, v0

    const/high16 v8, 0x800

    if-ne v7, v8, :cond_184

    .line 48042
    const/high16 v7, 0x800

    or-int/2addr v4, v7

    .line 48044
    :cond_184
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 48045
    const/high16 v7, 0x1000

    and-int/2addr v7, v0

    const/high16 v8, 0x1000

    if-ne v7, v8, :cond_193

    .line 48046
    const/high16 v7, 0x1000

    or-int/2addr v4, v7

    .line 48048
    :cond_193
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 48049
    const/high16 v7, 0x2000

    and-int/2addr v7, v0

    const/high16 v8, 0x2000

    if-ne v7, v8, :cond_1a2

    .line 48050
    const/high16 v7, 0x2000

    or-int/2addr v4, v7

    .line 48052
    :cond_1a2
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 48053
    const/high16 v7, 0x4000

    and-int/2addr v7, v0

    const/high16 v8, 0x4000

    if-ne v7, v8, :cond_1b1

    .line 48054
    const/high16 v7, 0x4000

    or-int/2addr v4, v7

    .line 48056
    :cond_1b1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 48057
    and-int v7, v0, v9

    if-ne v7, v9, :cond_1bb

    .line 48058
    or-int/2addr v4, v9

    .line 48060
    :cond_1bb
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 48061
    and-int/lit8 v7, v1, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c7

    .line 48062
    or-int/lit8 v5, v5, 0x1

    .line 48064
    :cond_1c7
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 48065
    and-int/lit8 v7, v1, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d3

    .line 48066
    or-int/lit8 v5, v5, 0x2

    .line 48068
    :cond_1d3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 48069
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1df

    .line 48070
    or-int/lit8 v5, v5, 0x4

    .line 48072
    :cond_1df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 48073
    and-int/lit8 v7, v1, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1ec

    .line 48074
    or-int/lit8 v5, v5, 0x8

    .line 48076
    :cond_1ec
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$67902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 48077
    and-int/lit8 v7, v1, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_1f9

    .line 48078
    or-int/lit8 v5, v5, 0x10

    .line 48080
    :cond_1f9
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 48081
    and-int/lit8 v7, v1, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_206

    .line 48082
    or-int/lit8 v5, v5, 0x20

    .line 48084
    :cond_206
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 48085
    and-int/lit8 v7, v1, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_213

    .line 48086
    or-int/lit8 v5, v5, 0x40

    .line 48088
    :cond_213
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 48089
    and-int/lit16 v7, v1, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_220

    .line 48090
    or-int/lit16 v5, v5, 0x80

    .line 48092
    :cond_220
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 48093
    and-int/lit16 v7, v1, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_22d

    .line 48094
    or-int/lit16 v5, v5, 0x100

    .line 48096
    :cond_22d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 48097
    and-int/lit16 v7, v1, 0x200

    const/16 v8, 0x200

    if-ne v7, v8, :cond_23a

    .line 48098
    or-int/lit16 v5, v5, 0x200

    .line 48100
    :cond_23a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 48101
    and-int/lit16 v7, v1, 0x400

    const/16 v8, 0x400

    if-ne v7, v8, :cond_247

    .line 48102
    or-int/lit16 v5, v5, 0x400

    .line 48104
    :cond_247
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 48105
    and-int/lit16 v7, v1, 0x800

    const/16 v8, 0x800

    if-ne v7, v8, :cond_254

    .line 48106
    or-int/lit16 v5, v5, 0x800

    .line 48108
    :cond_254
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 48109
    and-int/lit16 v7, v1, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_261

    .line 48110
    or-int/lit16 v5, v5, 0x1000

    .line 48112
    :cond_261
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 48113
    and-int/lit16 v7, v1, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_26e

    .line 48114
    or-int/lit16 v5, v5, 0x2000

    .line 48116
    :cond_26e
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$68902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 48117
    and-int/lit16 v7, v1, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_27b

    .line 48118
    or-int/lit16 v5, v5, 0x4000

    .line 48120
    :cond_27b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 48121
    and-int v7, v1, v10

    if-ne v7, v10, :cond_285

    .line 48122
    or-int/2addr v5, v10

    .line 48124
    :cond_285
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 48125
    and-int v7, v1, v11

    if-ne v7, v11, :cond_28f

    .line 48126
    or-int/2addr v5, v11

    .line 48128
    :cond_28f
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 48129
    and-int v7, v1, v12

    if-ne v7, v12, :cond_299

    .line 48130
    or-int/2addr v5, v12

    .line 48132
    :cond_299
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 48133
    and-int v7, v1, v13

    if-ne v7, v13, :cond_2a3

    .line 48134
    or-int/2addr v5, v13

    .line 48136
    :cond_2a3
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 48137
    const/high16 v7, 0x8

    and-int/2addr v7, v1

    const/high16 v8, 0x8

    if-ne v7, v8, :cond_2b2

    .line 48138
    const/high16 v7, 0x8

    or-int/2addr v5, v7

    .line 48140
    :cond_2b2
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 48141
    const/high16 v7, 0x10

    and-int/2addr v7, v1

    const/high16 v8, 0x10

    if-ne v7, v8, :cond_2c1

    .line 48142
    const/high16 v7, 0x10

    or-int/2addr v5, v7

    .line 48144
    :cond_2c1
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 48145
    const/high16 v7, 0x20

    and-int/2addr v7, v1

    const/high16 v8, 0x20

    if-ne v7, v8, :cond_2d0

    .line 48146
    const/high16 v7, 0x20

    or-int/2addr v5, v7

    .line 48148
    :cond_2d0
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 48149
    const/high16 v7, 0x40

    and-int/2addr v7, v1

    const/high16 v8, 0x40

    if-ne v7, v8, :cond_2df

    .line 48150
    const/high16 v7, 0x40

    or-int/2addr v5, v7

    .line 48152
    :cond_2df
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 48153
    const/high16 v7, 0x80

    and-int/2addr v7, v1

    const/high16 v8, 0x80

    if-ne v7, v8, :cond_2ee

    .line 48154
    const/high16 v7, 0x80

    or-int/2addr v5, v7

    .line 48156
    :cond_2ee
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$69902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 48157
    const/high16 v7, 0x100

    and-int/2addr v7, v1

    const/high16 v8, 0x100

    if-ne v7, v8, :cond_2fd

    .line 48158
    const/high16 v7, 0x100

    or-int/2addr v5, v7

    .line 48160
    :cond_2fd
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 48161
    const/high16 v7, 0x200

    and-int/2addr v7, v1

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_30c

    .line 48162
    const/high16 v7, 0x200

    or-int/2addr v5, v7

    .line 48164
    :cond_30c
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 48165
    const/high16 v7, 0x400

    and-int/2addr v7, v1

    const/high16 v8, 0x400

    if-ne v7, v8, :cond_31b

    .line 48166
    const/high16 v7, 0x400

    or-int/2addr v5, v7

    .line 48168
    :cond_31b
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 48169
    const/high16 v7, 0x800

    and-int/2addr v7, v1

    const/high16 v8, 0x800

    if-ne v7, v8, :cond_32a

    .line 48170
    const/high16 v7, 0x800

    or-int/2addr v5, v7

    .line 48172
    :cond_32a
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 48173
    const/high16 v7, 0x1000

    and-int/2addr v7, v1

    const/high16 v8, 0x1000

    if-ne v7, v8, :cond_339

    .line 48174
    const/high16 v7, 0x1000

    or-int/2addr v5, v7

    .line 48176
    :cond_339
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 48177
    const/high16 v7, 0x2000

    and-int/2addr v7, v1

    const/high16 v8, 0x2000

    if-ne v7, v8, :cond_348

    .line 48178
    const/high16 v7, 0x2000

    or-int/2addr v5, v7

    .line 48180
    :cond_348
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 48181
    const/high16 v7, 0x4000

    and-int/2addr v7, v1

    const/high16 v8, 0x4000

    if-ne v7, v8, :cond_357

    .line 48182
    const/high16 v7, 0x4000

    or-int/2addr v5, v7

    .line 48184
    :cond_357
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 48185
    and-int v7, v1, v9

    if-ne v7, v9, :cond_361

    .line 48186
    or-int/2addr v5, v9

    .line 48188
    :cond_361
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 48189
    and-int/lit8 v7, v2, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_36d

    .line 48190
    or-int/lit8 v6, v6, 0x1

    .line 48192
    :cond_36d
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 48193
    and-int/lit8 v7, v2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_379

    .line 48194
    or-int/lit8 v6, v6, 0x2

    .line 48196
    :cond_379
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$70902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 48197
    and-int/lit8 v7, v2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_385

    .line 48198
    or-int/lit8 v6, v6, 0x4

    .line 48200
    :cond_385
    iget-object v7, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    invoke-static {v3, v7}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 48201
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I
    invoke-static {v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48202
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I
    invoke-static {v3, v5}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48203
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I
    invoke-static {v3, v6}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->access$71302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I

    .line 48204
    return-object v3
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47745
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

    .line 47761
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 47762
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 47763
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47764
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 47765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47766
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 47767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47768
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 47769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47770
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 47771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47772
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 47773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47774
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 47775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47776
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 47777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47778
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 47779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47780
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 47781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47782
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 47783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47784
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 47785
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47786
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 47787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47788
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 47789
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47790
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 47791
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47792
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 47793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47794
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 47795
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47796
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 47797
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47798
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 47799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47800
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 47801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47802
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 47803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47804
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 47805
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47806
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 47807
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47808
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 47809
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 47811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47812
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 47813
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47814
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 47815
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47816
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 47817
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47818
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 47819
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47820
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 47821
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47822
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 47823
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47824
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 47825
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 47826
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 47827
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47828
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 47829
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47830
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 47831
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47832
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 47833
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47834
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 47835
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47836
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 47837
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47838
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 47839
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47840
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 47841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47842
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 47843
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47844
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 47845
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47846
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 47847
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47848
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 47849
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47850
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 47851
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47852
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 47853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47854
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 47855
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47856
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 47857
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47858
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 47859
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47860
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 47861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47862
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 47863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47864
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 47865
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47866
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 47867
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47868
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 47869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47870
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 47871
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47872
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 47873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47874
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 47875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47876
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 47877
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47878
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 47879
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v6

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47880
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 47881
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47882
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 47883
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47884
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 47885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47886
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 47887
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47888
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 47889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 47890
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 47891
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47892
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 47893
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47894
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 47895
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 47896
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49114
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49116
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49117
    return-object p0
.end method

.method public clearChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49159
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49160
    return-object p0
.end method

.method public clearChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49200
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49202
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49203
    return-object p0
.end method

.method public clearConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51436
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51438
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51439
    return-object p0
.end method

.method public clearConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51479
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51482
    return-object p0
.end method

.method public clearConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50017
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50020
    return-object p0
.end method

.method public clearConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50060
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50062
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50063
    return-object p0
.end method

.method public clearConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50662
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50664
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50665
    return-object p0
.end method

.method public clearConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50705
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50707
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50708
    return-object p0
.end method

.method public clearConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50361
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50363
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50364
    return-object p0
.end method

.method public clearConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50404
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50406
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50407
    return-object p0
.end method

.method public clearConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49673
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49675
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49676
    return-object p0
.end method

.method public clearConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49716
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49718
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49719
    return-object p0
.end method

.method public clearConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51092
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51094
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51095
    return-object p0
.end method

.method public clearConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51135
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51138
    return-object p0
.end method

.method public clearDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49845
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49847
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49848
    return-object p0
.end method

.method public clearDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49888
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49890
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49891
    return-object p0
.end method

.method public clearError()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50189
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50192
    return-object p0
.end method

.method public clearEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51178
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51180
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51181
    return-object p0
.end method

.method public clearEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51221
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51223
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51224
    return-object p0
.end method

.method public clearEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49802
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49804
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49805
    return-object p0
.end method

.method public clearEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49759
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49761
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49762
    return-object p0
.end method

.method public clearGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51350
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51352
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51353
    return-object p0
.end method

.method public clearGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51393
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51395
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51396
    return-object p0
.end method

.method public clearGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50447
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50449
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50450
    return-object p0
.end method

.method public clearHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51780
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51782
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51783
    return-object p0
.end method

.method public clearHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51823
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51825
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51826
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51608
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51610
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51611
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51651
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51653
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51654
    return-object p0
.end method

.method public clearHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51694
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51696
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51697
    return-object p0
.end method

.method public clearHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51737
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51739
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51740
    return-object p0
.end method

.method public clearHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51522
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51524
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51525
    return-object p0
.end method

.method public clearHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51565
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51567
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51568
    return-object p0
.end method

.method public clearHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51866
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51868
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51869
    return-object p0
.end method

.method public clearHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51909
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51911
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51912
    return-object p0
.end method

.method public clearInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50834
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50836
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50837
    return-object p0
.end method

.method public clearInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50232
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50234
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50235
    return-object p0
.end method

.method public clearInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50877
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50879
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50880
    return-object p0
.end method

.method public clearLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50275
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50277
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50278
    return-object p0
.end method

.method public clearLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50318
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50320
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50321
    return-object p0
.end method

.method public clearMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49630
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49632
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49633
    return-object p0
.end method

.method public clearMigration()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50619
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50622
    return-object p0
.end method

.method public clearPingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49931
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 49933
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49934
    return-object p0
.end method

.method public clearPingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 49974
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 49976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49977
    return-object p0
.end method

.method public clearPresence()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49329
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49331
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49332
    return-object p0
.end method

.method public clearPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49243
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49245
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49246
    return-object p0
.end method

.method public clearPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49286
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49288
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49289
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49501
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49503
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49504
    return-object p0
.end method

.method public clearReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49544
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49546
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49547
    return-object p0
.end method

.method public clearReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49587
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49589
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49590
    return-object p0
.end method

.method public clearReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50748
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50750
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50751
    return-object p0
.end method

.method public clearReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50920
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 50922
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50923
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49066
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49067
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49069
    return-object p0
.end method

.method public clearSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50791
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50793
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50794
    return-object p0
.end method

.method public clearSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50963
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 50965
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50966
    return-object p0
.end method

.method public clearSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51264
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51266
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51267
    return-object p0
.end method

.method public clearSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 51307
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51309
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51310
    return-object p0
.end method

.method public clearTileEvent()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50576
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50578
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50579
    return-object p0
.end method

.method public clearTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50490
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50492
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50493
    return-object p0
.end method

.method public clearTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 50533
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50535
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50536
    return-object p0
.end method

.method public clearTyping()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49458
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49460
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49461
    return-object p0
.end method

.method public clearTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49372
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49374
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49375
    return-object p0
.end method

.method public clearTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 49415
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49417
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49418
    return-object p0
.end method

.method public clearUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50103
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50105
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50106
    return-object p0
.end method

.method public clearUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 50146
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50148
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50149
    return-object p0
.end method

.method public clearUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51006
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51008
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51009
    return-object p0
.end method

.method public clearUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 51049
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51051
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51052
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3

    .prologue
    .line 47900
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
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 49083
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 49126
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 49169
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 51405
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 51448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 49986
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 50029
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 50631
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 50674
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 50330
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 50373
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 49642
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 49685
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 51061
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 51104
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47745
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 47904
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 49814
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 49857
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 50158
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 51147
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 51190
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 49771
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 49728
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 51319
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 51362
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 50416
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 51749
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 51792
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 51577
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 51620
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 51663
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 51706
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 51491
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 51534
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 51835
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 51878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 50803
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 50201
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 50846
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 50244
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 50287
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 49599
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 50588
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 49900
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 49943
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 49298
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 49212
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 49255
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 49470
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 49513
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 49556
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 50717
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 50889
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49047
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49048
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 49049
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 49050
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49053
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
    .line 50760
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 50932
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 51233
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 51276
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 50545
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 50459
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 50502
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 49427
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 49341
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 49384
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 50072
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 50115
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 50975
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 51018
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 49080
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
    .line 49123
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
    .line 49166
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

    .line 51402
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

    .line 51445
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

    .line 49983
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

    .line 50026
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
    .line 50628
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
    .line 50671
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

    .line 50327
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

    .line 50370
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
    .line 49639
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

    .line 49682
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

    .line 51058
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

    .line 51101
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

    .line 49811
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

    .line 49854
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

    .line 50155
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

    .line 51144
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

    .line 51187
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

    .line 49768
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

    .line 49725
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

    .line 51316
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

    .line 51359
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

    .line 50413
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

    .line 51746
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

    .line 51789
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

    .line 51574
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

    .line 51617
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

    .line 51660
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

    .line 51703
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

    .line 51488
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

    .line 51531
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
    .line 51832
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
    .line 51875
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
    .line 50800
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

    .line 50198
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
    .line 50843
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

    .line 50241
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

    .line 50284
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
    .line 49596
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
    .line 50585
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

    .line 49897
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

    .line 49940
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
    .line 49295
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
    .line 49209
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
    .line 49252
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
    .line 49467
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
    .line 49510
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
    .line 49553
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
    .line 50714
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
    .line 50886
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

    .line 49044
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
    .line 50757
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
    .line 50929
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

    .line 51230
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

    .line 51273
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
    .line 50542
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
    .line 50456
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
    .line 50499
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
    .line 49424
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
    .line 49338
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
    .line 49381
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

    .line 50069
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

    .line 50112
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
    .line 50972
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
    .line 51015
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

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49102
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49104
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49110
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49111
    return-object p0

    .line 49107
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_1f
.end method

.method public mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49145
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49147
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49153
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49154
    return-object p0

    .line 49150
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    goto :goto_1f
.end method

.method public mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49188
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49190
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49196
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49197
    return-object p0

    .line 49193
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    goto :goto_20
.end method

.method public mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 51424
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51426
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51432
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51433
    return-object p0

    .line 51429
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    goto :goto_1f
.end method

.method public mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 51467
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51469
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51475
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51476
    return-object p0

    .line 51472
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    goto :goto_1f
.end method

.method public mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 50005
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50007
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50013
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50014
    return-object p0

    .line 50010
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    goto :goto_1f
.end method

.method public mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 50048
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50050
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50056
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50057
    return-object p0

    .line 50053
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    goto :goto_1f
.end method

.method public mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50650
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50652
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50658
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50659
    return-object p0

    .line 50655
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    goto :goto_20
.end method

.method public mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50695
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50701
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50702
    return-object p0

    .line 50698
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    goto :goto_20
.end method

.method public mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4000

    .line 50349
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50351
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50357
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50358
    return-object p0

    .line 50354
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    goto :goto_1f
.end method

.method public mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, -0x8000

    .line 50392
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50394
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50400
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50401
    return-object p0

    .line 50397
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    goto :goto_1f
.end method

.method public mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49661
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49663
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49669
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49670
    return-object p0

    .line 49666
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    goto :goto_20
.end method

.method public mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 49704
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49706
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49712
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49713
    return-object p0

    .line 49709
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    goto :goto_20
.end method

.method public mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 51080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51082
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51088
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51089
    return-object p0

    .line 51085
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    goto :goto_20
.end method

.method public mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 51123
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51125
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51131
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51132
    return-object p0

    .line 51128
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 49833
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49835
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49841
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49842
    return-object p0

    .line 49838
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 49876
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49878
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49884
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49885
    return-object p0

    .line 49881
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    goto :goto_1f
.end method

.method public mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 50177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50179
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50185
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50186
    return-object p0

    .line 50182
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    goto :goto_1f
.end method

.method public mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 51166
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51168
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51174
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51175
    return-object p0

    .line 51171
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    goto :goto_1f
.end method

.method public mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 51209
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51211
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51217
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51218
    return-object p0

    .line 51214
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    goto :goto_1f
.end method

.method public mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 49790
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49792
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49798
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49799
    return-object p0

    .line 49795
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    goto :goto_1f
.end method

.method public mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 49747
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49749
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49755
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49756
    return-object p0

    .line 49752
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
    .line 47745
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

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
    .line 47745
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
    .line 48422
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48423
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_792

    .line 48428
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48430
    :sswitch_d
    return-object p0

    .line 48435
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 48436
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 48440
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 48441
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 48442
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 48444
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48445
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48449
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    .line 48450
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresenceRequest()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 48451
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 48453
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48454
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48458
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    .line 48459
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTypingRequest()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 48460
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 48462
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48463
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto :goto_0

    .line 48467
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    .line 48468
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceipt()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 48469
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 48471
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48472
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48476
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    .line 48477
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasMembershipChange()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 48478
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 48480
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48481
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48485
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    .line 48486
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 48487
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 48489
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48490
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48494
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    move-result-object v0

    .line 48495
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 48496
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;

    .line 48498
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48499
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48503
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    .line 48504
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventStreamRequest()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 48505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 48507
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48508
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48512
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    move-result-object v0

    .line 48513
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSteamResponse()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 48514
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;

    .line 48516
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48517
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48521
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    .line 48522
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasDeviceRegistrationRequest()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 48523
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 48525
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48526
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48530
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    move-result-object v0

    .line 48531
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasDeviceRegistrationResponse()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 48532
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;

    .line 48534
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48535
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48539
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    .line 48540
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPingRequest()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 48541
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    .line 48543
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48544
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48548
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    .line 48549
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPingResponse()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 48550
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    .line 48552
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48553
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48557
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    .line 48558
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationListRequest()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 48559
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 48561
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48562
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48566
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    move-result-object v0

    .line 48567
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationListResponse()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 48568
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;

    .line 48570
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48571
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48575
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    .line 48576
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserCreationRequest()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 48577
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 48579
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48580
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48584
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    .line 48585
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserCreationResponse()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 48586
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    .line 48588
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48589
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48593
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    move-result-object v0

    .line 48594
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasError()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 48595
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;

    .line 48597
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48598
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48602
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    .line 48603
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 48604
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 48606
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48607
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48611
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    .line 48612
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasLeaveConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 48613
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 48615
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48616
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48620
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    .line 48621
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasLeaveConversationResponse()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 48622
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    .line 48624
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48625
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48629
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    .line 48630
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGroupConversationRename()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 48631
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 48633
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48634
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48638
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    .line 48639
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasMigration()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 48640
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 48642
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48643
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48647
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    .line 48648
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationPreferenceRequest()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 48649
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 48651
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48652
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48656
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    move-result-object v0

    .line 48657
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationPreferenceResponse()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 48658
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;

    .line 48660
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48661
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48665
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    .line 48666
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReplyToInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 48667
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 48669
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48670
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48674
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    .line 48675
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSetAclsRequest()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 48676
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    .line 48678
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48679
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48683
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    .line 48684
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInvalidateLocalCache()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 48685
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    .line 48687
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48688
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48692
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    :sswitch_344
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    .line 48693
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_355

    .line 48694
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    .line 48696
    :cond_355
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48697
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48701
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    :sswitch_361
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    .line 48702
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReplyToInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_372

    .line 48703
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    .line 48705
    :cond_372
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48706
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48710
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;
    :sswitch_37e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    .line 48711
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSetAclsResponse()Z

    move-result v2

    if-eqz v2, :cond_38f

    .line 48712
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    .line 48714
    :cond_38f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48715
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48719
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;
    :sswitch_39b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    .line 48720
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserInfoRequest()Z

    move-result v2

    if-eqz v2, :cond_3ac

    .line 48721
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    .line 48723
    :cond_3ac
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48724
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48728
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    :sswitch_3b8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    .line 48729
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasUserInfoResponse()Z

    move-result v2

    if-eqz v2, :cond_3c9

    .line 48730
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 48732
    :cond_3c9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48733
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48737
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    :sswitch_3d5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    .line 48738
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_3e6

    .line 48739
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 48741
    :cond_3e6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48742
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48746
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    :sswitch_3f2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    .line 48747
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_403

    .line 48748
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    .line 48750
    :cond_403
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48751
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48755
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    :sswitch_40f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    .line 48756
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresenceResponse()Z

    move-result v2

    if-eqz v2, :cond_420

    .line 48757
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    .line 48759
    :cond_420
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48760
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48764
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;
    :sswitch_42c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    .line 48765
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasPresence()Z

    move-result v2

    if-eqz v2, :cond_43d

    .line 48766
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 48768
    :cond_43d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48769
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48773
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    :sswitch_449
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    .line 48774
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTypingResponse()Z

    move-result v2

    if-eqz v2, :cond_45a

    .line 48775
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    .line 48777
    :cond_45a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48778
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48782
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;
    :sswitch_466
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    .line 48783
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTyping()Z

    move-result v2

    if-eqz v2, :cond_477

    .line 48784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 48786
    :cond_477
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48787
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48791
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    :sswitch_483
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    .line 48792
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_494

    .line 48793
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 48795
    :cond_494
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48796
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48800
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    :sswitch_4a0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    move-result-object v0

    .line 48801
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasEventSearchResponse()Z

    move-result v2

    if-eqz v2, :cond_4b1

    .line 48802
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;

    .line 48804
    :cond_4b1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48805
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48809
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;
    :sswitch_4bd
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    .line 48810
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRenameRequest()Z

    move-result v2

    if-eqz v2, :cond_4ce

    .line 48811
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 48813
    :cond_4ce
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48814
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48818
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    :sswitch_4da
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    move-result-object v0

    .line 48819
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationRenameResponse()Z

    move-result v2

    if-eqz v2, :cond_4eb

    .line 48820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;

    .line 48822
    :cond_4eb
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48823
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48827
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;
    :sswitch_4f7
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 48828
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessageRequest()Z

    move-result v2

    if-eqz v2, :cond_508

    .line 48829
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 48831
    :cond_508
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48832
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48836
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    :sswitch_514
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    move-result-object v0

    .line 48837
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasChatMessageResponse()Z

    move-result v2

    if-eqz v2, :cond_525

    .line 48838
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;

    .line 48840
    :cond_525
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48841
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48845
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;
    :sswitch_531
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    .line 48846
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceiptRequest()Z

    move-result v2

    if-eqz v2, :cond_542

    .line 48847
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    .line 48849
    :cond_542
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48850
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48854
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    :sswitch_54e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    .line 48855
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasReceiptResponse()Z

    move-result v2

    if-eqz v2, :cond_55f

    .line 48856
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    .line 48858
    :cond_55f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48859
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48863
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    :sswitch_56b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    .line 48864
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSuggestionsRequest()Z

    move-result v2

    if-eqz v2, :cond_57c

    .line 48865
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 48867
    :cond_57c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48868
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48872
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    :sswitch_588
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    .line 48873
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasSuggestionsResponse()Z

    move-result v2

    if-eqz v2, :cond_599

    .line 48874
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    .line 48876
    :cond_599
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48877
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48881
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    :sswitch_5a5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    .line 48882
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEventRequest()Z

    move-result v2

    if-eqz v2, :cond_5b6

    .line 48883
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 48885
    :cond_5b6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48886
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48890
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    :sswitch_5c2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    .line 48891
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEventResponse()Z

    move-result v2

    if-eqz v2, :cond_5d3

    .line 48892
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    .line 48894
    :cond_5d3
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48895
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48899
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;
    :sswitch_5df
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    .line 48900
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasTileEvent()Z

    move-result v2

    if-eqz v2, :cond_5f0

    .line 48901
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 48903
    :cond_5f0
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48904
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48908
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    :sswitch_5fc
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    .line 48909
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGlobalConversationPreferencesRequest()Z

    move-result v2

    if-eqz v2, :cond_60d

    .line 48910
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 48912
    :cond_60d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48913
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48917
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    :sswitch_619
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    .line 48918
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasGlobalConversationPreferencesResponse()Z

    move-result v2

    if-eqz v2, :cond_62a

    .line 48919
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    .line 48921
    :cond_62a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48922
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48926
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;
    :sswitch_636
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    .line 48927
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationJoinRequest()Z

    move-result v2

    if-eqz v2, :cond_647

    .line 48928
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 48930
    :cond_647
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48931
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48935
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    :sswitch_653
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    move-result-object v0

    .line 48936
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasConversationJoinResponse()Z

    move-result v2

    if-eqz v2, :cond_664

    .line 48937
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;

    .line 48939
    :cond_664
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48940
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48944
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;
    :sswitch_670
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    .line 48945
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_681

    .line 48946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 48948
    :cond_681
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48949
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48953
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    :sswitch_68d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    .line 48954
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteResponse()Z

    move-result v2

    if-eqz v2, :cond_69e

    .line 48955
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    .line 48957
    :cond_69e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48958
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48962
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    :sswitch_6aa
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    .line 48963
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteKeepAliveRequest()Z

    move-result v2

    if-eqz v2, :cond_6bb

    .line 48964
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    .line 48966
    :cond_6bb
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48967
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48971
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    :sswitch_6c7
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    .line 48972
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteKeepAliveResponse()Z

    move-result v2

    if-eqz v2, :cond_6d8

    .line 48973
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    .line 48975
    :cond_6d8
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48976
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48980
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    :sswitch_6e4
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    .line 48981
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteReplyRequest()Z

    move-result v2

    if-eqz v2, :cond_6f5

    .line 48982
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 48984
    :cond_6f5
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48985
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48989
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    :sswitch_701
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    .line 48990
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteReplyResponse()Z

    move-result v2

    if-eqz v2, :cond_712

    .line 48991
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    .line 48993
    :cond_712
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 48994
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48998
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    :sswitch_71e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    .line 48999
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_72f

    .line 49000
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 49002
    :cond_72f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49003
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49007
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    :sswitch_73b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    .line 49008
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutInviteFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_74c

    .line 49009
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    .line 49011
    :cond_74c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49012
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49016
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    :sswitch_758
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    .line 49017
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutRingFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_769

    .line 49018
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 49020
    :cond_769
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49021
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 49025
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    :sswitch_775
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    .line 49026
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hasHangoutRingFinishResponse()Z

    move-result v2

    if-eqz v2, :cond_786

    .line 49027
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    .line 49029
    :cond_786
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49030
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    goto/16 :goto_0

    .line 48423
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
    .line 48208
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48410
    :cond_6
    :goto_6
    return-object p0

    .line 48209
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48210
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48212
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48213
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48215
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 48216
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48218
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 48219
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48221
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 48222
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48224
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 48225
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48227
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 48228
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48230
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 48231
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48233
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 48234
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48236
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 48237
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48239
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 48240
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48242
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 48243
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48245
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 48246
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48248
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 48249
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48251
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 48252
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48254
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 48255
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48257
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 48258
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48260
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 48261
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48263
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 48264
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48266
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 48267
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48269
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 48270
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48272
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 48273
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48275
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 48276
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48278
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 48279
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48281
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 48282
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48284
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 48285
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48287
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 48288
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getError()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48290
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 48291
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48293
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 48294
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48296
    :cond_180
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 48297
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48299
    :cond_18d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 48300
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48302
    :cond_19a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_1a7

    .line 48303
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48305
    :cond_1a7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 48306
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48308
    :cond_1b4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 48309
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48311
    :cond_1c1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_1ce

    .line 48312
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48314
    :cond_1ce
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 48315
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48317
    :cond_1db
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 48318
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48320
    :cond_1e8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 48321
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48323
    :cond_1f5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_202

    .line 48324
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48326
    :cond_202
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_20f

    .line 48327
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48329
    :cond_20f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 48330
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48332
    :cond_21c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_229

    .line 48333
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48335
    :cond_229
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 48336
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48338
    :cond_236
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 48339
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48341
    :cond_243
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_250

    .line 48342
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48344
    :cond_250
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_25d

    .line 48345
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48347
    :cond_25d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_26a

    .line 48348
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48350
    :cond_26a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_277

    .line 48351
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48353
    :cond_277
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 48354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48356
    :cond_284
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_291

    .line 48357
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48359
    :cond_291
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 48360
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48362
    :cond_29e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 48363
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48365
    :cond_2ab
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 48366
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48368
    :cond_2b8
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGlobalConversationPreferencesRequest()Z

    move-result v0

    if-eqz v0, :cond_2c5

    .line 48369
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48371
    :cond_2c5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGlobalConversationPreferencesResponse()Z

    move-result v0

    if-eqz v0, :cond_2d2

    .line 48372
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48374
    :cond_2d2
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationJoinRequest()Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 48375
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48377
    :cond_2df
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationJoinResponse()Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 48378
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48380
    :cond_2ec
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 48381
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48383
    :cond_2f9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_306

    .line 48384
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48386
    :cond_306
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteKeepAliveRequest()Z

    move-result v0

    if-eqz v0, :cond_313

    .line 48387
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48389
    :cond_313
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteKeepAliveResponse()Z

    move-result v0

    if-eqz v0, :cond_320

    .line 48390
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48392
    :cond_320
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteReplyRequest()Z

    move-result v0

    if-eqz v0, :cond_32d

    .line 48393
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48395
    :cond_32d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteReplyResponse()Z

    move-result v0

    if-eqz v0, :cond_33a

    .line 48396
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48398
    :cond_33a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_347

    .line 48399
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48401
    :cond_347
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutInviteFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_354

    .line 48402
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48404
    :cond_354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_361

    .line 48405
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    .line 48407
    :cond_361
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasHangoutRingFinishResponse()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48408
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

    .line 51338
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51340
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51346
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51347
    return-object p0

    .line 51343
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    goto :goto_1f
.end method

.method public mergeGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 51381
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51383
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51389
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51390
    return-object p0

    .line 51386
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    goto :goto_1f
.end method

.method public mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50437
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50443
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50444
    return-object p0

    .line 50440
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, -0x8000

    .line 51768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51770
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51776
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51777
    return-object p0

    .line 51773
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51813
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51819
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51820
    return-object p0

    .line 51816
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 51596
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51598
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51604
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51605
    return-object p0

    .line 51601
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 51639
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51641
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51647
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51648
    return-object p0

    .line 51644
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 51682
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51690
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51691
    return-object p0

    .line 51687
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4000

    .line 51725
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51727
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51733
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51734
    return-object p0

    .line 51730
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    goto :goto_1f
.end method

.method public mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 51510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51512
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51518
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51519
    return-object p0

    .line 51515
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 51553
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51555
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51561
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51562
    return-object p0

    .line 51558
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51856
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51862
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51863
    return-object p0

    .line 51859
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51897
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 51899
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51905
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51906
    return-object p0

    .line 51902
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    goto :goto_1f
.end method

.method public mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50824
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50830
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50831
    return-object p0

    .line 50827
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    goto :goto_20
.end method

.method public mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 50220
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50222
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50228
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50229
    return-object p0

    .line 50225
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    goto :goto_1f
.end method

.method public mergeInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50865
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50867
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50873
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50874
    return-object p0

    .line 50870
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    goto :goto_20
.end method

.method public mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 50263
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50265
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50271
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50272
    return-object p0

    .line 50268
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    goto :goto_1f
.end method

.method public mergeLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2000

    .line 50306
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50314
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50315
    return-object p0

    .line 50311
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    goto :goto_1f
.end method

.method public mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49618
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49620
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49626
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49627
    return-object p0

    .line 49623
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    goto :goto_20
.end method

.method public mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50609
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50615
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50616
    return-object p0

    .line 50612
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    goto :goto_20
.end method

.method public mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 49919
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49921
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 49927
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49928
    return-object p0

    .line 49924
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    goto :goto_1f
.end method

.method public mergePingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 49962
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 49964
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 49970
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49971
    return-object p0

    .line 49967
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    goto :goto_1f
.end method

.method public mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49317
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49319
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49325
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49326
    return-object p0

    .line 49322
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    goto :goto_20
.end method

.method public mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49231
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49233
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49239
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49240
    return-object p0

    .line 49236
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    goto :goto_20
.end method

.method public mergePresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49274
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49276
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49282
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49283
    return-object p0

    .line 49279
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    goto :goto_20
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49489
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49491
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49497
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49498
    return-object p0

    .line 49494
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49532
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49534
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49540
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49541
    return-object p0

    .line 49537
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    goto :goto_20
.end method

.method public mergeReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49575
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49577
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49583
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49584
    return-object p0

    .line 49580
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    goto :goto_20
.end method

.method public mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50736
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50738
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50744
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50745
    return-object p0

    .line 50741
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    goto :goto_20
.end method

.method public mergeReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50910
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 50916
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50917
    return-object p0

    .line 50913
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    goto :goto_20
.end method

.method public mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50781
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50787
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50788
    return-object p0

    .line 50784
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    goto :goto_20
.end method

.method public mergeSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50951
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50953
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 50959
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50960
    return-object p0

    .line 50956
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    goto :goto_20
.end method

.method public mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 51252
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51254
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51260
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51261
    return-object p0

    .line 51257
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    goto :goto_1f
.end method

.method public mergeSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 51295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 51297
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51303
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51304
    return-object p0

    .line 51300
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    goto :goto_1f
.end method

.method public mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50564
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50566
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50572
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50573
    return-object p0

    .line 50569
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    goto :goto_20
.end method

.method public mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50478
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50480
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50486
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50487
    return-object p0

    .line 50483
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    goto :goto_1f
.end method

.method public mergeTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50521
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50523
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50529
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50530
    return-object p0

    .line 50526
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    goto :goto_1f
.end method

.method public mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49446
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49454
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49455
    return-object p0

    .line 49451
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    goto :goto_20
.end method

.method public mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49360
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49362
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49368
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49369
    return-object p0

    .line 49365
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    goto :goto_20
.end method

.method public mergeTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49403
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 49405
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49411
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49412
    return-object p0

    .line 49408
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    goto :goto_20
.end method

.method public mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 50091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50093
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50099
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50100
    return-object p0

    .line 50096
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    goto :goto_1f
.end method

.method public mergeUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 50134
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 50136
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50142
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50143
    return-object p0

    .line 50139
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    goto :goto_1f
.end method

.method public mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 50996
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 51002
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51003
    return-object p0

    .line 50999
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    goto :goto_20
.end method

.method public mergeUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51037
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 51039
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51045
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51046
    return-object p0

    .line 51042
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    goto :goto_20
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49096
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49098
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49099
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49086
    if-nez p1, :cond_8

    .line 49087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49089
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 49091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49092
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49139
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49141
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49142
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49129
    if-nez p1, :cond_8

    .line 49130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49132
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 49134
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49135
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49182
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49184
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49185
    return-object p0
.end method

.method public setChatMessageResponse(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49172
    if-nez p1, :cond_8

    .line 49173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49175
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 49177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49178
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51418
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51420
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51421
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51408
    if-nez p1, :cond_8

    .line 51409
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51411
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 51413
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51414
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51461
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51463
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51464
    return-object p0
.end method

.method public setConversationJoinResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51451
    if-nez p1, :cond_8

    .line 51452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51454
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 51456
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51457
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49999
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 50001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50002
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49989
    if-nez p1, :cond_8

    .line 49990
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49992
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 49994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49995
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50042
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50045
    return-object p0
.end method

.method public setConversationListResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50032
    if-nez p1, :cond_8

    .line 50033
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50035
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 50037
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50038
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50644
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50647
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50634
    if-nez p1, :cond_8

    .line 50635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50637
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 50639
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50640
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50687
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50689
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50690
    return-object p0
.end method

.method public setConversationPreferenceResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50677
    if-nez p1, :cond_8

    .line 50678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50680
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 50682
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50683
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50343
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50345
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50346
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50333
    if-nez p1, :cond_8

    .line 50334
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50336
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 50338
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50339
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50386
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50388
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50389
    return-object p0
.end method

.method public setConversationRenameResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50376
    if-nez p1, :cond_8

    .line 50377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50379
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 50381
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50382
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49655
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49657
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49658
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49645
    if-nez p1, :cond_8

    .line 49646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49648
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 49650
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49651
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49698
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49700
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49701
    return-object p0
.end method

.method public setConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49688
    if-nez p1, :cond_8

    .line 49689
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49691
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 49693
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49694
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51074
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51076
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51077
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51064
    if-nez p1, :cond_8

    .line 51065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51067
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 51069
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51070
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51117
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51119
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51120
    return-object p0
.end method

.method public setConversationSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51107
    if-nez p1, :cond_8

    .line 51108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51110
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 51112
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51113
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49827
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49829
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49830
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49817
    if-nez p1, :cond_8

    .line 49818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49820
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 49822
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49823
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49870
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49873
    return-object p0
.end method

.method public setDeviceRegistrationResponse(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49860
    if-nez p1, :cond_8

    .line 49861
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49863
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 49865
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49866
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50171
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Error$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50173
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50174
    return-object p0
.end method

.method public setError(Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50161
    if-nez p1, :cond_8

    .line 50162
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50164
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 50166
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50167
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51160
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51163
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51150
    if-nez p1, :cond_8

    .line 51151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51153
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 51155
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51156
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51203
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51205
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51206
    return-object p0
.end method

.method public setEventSearchResponse(Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51193
    if-nez p1, :cond_8

    .line 51194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51196
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 51198
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51199
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49784
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49786
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49787
    return-object p0
.end method

.method public setEventSteamResponse(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49774
    if-nez p1, :cond_8

    .line 49775
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49777
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 49779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49780
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49741
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49744
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49731
    if-nez p1, :cond_8

    .line 49732
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49734
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 49736
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49737
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51332
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51334
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51335
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51322
    if-nez p1, :cond_8

    .line 51323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51325
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 51327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51328
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51375
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51377
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51378
    return-object p0
.end method

.method public setGlobalConversationPreferencesResponse(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51365
    if-nez p1, :cond_8

    .line 51366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51368
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 51370
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51371
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50429
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50431
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50432
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50419
    if-nez p1, :cond_8

    .line 50420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50422
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 50424
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50425
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51762
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51764
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51765
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51752
    if-nez p1, :cond_8

    .line 51753
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51755
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 51757
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51758
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51805
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51807
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51808
    return-object p0
.end method

.method public setHangoutInviteFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51795
    if-nez p1, :cond_8

    .line 51796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51798
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 51800
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51801
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51590
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51592
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51593
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51580
    if-nez p1, :cond_8

    .line 51581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51583
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 51585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51586
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51633
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51636
    return-object p0
.end method

.method public setHangoutInviteKeepAliveResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51623
    if-nez p1, :cond_8

    .line 51624
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51626
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 51628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51629
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51676
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51678
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51679
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51666
    if-nez p1, :cond_8

    .line 51667
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51669
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 51671
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51672
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51719
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51721
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51722
    return-object p0
.end method

.method public setHangoutInviteReplyResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51709
    if-nez p1, :cond_8

    .line 51710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51712
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 51714
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51715
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51504
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51507
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51494
    if-nez p1, :cond_8

    .line 51495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51497
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 51499
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51500
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51547
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51549
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51550
    return-object p0
.end method

.method public setHangoutInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51537
    if-nez p1, :cond_8

    .line 51538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51540
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 51542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51543
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51848
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51850
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51851
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51838
    if-nez p1, :cond_8

    .line 51839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51841
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 51843
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51844
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51891
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51893
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51894
    return-object p0
.end method

.method public setHangoutRingFinishResponse(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51881
    if-nez p1, :cond_8

    .line 51882
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51884
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 51886
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField2_:I

    .line 51887
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50816
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50818
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50819
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50806
    if-nez p1, :cond_8

    .line 50807
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50809
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 50811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50812
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50214
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50216
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50217
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50204
    if-nez p1, :cond_8

    .line 50205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50207
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 50209
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50210
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50859
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50862
    return-object p0
.end method

.method public setInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50849
    if-nez p1, :cond_8

    .line 50850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50852
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 50854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50855
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50257
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50259
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50260
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50247
    if-nez p1, :cond_8

    .line 50248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50250
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 50252
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50253
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50300
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50302
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50303
    return-object p0
.end method

.method public setLeaveConversationResponse(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50290
    if-nez p1, :cond_8

    .line 50291
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50293
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 50295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50296
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49612
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49614
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49615
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49602
    if-nez p1, :cond_8

    .line 49603
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49605
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 49607
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49608
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50601
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50604
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50591
    if-nez p1, :cond_8

    .line 50592
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50594
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 50596
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50597
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49913
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 49915
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49916
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49903
    if-nez p1, :cond_8

    .line 49904
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49906
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 49908
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49909
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 49956
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 49958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49959
    return-object p0
.end method

.method public setPingResponse(Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49946
    if-nez p1, :cond_8

    .line 49947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49949
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 49951
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49952
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49311
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49313
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49314
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49301
    if-nez p1, :cond_8

    .line 49302
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49304
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 49306
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49307
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49225
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49227
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49228
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49215
    if-nez p1, :cond_8

    .line 49216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49218
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 49220
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49221
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49268
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49270
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49271
    return-object p0
.end method

.method public setPresenceResponse(Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49258
    if-nez p1, :cond_8

    .line 49259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49261
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 49263
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49264
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49483
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49485
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49486
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49473
    if-nez p1, :cond_8

    .line 49474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49476
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 49478
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49479
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49526
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49529
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49516
    if-nez p1, :cond_8

    .line 49517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49519
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 49521
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49522
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49569
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49571
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49572
    return-object p0
.end method

.method public setReceiptResponse(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49559
    if-nez p1, :cond_8

    .line 49560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49562
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 49564
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49565
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50730
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50732
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50733
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50720
    if-nez p1, :cond_8

    .line 50721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50723
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 50725
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50726
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50902
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 50904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50905
    return-object p0
.end method

.method public setReplyToInviteResponse(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50892
    if-nez p1, :cond_8

    .line 50893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50895
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 50897
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50898
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49057
    if-nez p1, :cond_8

    .line 49058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49060
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49061
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->requestClientId_:Ljava/lang/Object;

    .line 49063
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50773
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50776
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50763
    if-nez p1, :cond_8

    .line 50764
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50766
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 50768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50769
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50945
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 50947
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50948
    return-object p0
.end method

.method public setSetAclsResponse(Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50935
    if-nez p1, :cond_8

    .line 50936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50938
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 50940
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50941
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51246
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51248
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51249
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51236
    if-nez p1, :cond_8

    .line 51237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51239
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 51241
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51242
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 51289
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51291
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51292
    return-object p0
.end method

.method public setSuggestionsResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 51279
    if-nez p1, :cond_8

    .line 51280
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51282
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 51284
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51285
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50558
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50560
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50561
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50548
    if-nez p1, :cond_8

    .line 50549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50551
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 50553
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50554
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50472
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50474
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50475
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50462
    if-nez p1, :cond_8

    .line 50463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50465
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 50467
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50468
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50515
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50517
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50518
    return-object p0
.end method

.method public setTileEventResponse(Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50505
    if-nez p1, :cond_8

    .line 50506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50508
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 50510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50511
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49440
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49442
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49443
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49430
    if-nez p1, :cond_8

    .line 49431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49433
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 49435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49436
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49354
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49356
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49357
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49344
    if-nez p1, :cond_8

    .line 49345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49347
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 49349
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49350
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49397
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49400
    return-object p0
.end method

.method public setTypingResponse(Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49387
    if-nez p1, :cond_8

    .line 49388
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49390
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 49392
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 49393
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50085
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50087
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50088
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50075
    if-nez p1, :cond_8

    .line 50076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50078
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 50080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50081
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 50128
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50131
    return-object p0
.end method

.method public setUserCreationResponse(Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50118
    if-nez p1, :cond_8

    .line 50119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50121
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 50123
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField0_:I

    .line 50124
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50988
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 50990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50991
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50978
    if-nez p1, :cond_8

    .line 50979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50981
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 50983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 50984
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 51031
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51033
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51034
    return-object p0
.end method

.method public setUserInfoResponse(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 51021
    if-nez p1, :cond_8

    .line 51022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51024
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 51026
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->bitField1_:I

    .line 51027
    return-object p0
.end method
