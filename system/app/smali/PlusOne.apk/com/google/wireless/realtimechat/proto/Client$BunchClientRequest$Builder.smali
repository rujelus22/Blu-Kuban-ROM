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
    .line 52720
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 53320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53356
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53399
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53442
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53485
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53528
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53571
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53614
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53657
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53700
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53743
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53786
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53829
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53872
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53915
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 53958
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 54001
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54044
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54087
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54130
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54173
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54216
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54259
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54302
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54345
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54388
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54431
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54474
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54517
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52721
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->maybeForceBuilderInitialization()V

    .line 52722
    return-void
.end method

.method static synthetic access$71500()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52715
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52727
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 52725
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 3

    .prologue
    .line 52802
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    .line 52803
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 52804
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 52806
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52715
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

    .line 52820
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 52821
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52822
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 52823
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    .line 52824
    or-int/lit8 v2, v2, 0x1

    .line 52826
    :cond_1b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$71702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52827
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    .line 52828
    or-int/lit8 v2, v2, 0x2

    .line 52830
    :cond_27
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$71802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52831
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_33

    .line 52832
    or-int/lit8 v2, v2, 0x4

    .line 52834
    :cond_33
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$71902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52835
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    .line 52836
    or-int/lit8 v2, v2, 0x8

    .line 52838
    :cond_40
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52839
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4d

    .line 52840
    or-int/lit8 v2, v2, 0x10

    .line 52842
    :cond_4d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52843
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5a

    .line 52844
    or-int/lit8 v2, v2, 0x20

    .line 52846
    :cond_5a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52847
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_67

    .line 52848
    or-int/lit8 v2, v2, 0x40

    .line 52850
    :cond_67
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52851
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_74

    .line 52852
    or-int/lit16 v2, v2, 0x80

    .line 52854
    :cond_74
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52855
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_81

    .line 52856
    or-int/lit16 v2, v2, 0x100

    .line 52858
    :cond_81
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52859
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_8e

    .line 52860
    or-int/lit16 v2, v2, 0x200

    .line 52862
    :cond_8e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52863
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_9b

    .line 52864
    or-int/lit16 v2, v2, 0x400

    .line 52866
    :cond_9b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52867
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_a8

    .line 52868
    or-int/lit16 v2, v2, 0x800

    .line 52870
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52871
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_b5

    .line 52872
    or-int/lit16 v2, v2, 0x1000

    .line 52874
    :cond_b5
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$72902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52875
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_c2

    .line 52876
    or-int/lit16 v2, v2, 0x2000

    .line 52878
    :cond_c2
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52879
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_cf

    .line 52880
    or-int/lit16 v2, v2, 0x4000

    .line 52882
    :cond_cf
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52883
    and-int v3, v0, v5

    if-ne v3, v5, :cond_d9

    .line 52884
    or-int/2addr v2, v5

    .line 52886
    :cond_d9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52887
    and-int v3, v0, v6

    if-ne v3, v6, :cond_e3

    .line 52888
    or-int/2addr v2, v6

    .line 52890
    :cond_e3
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52891
    and-int v3, v0, v7

    if-ne v3, v7, :cond_ed

    .line 52892
    or-int/2addr v2, v7

    .line 52894
    :cond_ed
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 52895
    and-int v3, v0, v8

    if-ne v3, v8, :cond_f7

    .line 52896
    or-int/2addr v2, v8

    .line 52898
    :cond_f7
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 52899
    and-int v3, v0, v9

    if-ne v3, v9, :cond_101

    .line 52900
    or-int/2addr v2, v9

    .line 52902
    :cond_101
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 52903
    const/high16 v3, 0x10

    and-int/2addr v3, v0

    const/high16 v4, 0x10

    if-ne v3, v4, :cond_110

    .line 52904
    const/high16 v3, 0x10

    or-int/2addr v2, v3

    .line 52906
    :cond_110
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 52907
    const/high16 v3, 0x20

    and-int/2addr v3, v0

    const/high16 v4, 0x20

    if-ne v3, v4, :cond_11f

    .line 52908
    const/high16 v3, 0x20

    or-int/2addr v2, v3

    .line 52910
    :cond_11f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 52911
    const/high16 v3, 0x40

    and-int/2addr v3, v0

    const/high16 v4, 0x40

    if-ne v3, v4, :cond_12e

    .line 52912
    const/high16 v3, 0x40

    or-int/2addr v2, v3

    .line 52914
    :cond_12e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$73902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 52915
    const/high16 v3, 0x80

    and-int/2addr v3, v0

    const/high16 v4, 0x80

    if-ne v3, v4, :cond_13d

    .line 52916
    const/high16 v3, 0x80

    or-int/2addr v2, v3

    .line 52918
    :cond_13d
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 52919
    const/high16 v3, 0x100

    and-int/2addr v3, v0

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_14c

    .line 52920
    const/high16 v3, 0x100

    or-int/2addr v2, v3

    .line 52922
    :cond_14c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 52923
    const/high16 v3, 0x200

    and-int/2addr v3, v0

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_15b

    .line 52924
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 52926
    :cond_15b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 52927
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    const/high16 v4, 0x400

    if-ne v3, v4, :cond_16a

    .line 52928
    const/high16 v3, 0x400

    or-int/2addr v2, v3

    .line 52930
    :cond_16a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 52931
    const/high16 v3, 0x800

    and-int/2addr v3, v0

    const/high16 v4, 0x800

    if-ne v3, v4, :cond_179

    .line 52932
    const/high16 v3, 0x800

    or-int/2addr v2, v3

    .line 52934
    :cond_179
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 52935
    const/high16 v3, 0x1000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000

    if-ne v3, v4, :cond_188

    .line 52936
    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    .line 52938
    :cond_188
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52939
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->access$74602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)I

    .line 52940
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 52731
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 52732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 52733
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52734
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52735
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52736
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52737
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52738
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52739
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52740
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52741
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52742
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52743
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52744
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52745
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52746
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52747
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52748
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52749
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52750
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52752
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52754
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52755
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52756
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52757
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52758
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52759
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52760
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52761
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52762
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52763
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52764
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52765
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52766
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 52767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52768
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 52769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52770
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 52771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52772
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 52773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52774
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 52775
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52776
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 52777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52778
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 52779
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52780
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 52781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52782
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 52783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52784
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 52785
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52786
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 52787
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52788
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52789
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 52790
    return-object p0
.end method

.method public clearChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53392
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53394
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53395
    return-object p0
.end method

.method public clearConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54338
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54340
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54341
    return-object p0
.end method

.method public clearConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53736
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53738
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53739
    return-object p0
.end method

.method public clearConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 53994
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 53996
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53997
    return-object p0
.end method

.method public clearConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53908
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53910
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53911
    return-object p0
.end method

.method public clearConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53564
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53566
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53567
    return-object p0
.end method

.method public clearConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54166
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54168
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54169
    return-object p0
.end method

.method public clearDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53650
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53652
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53653
    return-object p0
.end method

.method public clearEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54209
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54211
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54212
    return-object p0
.end method

.method public clearEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53607
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53609
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53610
    return-object p0
.end method

.method public clearGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54295
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54297
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54298
    return-object p0
.end method

.method public clearHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54510
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54512
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54513
    return-object p0
.end method

.method public clearHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54424
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54426
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54427
    return-object p0
.end method

.method public clearHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54467
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54469
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54470
    return-object p0
.end method

.method public clearHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54381
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54383
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54384
    return-object p0
.end method

.method public clearHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54553
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54555
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54556
    return-object p0
.end method

.method public clearInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53822
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53824
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53825
    return-object p0
.end method

.method public clearLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53865
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53867
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53868
    return-object p0
.end method

.method public clearPingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53693
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53695
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53696
    return-object p0
.end method

.method public clearPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53435
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53437
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53438
    return-object p0
.end method

.method public clearReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53521
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53523
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53524
    return-object p0
.end method

.method public clearReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54037
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54039
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54040
    return-object p0
.end method

.method public clearRequestClientId()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53344
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53345
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53347
    return-object p0
.end method

.method public clearSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54080
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54082
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54083
    return-object p0
.end method

.method public clearSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54252
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54254
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54255
    return-object p0
.end method

.method public clearTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53951
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 53953
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53954
    return-object p0
.end method

.method public clearTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53478
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53480
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53481
    return-object p0
.end method

.method public clearUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 53779
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53782
    return-object p0
.end method

.method public clearUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 54123
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54126
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3

    .prologue
    .line 52794
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
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 53361
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 54307
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 53705
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 53963
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 53877
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 53533
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 54135
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52715
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 2

    .prologue
    .line 52798
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 53619
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 54178
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 53576
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 54264
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 54479
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 54393
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 54436
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 54350
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 54522
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 53791
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 53834
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 53662
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 53404
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 53490
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 54006
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53325
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53326
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 53327
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 53328
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53331
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
    .line 54049
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 54221
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 53920
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 53447
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 53748
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 54092
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public hasChatMessageRequest()Z
    .registers 3

    .prologue
    .line 53358
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

    .line 54304
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
    .line 53702
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

    .line 53960
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
    .line 53874
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
    .line 53530
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

    .line 54132
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
    .line 53616
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

    .line 54175
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
    .line 53573
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

    .line 54261
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

    .line 54476
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

    .line 54390
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

    .line 54433
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

    .line 54347
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

    .line 54519
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
    .line 53788
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
    .line 53831
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
    .line 53659
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
    .line 53401
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
    .line 53487
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

    .line 54003
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

    .line 53322
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

    .line 54046
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

    .line 54218
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
    .line 53917
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
    .line 53444
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
    .line 53745
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

    .line 54089
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

.method public mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53380
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 53382
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53388
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53389
    return-object p0

    .line 53385
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    goto :goto_1f
.end method

.method public mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x80

    .line 54326
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54328
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54334
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54335
    return-object p0

    .line 54331
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    goto :goto_1f
.end method

.method public mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53724
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53726
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53732
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53733
    return-object p0

    .line 53729
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    goto :goto_20
.end method

.method public mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const v2, 0x8000

    .line 53982
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 53984
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 53990
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53991
    return-object p0

    .line 53987
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    goto :goto_20
.end method

.method public mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53896
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53898
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53904
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53905
    return-object p0

    .line 53901
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    goto :goto_20
.end method

.method public mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53552
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53554
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53560
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53561
    return-object p0

    .line 53557
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    goto :goto_20
.end method

.method public mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x8

    .line 54154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54156
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54162
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54163
    return-object p0

    .line 54159
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    goto :goto_1f
.end method

.method public mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53640
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53646
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53647
    return-object p0

    .line 53643
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    goto :goto_20
.end method

.method public mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x10

    .line 54197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54199
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54205
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54206
    return-object p0

    .line 54202
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    goto :goto_1f
.end method

.method public mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53595
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53597
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53603
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53604
    return-object p0

    .line 53600
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
    .line 52715
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

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
    .line 52715
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
    .line 53044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 53045
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_344

    .line 53050
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53052
    :sswitch_d
    return-object p0

    .line 53057
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53058
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    goto :goto_0

    .line 53062
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    move-result-object v0

    .line 53063
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasChatMessageRequest()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 53064
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;

    .line 53066
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53067
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53071
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    .line 53072
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasPresenceRequest()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 53073
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    .line 53075
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53076
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53080
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    .line 53081
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasTypingRequest()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 53082
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    .line 53084
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53085
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto :goto_0

    .line 53089
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    .line 53090
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasReceiptRequest()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 53091
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    .line 53093
    :cond_80
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53094
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53098
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    move-result-object v0

    .line 53099
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 53100
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;

    .line 53102
    :cond_9d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53103
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53107
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    move-result-object v0

    .line 53108
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasEventStreamRequest()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 53109
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;

    .line 53111
    :cond_ba
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53112
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53116
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;
    :sswitch_c6
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    .line 53117
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasDeviceRegistrationRequest()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 53118
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 53120
    :cond_d7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53121
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53125
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    :sswitch_e3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    .line 53126
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasPingRequest()Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 53127
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    .line 53129
    :cond_f4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53130
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53134
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;
    :sswitch_100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    move-result-object v0

    .line 53135
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationListRequest()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 53136
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;

    .line 53138
    :cond_111
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53139
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53143
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;
    :sswitch_11d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    .line 53144
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasUserCreationRequest()Z

    move-result v2

    if-eqz v2, :cond_12e

    .line 53145
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    .line 53147
    :cond_12e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53148
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53152
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;
    :sswitch_13a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    .line 53153
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 53154
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    .line 53156
    :cond_14b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53157
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53161
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;
    :sswitch_157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    .line 53162
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasLeaveConversationRequest()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 53163
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    .line 53165
    :cond_168
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53166
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53170
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;
    :sswitch_174
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    .line 53171
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationRenameRequest()Z

    move-result v2

    if-eqz v2, :cond_185

    .line 53172
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 53174
    :cond_185
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53175
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53179
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    :sswitch_191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    .line 53180
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasTileEventRequest()Z

    move-result v2

    if-eqz v2, :cond_1a2

    .line 53181
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    .line 53183
    :cond_1a2
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53184
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53188
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;
    :sswitch_1ae
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    move-result-object v0

    .line 53189
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationPreferenceRequest()Z

    move-result v2

    if-eqz v2, :cond_1bf

    .line 53190
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;

    .line 53192
    :cond_1bf
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53193
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53197
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;
    :sswitch_1cb
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    .line 53198
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasReplyToInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 53199
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    .line 53201
    :cond_1dc
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53202
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53206
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;
    :sswitch_1e8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    .line 53207
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasSetAclsRequest()Z

    move-result v2

    if-eqz v2, :cond_1f9

    .line 53208
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    .line 53210
    :cond_1f9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53211
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53215
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    :sswitch_205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    .line 53216
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasUserInfoRequest()Z

    move-result v2

    if-eqz v2, :cond_216

    .line 53217
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    .line 53219
    :cond_216
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53220
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53224
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;
    :sswitch_222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    move-result-object v0

    .line 53225
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_233

    .line 53226
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;

    .line 53228
    :cond_233
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53229
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53233
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;
    :sswitch_23f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    move-result-object v0

    .line 53234
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasEventSearchRequest()Z

    move-result v2

    if-eqz v2, :cond_250

    .line 53235
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;

    .line 53237
    :cond_250
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53238
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53242
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;
    :sswitch_25c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    .line 53243
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasSuggestionsRequest()Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 53244
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    .line 53246
    :cond_26d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53247
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53251
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    :sswitch_279
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    .line 53252
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasGlobalConversationPreferencesRequest()Z

    move-result v2

    if-eqz v2, :cond_28a

    .line 53253
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 53255
    :cond_28a
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53256
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53260
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    :sswitch_296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    move-result-object v0

    .line 53261
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasConversationJoinRequest()Z

    move-result v2

    if-eqz v2, :cond_2a7

    .line 53262
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;

    .line 53264
    :cond_2a7
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53265
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53269
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;
    :sswitch_2b3
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    .line 53270
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteRequest()Z

    move-result v2

    if-eqz v2, :cond_2c4

    .line 53271
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    .line 53273
    :cond_2c4
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53274
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53278
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;
    :sswitch_2d0
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    .line 53279
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteKeepAliveRequest()Z

    move-result v2

    if-eqz v2, :cond_2e1

    .line 53280
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    .line 53282
    :cond_2e1
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53283
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53287
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;
    :sswitch_2ed
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    .line 53288
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteReplyRequest()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 53289
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    .line 53291
    :cond_2fe
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53292
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53296
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;
    :sswitch_30a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    .line 53297
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutInviteFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_31b

    .line 53298
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    .line 53300
    :cond_31b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53301
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53305
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;
    :sswitch_327
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    .line 53306
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hasHangoutRingFinishRequest()Z

    move-result v2

    if-eqz v2, :cond_338

    .line 53307
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    .line 53309
    :cond_338
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 53310
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    goto/16 :goto_0

    .line 53045
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
    .line 52944
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 53032
    :cond_6
    :goto_6
    return-object p0

    .line 52945
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasRequestClientId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 52946
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52948
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 52949
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52951
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 52952
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52954
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 52955
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52957
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 52958
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52960
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 52961
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52963
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 52964
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52966
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 52967
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52969
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 52970
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52972
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 52973
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52975
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 52976
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52978
    :cond_96
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 52979
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52981
    :cond_a3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 52982
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52984
    :cond_b0
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 52985
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52987
    :cond_bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 52988
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52990
    :cond_ca
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 52991
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52993
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 52994
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52996
    :cond_e4
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 52997
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 52999
    :cond_f1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 53000
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53002
    :cond_fe
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 53003
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53005
    :cond_10b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_118

    .line 53006
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53008
    :cond_118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 53009
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53011
    :cond_125
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasGlobalConversationPreferencesRequest()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 53012
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53014
    :cond_132
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasConversationJoinRequest()Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 53015
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53017
    :cond_13f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 53018
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53020
    :cond_14c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteKeepAliveRequest()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 53021
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53023
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteReplyRequest()Z

    move-result v0

    if-eqz v0, :cond_166

    .line 53024
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53026
    :cond_166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutInviteFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 53027
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    .line 53029
    :cond_173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hasHangoutRingFinishRequest()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 53030
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

    .line 54283
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54285
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54291
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54292
    return-object p0

    .line 54288
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x800

    .line 54498
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54500
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54506
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54507
    return-object p0

    .line 54503
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x200

    .line 54412
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54414
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54420
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54421
    return-object p0

    .line 54417
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x400

    .line 54455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54457
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54463
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54464
    return-object p0

    .line 54460
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    goto :goto_1f
.end method

.method public mergeHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x100

    .line 54369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54371
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54377
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54378
    return-object p0

    .line 54374
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    goto :goto_1f
.end method

.method public mergeHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1000

    .line 54541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54543
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54549
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54550
    return-object p0

    .line 54546
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    goto :goto_1f
.end method

.method public mergeInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53810
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53812
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53818
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53819
    return-object p0

    .line 53815
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    goto :goto_20
.end method

.method public mergeLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53855
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53861
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53862
    return-object p0

    .line 53858
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    goto :goto_20
.end method

.method public mergePingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53683
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53689
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53690
    return-object p0

    .line 53686
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    goto :goto_20
.end method

.method public mergePresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 53425
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53431
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53432
    return-object p0

    .line 53428
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    goto :goto_1f
.end method

.method public mergeReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53509
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53511
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53517
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53518
    return-object p0

    .line 53514
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    goto :goto_20
.end method

.method public mergeReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x1

    .line 54025
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54027
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54033
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54034
    return-object p0

    .line 54030
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    goto :goto_1f
.end method

.method public mergeSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x2

    .line 54068
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54070
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54076
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54077
    return-object p0

    .line 54073
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    goto :goto_1f
.end method

.method public mergeSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x20

    .line 54240
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54242
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54248
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54249
    return-object p0

    .line 54245
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    goto :goto_1f
.end method

.method public mergeTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53939
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53941
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 53947
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53948
    return-object p0

    .line 53944
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    goto :goto_20
.end method

.method public mergeTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53466
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53468
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53474
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53475
    return-object p0

    .line 53471
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    goto :goto_20
.end method

.method public mergeUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53767
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 53769
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53775
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53776
    return-object p0

    .line 53772
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    goto :goto_20
.end method

.method public mergeUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v2, 0x4

    .line 54111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v1

    if-eq v0, v1, :cond_25

    .line 54113
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54119
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54120
    return-object p0

    .line 54116
    :cond_25
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    goto :goto_1f
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53374
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53376
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53377
    return-object p0
.end method

.method public setChatMessageRequest(Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53364
    if-nez p1, :cond_8

    .line 53365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53367
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 53369
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53370
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54320
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54322
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54323
    return-object p0
.end method

.method public setConversationJoinRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54310
    if-nez p1, :cond_8

    .line 54311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54313
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 54315
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x80

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54316
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53718
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53720
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53721
    return-object p0
.end method

.method public setConversationListRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53708
    if-nez p1, :cond_8

    .line 53709
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53711
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 53713
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53714
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 53976
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 53978
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53979
    return-object p0
.end method

.method public setConversationPreferenceRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 53966
    if-nez p1, :cond_8

    .line 53967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53969
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 53971
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53972
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53890
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53892
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53893
    return-object p0
.end method

.method public setConversationRenameRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53880
    if-nez p1, :cond_8

    .line 53881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53883
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 53885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53886
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53546
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53548
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53549
    return-object p0
.end method

.method public setConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53536
    if-nez p1, :cond_8

    .line 53537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53539
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 53541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53542
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54148
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54150
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54151
    return-object p0
.end method

.method public setConversationSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54138
    if-nez p1, :cond_8

    .line 54139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54141
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 54143
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54144
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53632
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53634
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53635
    return-object p0
.end method

.method public setDeviceRegistrationRequest(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53622
    if-nez p1, :cond_8

    .line 53623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53625
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 53627
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53628
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54191
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54193
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54194
    return-object p0
.end method

.method public setEventSearchRequest(Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54181
    if-nez p1, :cond_8

    .line 54182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54184
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 54186
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54187
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53589
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53591
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53592
    return-object p0
.end method

.method public setEventStreamRequest(Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53579
    if-nez p1, :cond_8

    .line 53580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53582
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 53584
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53585
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54277
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54279
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54280
    return-object p0
.end method

.method public setGlobalConversationPreferencesRequest(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54267
    if-nez p1, :cond_8

    .line 54268
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54270
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 54272
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x40

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54273
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54492
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54494
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54495
    return-object p0
.end method

.method public setHangoutInviteFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54482
    if-nez p1, :cond_8

    .line 54483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54485
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 54487
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54488
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54406
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54408
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54409
    return-object p0
.end method

.method public setHangoutInviteKeepAliveRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54396
    if-nez p1, :cond_8

    .line 54397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54399
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 54401
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54402
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54449
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54452
    return-object p0
.end method

.method public setHangoutInviteReplyRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54439
    if-nez p1, :cond_8

    .line 54440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54442
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 54444
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54445
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54363
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54366
    return-object p0
.end method

.method public setHangoutInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54353
    if-nez p1, :cond_8

    .line 54354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54356
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 54358
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54359
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54535
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54537
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54538
    return-object p0
.end method

.method public setHangoutRingFinishRequest(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54525
    if-nez p1, :cond_8

    .line 54526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54528
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 54530
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54531
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53804
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53807
    return-object p0
.end method

.method public setInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53794
    if-nez p1, :cond_8

    .line 53795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53797
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 53799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53800
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53847
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53849
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53850
    return-object p0
.end method

.method public setLeaveConversationRequest(Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53837
    if-nez p1, :cond_8

    .line 53838
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53840
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 53842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53843
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53675
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53677
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53678
    return-object p0
.end method

.method public setPingRequest(Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53665
    if-nez p1, :cond_8

    .line 53666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53668
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 53670
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53671
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53417
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53419
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53420
    return-object p0
.end method

.method public setPresenceRequest(Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53407
    if-nez p1, :cond_8

    .line 53408
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53410
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 53412
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53413
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53503
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53505
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53506
    return-object p0
.end method

.method public setReceiptRequest(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53493
    if-nez p1, :cond_8

    .line 53494
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53496
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 53498
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53499
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54019
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54021
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54022
    return-object p0
.end method

.method public setReplyToInviteRequest(Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54009
    if-nez p1, :cond_8

    .line 54010
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54012
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 54014
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54015
    return-object p0
.end method

.method public setRequestClientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53335
    if-nez p1, :cond_8

    .line 53336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53338
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53339
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->requestClientId_:Ljava/lang/Object;

    .line 53341
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54062
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54064
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54065
    return-object p0
.end method

.method public setSetAclsRequest(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54052
    if-nez p1, :cond_8

    .line 54053
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54055
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 54057
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54058
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54234
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54236
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54237
    return-object p0
.end method

.method public setSuggestionsRequest(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54224
    if-nez p1, :cond_8

    .line 54225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54227
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 54229
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54230
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53933
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 53935
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53936
    return-object p0
.end method

.method public setTileEventRequest(Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53923
    if-nez p1, :cond_8

    .line 53924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53926
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 53928
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53929
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53460
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53462
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53463
    return-object p0
.end method

.method public setTypingRequest(Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53450
    if-nez p1, :cond_8

    .line 53451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53453
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 53455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53456
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 53761
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53763
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53764
    return-object p0
.end method

.method public setUserCreationRequest(Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 53751
    if-nez p1, :cond_8

    .line 53752
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53754
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 53756
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 53757
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 54105
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54107
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54108
    return-object p0
.end method

.method public setUserInfoRequest(Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54095
    if-nez p1, :cond_8

    .line 54096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54098
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 54100
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->bitField0_:I

    .line 54101
    return-object p0
.end method
