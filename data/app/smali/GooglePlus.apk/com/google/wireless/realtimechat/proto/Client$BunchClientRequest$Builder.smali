.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

.field private conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

.field private conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

.field private conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

.field private conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

.field private conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

.field private conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

.field private deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

.field private eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

.field private eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

.field private globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

.field private hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

.field private hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

.field private hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

.field private hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

.field private hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

.field private inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

.field private leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

.field private pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

.field private presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

.field private receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

.field private replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

.field private requestClientId_:Ljava/lang/Object;

.field private setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

.field private suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

.field private tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

.field private typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

.field private userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

.field private userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 52825
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 53425
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53461
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53504
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53547
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53590
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53633
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53676
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53719
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53762
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53805
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53848
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53891
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53934
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53977
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 54020
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 54063
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54106
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54149
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54192
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54235
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54278
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54321
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54364
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54407
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54450
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54493
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54536
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54579
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54622
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52826
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->maybeForceBuilderInitialization()V

    .line 52827
    return-void
.end method

.method static synthetic access$71600()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52820
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52832
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52830
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3

    .prologue
    .line 52907
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    .line 52908
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52909
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 52911
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 11

    .prologue
    const/high16 v9, 0x8

    const/high16 v8, 0x4

    const/high16 v7, 0x2

    const/high16 v6, 0x1

    const v5, 0x8000

    .line 52925
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 52926
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52927
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52928
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 52929
    or-int/lit8 v2, v2, 0x1

    .line 52931
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$71802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52932
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 52933
    or-int/lit8 v2, v2, 0x2

    .line 52935
    :cond_27
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$71902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52936
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 52937
    or-int/lit8 v2, v2, 0x4

    .line 52939
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52940
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 52941
    or-int/lit8 v2, v2, 0x8

    .line 52943
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52944
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 52945
    or-int/lit8 v2, v2, 0x10

    .line 52947
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52948
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5a

    .line 52949
    or-int/lit8 v2, v2, 0x20

    .line 52951
    :cond_5a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52952
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_67

    .line 52953
    or-int/lit8 v2, v2, 0x40

    .line 52955
    :cond_67
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52956
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_74

    .line 52957
    or-int/lit16 v2, v2, 0x80

    .line 52959
    :cond_74
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52960
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_81

    .line 52961
    or-int/lit16 v2, v2, 0x100

    .line 52963
    :cond_81
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52964
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8e

    .line 52965
    or-int/lit16 v2, v2, 0x200

    .line 52967
    :cond_8e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52968
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9b

    .line 52969
    or-int/lit16 v2, v2, 0x400

    .line 52971
    :cond_9b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52972
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a8

    .line 52973
    or-int/lit16 v2, v2, 0x800

    .line 52975
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52976
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b5

    .line 52977
    or-int/lit16 v2, v2, 0x1000

    .line 52979
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52980
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_c2

    .line 52981
    or-int/lit16 v2, v2, 0x2000

    .line 52983
    :cond_c2
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52984
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_cf

    .line 52985
    or-int/lit16 v2, v2, 0x4000

    .line 52987
    :cond_cf
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52988
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d9

    .line 52989
    or-int/2addr v2, v5

    .line 52991
    :cond_d9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52992
    and-int v3, v0, v6

    if-ne v3, v6, :cond_e3

    .line 52993
    or-int/2addr v2, v6

    .line 52995
    :cond_e3
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52996
    and-int v3, v0, v7

    if-ne v3, v7, :cond_ed

    .line 52997
    or-int/2addr v2, v7

    .line 52999
    :cond_ed
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 53000
    and-int v3, v0, v8

    if-ne v3, v8, :cond_f7

    .line 53001
    or-int/2addr v2, v8

    .line 53003
    :cond_f7
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 53004
    and-int v3, v0, v9

    if-ne v3, v9, :cond_101

    .line 53005
    or-int/2addr v2, v9

    .line 53007
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 53008
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_110

    .line 53009
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 53011
    :cond_110
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 53012
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_11f

    .line 53013
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 53015
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 53016
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_12e

    .line 53017
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 53019
    :cond_12e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 53020
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_13d

    .line 53021
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 53023
    :cond_13d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 53024
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_14c

    .line 53025
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 53027
    :cond_14c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 53028
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_15b

    .line 53029
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 53031
    :cond_15b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 53032
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_16a

    .line 53033
    const/high16 v3, 0x400

    or-int/2addr v2, v3

    .line 53035
    :cond_16a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 53036
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_179

    .line 53037
    const/high16 v3, 0x800

    or-int/2addr v2, v3

    .line 53039
    :cond_179
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 53040
    const/high16 v3, 0x1000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_188

    .line 53041
    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    .line 53043
    :cond_188
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 53044
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)I

    .line 53045
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 52836
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 52838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52839
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52840
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52841
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52843
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52845
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52846
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52847
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52848
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52849
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52850
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52851
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52852
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52853
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52855
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52856
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52857
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52858
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52859
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52861
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52862
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52863
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52864
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52865
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52866
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52867
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52868
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52869
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52870
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52871
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 52872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52873
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 52874
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52875
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 52876
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52877
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 52878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52879
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 52880
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52881
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 52882
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52883
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 52884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52885
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 52886
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52887
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 52888
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52889
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 52890
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52891
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 52892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52893
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52895
    return-object p0
.end method

.method public clearChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53497
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53499
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53500
    return-object p0
.end method

.method public clearConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54443
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54446
    return-object p0
.end method

.method public clearConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53841
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53843
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53844
    return-object p0
.end method

.method public clearConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54099
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54101
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54102
    return-object p0
.end method

.method public clearConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 54013
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 54015
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54016
    return-object p0
.end method

.method public clearConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53669
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53671
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53672
    return-object p0
.end method

.method public clearConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54273
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54274
    return-object p0
.end method

.method public clearDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53755
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53757
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53758
    return-object p0
.end method

.method public clearEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54314
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54316
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54317
    return-object p0
.end method

.method public clearEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53712
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53714
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53715
    return-object p0
.end method

.method public clearGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54402
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54403
    return-object p0
.end method

.method public clearHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54615
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54617
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54618
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54529
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54531
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54532
    return-object p0
.end method

.method public clearHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54572
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54574
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54575
    return-object p0
.end method

.method public clearHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54486
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54488
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54489
    return-object p0
.end method

.method public clearHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54658
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54660
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54661
    return-object p0
.end method

.method public clearInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53927
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53929
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53930
    return-object p0
.end method

.method public clearLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53970
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53972
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53973
    return-object p0
.end method

.method public clearPingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53798
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53800
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53801
    return-object p0
.end method

.method public clearPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53540
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53542
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53543
    return-object p0
.end method

.method public clearReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53626
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53629
    return-object p0
.end method

.method public clearReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54142
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54144
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54145
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53449
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53450
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53452
    return-object p0
.end method

.method public clearSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54185
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54188
    return-object p0
.end method

.method public clearSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54357
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54359
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54360
    return-object p0
.end method

.method public clearTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 54056
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 54058
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54059
    return-object p0
.end method

.method public clearTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53583
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53585
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53586
    return-object p0
.end method

.method public clearUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53884
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53886
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53887
    return-object p0
.end method

.method public clearUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54228
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54230
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54231
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 52899
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

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
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 53466
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 54412
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 53810
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 54068
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 53982
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 53638
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 54240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52820
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 2

    .prologue
    .line 52903
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 53724
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 54283
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 53681
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 54369
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 54584
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 54498
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 54541
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 54455
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 54627
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 53896
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 53939
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 53767
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 53509
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 53595
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 54111
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53430
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53431
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 53432
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 53433
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53436
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
    .line 54154
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 54326
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 54025
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 53552
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 53853
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 54197
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public hasChatMessageRequest()Z
    .registers 3

    .prologue
    .line 53463
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasConversationJoinRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x80

    .line 54409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    .line 53807
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasConversationPreferenceRequest()Z
    .registers 3

    .prologue
    const v1, 0x8000

    .line 54065
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

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
    .line 53979
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasConversationRequest()Z
    .registers 3

    .prologue
    .line 53635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasConversationSearchRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x8

    .line 54237
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    .line 53721
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasEventSearchRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x10

    .line 54280
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    .line 53678
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasGlobalConversationPreferencesRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x40

    .line 54366
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteFinishRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x800

    .line 54581
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasHangoutInviteKeepAliveRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x200

    .line 54495
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    const/high16 v1, 0x400

    .line 54538
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    const/high16 v1, 0x100

    .line 54452
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    const/high16 v1, 0x1000

    .line 54624
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasInviteRequest()Z
    .registers 3

    .prologue
    .line 53893
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasLeaveConversationRequest()Z
    .registers 3

    .prologue
    .line 53936
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasPingRequest()Z
    .registers 3

    .prologue
    .line 53764
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasPresenceRequest()Z
    .registers 3

    .prologue
    .line 53506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasReceiptRequest()Z
    .registers 3

    .prologue
    .line 53592
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasReplyToInviteRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x1

    .line 54108
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

    .line 53427
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    const/high16 v1, 0x2

    .line 54151
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasSuggestionsRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 54323
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasTileEventRequest()Z
    .registers 3

    .prologue
    .line 54022
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasTypingRequest()Z
    .registers 3

    .prologue
    .line 53549
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasUserCreationRequest()Z
    .registers 3

    .prologue
    .line 53850
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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

.method public hasUserInfoRequest()Z
    .registers 3

    .prologue
    const/high16 v1, 0x4

    .line 54194
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

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
    .line 53141
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53485
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 53487
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53493
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53494
    return-object p0

    .line 53490
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    goto :goto_1f
.end method

.method public mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 54431
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54433
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54439
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54440
    return-object p0

    .line 54436
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    goto :goto_1f
.end method

.method public mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53829
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53831
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53837
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53838
    return-object p0

    .line 53834
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    goto :goto_20
.end method

.method public mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 54087
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 54089
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54095
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54096
    return-object p0

    .line 54092
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    goto :goto_20
.end method

.method public mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 54003
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 54009
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54010
    return-object p0

    .line 54006
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    goto :goto_20
.end method

.method public mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53657
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53659
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53665
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53666
    return-object p0

    .line 53662
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    goto :goto_20
.end method

.method public mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 54259
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54261
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54267
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54268
    return-object p0

    .line 54264
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53745
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53751
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53752
    return-object p0

    .line 53748
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    goto :goto_20
.end method

.method public mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 54302
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54304
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54310
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54311
    return-object p0

    .line 54307
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    goto :goto_1f
.end method

.method public mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53700
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53702
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53708
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53709
    return-object p0

    .line 53705
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

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
    .line 52820
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 52820
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

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
    .line 52820
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 53150
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_344

    .line 53155
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53157
    :sswitch_d
    return-object p0

    .line 53162
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53163
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 53167
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 53168
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasChatMessageRequest()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 53169
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 53171
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53172
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53176
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    .line 53177
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasPresenceRequest()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 53178
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 53180
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53181
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53185
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    .line 53186
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasTypingRequest()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 53187
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 53189
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53190
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53194
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    .line 53195
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasReceiptRequest()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 53196
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    .line 53198
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53199
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53203
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    .line 53204
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 53205
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 53207
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53208
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53212
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    .line 53213
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasEventStreamRequest()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 53214
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 53216
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53217
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53221
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    .line 53222
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasDeviceRegistrationRequest()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 53223
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 53225
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53226
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53230
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    .line 53231
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasPingRequest()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 53232
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    .line 53234
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53235
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53239
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    .line 53240
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationListRequest()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 53241
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 53243
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53244
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53248
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    .line 53249
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasUserCreationRequest()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 53250
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 53252
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53253
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53257
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    .line 53258
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 53259
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 53261
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53262
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53266
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    .line 53267
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasLeaveConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 53268
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 53270
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53271
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53275
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    .line 53276
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationRenameRequest()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 53277
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 53279
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53280
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53284
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    .line 53285
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasTileEventRequest()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 53286
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 53288
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53289
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53293
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    .line 53294
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationPreferenceRequest()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 53295
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 53297
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53298
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53302
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    .line 53303
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasReplyToInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 53304
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 53306
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53307
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53311
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    .line 53312
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasSetAclsRequest()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 53313
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    .line 53315
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53316
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53320
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    .line 53321
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasUserInfoRequest()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 53322
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    .line 53324
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53325
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53329
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    .line 53330
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 53331
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 53333
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53334
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53338
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    .line 53339
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasEventSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 53340
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 53342
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53343
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53347
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    .line 53348
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasSuggestionsRequest()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 53349
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 53351
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53352
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53356
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    .line 53357
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasGlobalConversationPreferencesRequest()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 53358
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 53360
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53361
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53365
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    .line 53366
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationJoinRequest()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 53367
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 53369
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53370
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53374
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    .line 53375
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 53376
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 53378
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53379
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53383
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    .line 53384
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteKeepAliveRequest()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 53385
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    .line 53387
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53388
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53392
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    .line 53393
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteReplyRequest()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 53394
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 53396
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53397
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53401
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    .line 53402
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 53403
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 53405
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53406
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53410
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    .line 53411
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutRingFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 53412
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 53414
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53415
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53150
    :sswitch_data_344
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
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 53049
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 53137
    :cond_6
    :goto_6
    return-object p0

    .line 53050
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 53051
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53053
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 53054
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53056
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 53057
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53059
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 53060
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53062
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 53063
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53065
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 53066
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53068
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 53069
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53071
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 53072
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53074
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 53075
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53077
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 53078
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53080
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 53081
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53083
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 53084
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53086
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 53087
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53089
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 53090
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53092
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 53093
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53095
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 53096
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53098
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 53099
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53101
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 53102
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53104
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 53105
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53107
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 53108
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53110
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 53111
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53113
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 53114
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53116
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasGlobalConversationPreferencesRequest()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 53117
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53119
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationJoinRequest()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 53120
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53122
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 53123
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53125
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteKeepAliveRequest()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 53126
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53128
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteReplyRequest()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 53129
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53131
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 53132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53134
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutRingFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53135
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_6
.end method

.method public mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x40

    .line 54388
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54390
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54396
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54397
    return-object p0

    .line 54393
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 54603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54605
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54611
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54612
    return-object p0

    .line 54608
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 54517
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54519
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54525
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54526
    return-object p0

    .line 54522
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 54560
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54562
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54568
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54569
    return-object p0

    .line 54565
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 54474
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54476
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54482
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54483
    return-object p0

    .line 54479
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 54646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54648
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54654
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54655
    return-object p0

    .line 54651
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    goto :goto_1f
.end method

.method public mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53915
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53917
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53923
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53924
    return-object p0

    .line 53920
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    goto :goto_20
.end method

.method public mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53960
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53966
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53967
    return-object p0

    .line 53963
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    goto :goto_20
.end method

.method public mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53786
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53788
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53794
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53795
    return-object p0

    .line 53791
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    goto :goto_20
.end method

.method public mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53528
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 53530
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53536
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53537
    return-object p0

    .line 53533
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    goto :goto_1f
.end method

.method public mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53614
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53616
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53622
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53623
    return-object p0

    .line 53619
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    goto :goto_20
.end method

.method public mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 54130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54132
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54138
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54139
    return-object p0

    .line 54135
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    goto :goto_1f
.end method

.method public mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 54173
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54175
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54181
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54182
    return-object p0

    .line 54178
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    goto :goto_1f
.end method

.method public mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 54345
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54347
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54353
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54354
    return-object p0

    .line 54350
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    goto :goto_1f
.end method

.method public mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 54046
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 54052
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54053
    return-object p0

    .line 54049
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    goto :goto_20
.end method

.method public mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53571
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53573
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53579
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53580
    return-object p0

    .line 53576
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    goto :goto_20
.end method

.method public mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53872
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53874
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53880
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53881
    return-object p0

    .line 53877
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    goto :goto_20
.end method

.method public mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 54216
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54218
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54224
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54225
    return-object p0

    .line 54221
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    goto :goto_1f
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53479
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53482
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53469
    if-nez p1, :cond_8

    .line 53470
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53472
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53474
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53475
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54425
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54427
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54428
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54415
    if-nez p1, :cond_8

    .line 54416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54418
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54420
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54421
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53823
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53825
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53826
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53813
    if-nez p1, :cond_8

    .line 53814
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53816
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53818
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53819
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54081
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54083
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54084
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54071
    if-nez p1, :cond_8

    .line 54072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54074
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54076
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54077
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53995
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53997
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53998
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53985
    if-nez p1, :cond_8

    .line 53986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53988
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53991
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53651
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53653
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53654
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53641
    if-nez p1, :cond_8

    .line 53642
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53644
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53647
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54253
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54256
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54243
    if-nez p1, :cond_8

    .line 54244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54246
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54248
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54249
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53737
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53739
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53740
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53727
    if-nez p1, :cond_8

    .line 53728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53730
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53732
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53733
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54296
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54298
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54299
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54286
    if-nez p1, :cond_8

    .line 54287
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54289
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54291
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54292
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53694
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53696
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53697
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53684
    if-nez p1, :cond_8

    .line 53685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53687
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53689
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53690
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54382
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54384
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54385
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54372
    if-nez p1, :cond_8

    .line 54373
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54375
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54377
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54378
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54597
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54599
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54600
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54587
    if-nez p1, :cond_8

    .line 54588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54590
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54592
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54593
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54511
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54513
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54514
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54501
    if-nez p1, :cond_8

    .line 54502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54504
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54506
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54507
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54554
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54556
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54557
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54544
    if-nez p1, :cond_8

    .line 54545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54547
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54549
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54550
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54468
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54470
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54471
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54458
    if-nez p1, :cond_8

    .line 54459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54461
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54463
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54464
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54640
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54642
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54643
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54630
    if-nez p1, :cond_8

    .line 54631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54633
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54636
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53909
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53911
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53912
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53899
    if-nez p1, :cond_8

    .line 53900
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53902
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53904
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53905
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53952
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53954
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53955
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53942
    if-nez p1, :cond_8

    .line 53943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53945
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53947
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53948
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53780
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53782
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53783
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53770
    if-nez p1, :cond_8

    .line 53771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53773
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53776
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53522
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53524
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53525
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53512
    if-nez p1, :cond_8

    .line 53513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53515
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53517
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53518
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53608
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53610
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53611
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53598
    if-nez p1, :cond_8

    .line 53599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53601
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53604
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54124
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54126
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54127
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54114
    if-nez p1, :cond_8

    .line 54115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54117
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54119
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54120
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53440
    if-nez p1, :cond_8

    .line 53441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53443
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53444
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53446
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54167
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54169
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54170
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54157
    if-nez p1, :cond_8

    .line 54158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54160
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54163
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54339
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54342
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54329
    if-nez p1, :cond_8

    .line 54330
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54332
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54334
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54335
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 54038
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 54040
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54041
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54028
    if-nez p1, :cond_8

    .line 54029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54031
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 54033
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54034
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53565
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53567
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53568
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53555
    if-nez p1, :cond_8

    .line 53556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53558
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53560
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53561
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53866
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53868
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53869
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53856
    if-nez p1, :cond_8

    .line 53857
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53859
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53862
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54210
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54212
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54213
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54200
    if-nez p1, :cond_8

    .line 54201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54203
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54205
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54206
    return-object p0
.end method
