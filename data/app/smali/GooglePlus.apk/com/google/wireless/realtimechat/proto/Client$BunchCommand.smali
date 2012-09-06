.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BunchCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52024
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 52025
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->initFields()V

    .line 52026
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 46499
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47276
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedIsInitialized:B

    .line 47491
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedSerializedSize:I

    .line 46500
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46501
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47276
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedIsInitialized:B

    .line 47491
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedSerializedSize:I

    .line 46501
    return-void
.end method

.method static synthetic access$64502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$64602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$64702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object p1
.end method

.method static synthetic access$64802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object p1
.end method

.method static synthetic access$64902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object p1
.end method

.method static synthetic access$65002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object p1
.end method

.method static synthetic access$65102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object p1
.end method

.method static synthetic access$65202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object p1
.end method

.method static synthetic access$65302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object p1
.end method

.method static synthetic access$65402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object p1
.end method

.method static synthetic access$65502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object p1
.end method

.method static synthetic access$65602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object p1
.end method

.method static synthetic access$65702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object p1
.end method

.method static synthetic access$65802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object p1
.end method

.method static synthetic access$65902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object p1
.end method

.method static synthetic access$66002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object p1
.end method

.method static synthetic access$66102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object p1
.end method

.method static synthetic access$66202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object p1
.end method

.method static synthetic access$66302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object p1
.end method

.method static synthetic access$66402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object p1
.end method

.method static synthetic access$66502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object p1
.end method

.method static synthetic access$66602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object p1
.end method

.method static synthetic access$66702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object p1
.end method

.method static synthetic access$66802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object p1
.end method

.method static synthetic access$66902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object p1
.end method

.method static synthetic access$67002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object p1
.end method

.method static synthetic access$67102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object p1
.end method

.method static synthetic access$67202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object p1
.end method

.method static synthetic access$67302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object p1
.end method

.method static synthetic access$67402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object p1
.end method

.method static synthetic access$67502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object p1
.end method

.method static synthetic access$67602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object p1
.end method

.method static synthetic access$67702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object p1
.end method

.method static synthetic access$67802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object p1
.end method

.method static synthetic access$67902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object p1
.end method

.method static synthetic access$68002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object p1
.end method

.method static synthetic access$68102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object p1
.end method

.method static synthetic access$68202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object p1
.end method

.method static synthetic access$68302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object p1
.end method

.method static synthetic access$68402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object p1
.end method

.method static synthetic access$68502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object p1
.end method

.method static synthetic access$68602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object p1
.end method

.method static synthetic access$68702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object p1
.end method

.method static synthetic access$68802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object p1
.end method

.method static synthetic access$68902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object p1
.end method

.method static synthetic access$69002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object p1
.end method

.method static synthetic access$69102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object p1
.end method

.method static synthetic access$69202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object p1
.end method

.method static synthetic access$69302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object p1
.end method

.method static synthetic access$69402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object p1
.end method

.method static synthetic access$69502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object p1
.end method

.method static synthetic access$69602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object p1
.end method

.method static synthetic access$69702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object p1
.end method

.method static synthetic access$69802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object p1
.end method

.method static synthetic access$69902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object p1
.end method

.method static synthetic access$70002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object p1
.end method

.method static synthetic access$70102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object p1
.end method

.method static synthetic access$70202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object p1
.end method

.method static synthetic access$70302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object p1
.end method

.method static synthetic access$70402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object p1
.end method

.method static synthetic access$70502(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object p1
.end method

.method static synthetic access$70602(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object p1
.end method

.method static synthetic access$70702(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object p1
.end method

.method static synthetic access$70802(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object p1
.end method

.method static synthetic access$70902(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object p1
.end method

.method static synthetic access$71002(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object p1
.end method

.method static synthetic access$71102(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object p1
.end method

.method static synthetic access$71202(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    return p1
.end method

.method static synthetic access$71302(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    return p1
.end method

.method static synthetic access$71402(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46494
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 1

    .prologue
    .line 46505
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method private getRequestClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 46536
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    .line 46537
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 46538
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 46540
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    .line 46543
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 47208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    .line 47209
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 47210
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 47211
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 47212
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 47213
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 47214
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 47215
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 47216
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 47217
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 47218
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 47219
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 47220
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 47221
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 47222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 47223
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 47224
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 47225
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 47226
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 47227
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 47228
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 47229
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 47230
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 47231
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 47232
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 47233
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 47234
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 47235
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 47236
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 47237
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 47238
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 47239
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 47240
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 47241
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 47242
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 47243
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 47244
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 47245
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 47246
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 47247
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 47248
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 47249
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 47250
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 47251
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 47252
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 47253
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 47254
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 47255
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 47256
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 47257
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 47258
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 47259
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 47260
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 47261
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 47262
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 47263
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 47264
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 47265
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 47266
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 47267
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 47268
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 47269
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 47270
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 47271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 47272
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 47273
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 47274
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 47275
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 1

    .prologue
    .line 47843
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->access$64300()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 47846
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 46554
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 46564
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 46574
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 47094
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 47104
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 46764
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 46774
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 46914
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 46924
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 46844
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 46854
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 46684
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 46694
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 47014
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 47024
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46494
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 46509
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 46724
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 46734
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 46804
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 47034
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 47044
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 46714
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 46704
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 47074
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 47084
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 46864
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 47174
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 47184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 47134
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 47144
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 47154
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 47164
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 47114
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 47124
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 47194
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 47204
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 46954
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 46814
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 46964
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 46824
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 46834
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 46674
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 46904
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 46744
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 46754
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 46604
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 46584
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 46594
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 46644
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 46654
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 46664
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 46934
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 46974
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 46522
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    .line 46523
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 46524
    check-cast v1, Ljava/lang/String;

    .line 46532
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 46526
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 46528
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 46529
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 46530
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->requestClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 46532
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/high16 v8, 0x1

    const v7, 0x8000

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/high16 v4, -0x8000

    .line 47493
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedSerializedSize:I

    .line 47494
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    move v1, v0

    .line 47766
    .end local v0           #size:I
    .local v1, size:I
    :goto_f
    return v1

    .line 47496
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_10
    const/4 v0, 0x0

    .line 47497
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 47498
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47501
    :cond_21
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_2f

    .line 47502
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47505
    :cond_2f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3e

    .line 47506
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47509
    :cond_3e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_4e

    .line 47510
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47513
    :cond_4e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_5e

    .line 47514
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47517
    :cond_5e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_6e

    .line 47518
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47521
    :cond_6e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_7f

    .line 47522
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47525
    :cond_7f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_8d

    .line 47526
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47529
    :cond_8d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_9b

    .line 47530
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47533
    :cond_9b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_ad

    .line 47534
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47537
    :cond_ad
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_bf

    .line 47538
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47541
    :cond_bf
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_d1

    .line 47542
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47545
    :cond_d1
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_e3

    .line 47546
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47549
    :cond_e3
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_f5

    .line 47550
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47553
    :cond_f5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_107

    .line 47554
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47557
    :cond_107
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_119

    .line 47558
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47561
    :cond_119
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_12b

    .line 47562
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47565
    :cond_12b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_13d

    .line 47566
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47569
    :cond_13d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_14f

    .line 47570
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47573
    :cond_14f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_161

    .line 47574
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47577
    :cond_161
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_173

    .line 47578
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47581
    :cond_173
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000

    if-ne v2, v3, :cond_185

    .line 47582
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47585
    :cond_185
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_195

    .line 47586
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47589
    :cond_195
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1a6

    .line 47590
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47593
    :cond_1a6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b7

    .line 47594
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47597
    :cond_1b7
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1c8

    .line 47598
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47601
    :cond_1c8
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d9

    .line 47602
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47605
    :cond_1d9
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1ea

    .line 47606
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47609
    :cond_1ea
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_1fb

    .line 47610
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47613
    :cond_1fb
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_20c

    .line 47614
    const/16 v2, 0x1f

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47617
    :cond_20c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_21d

    .line 47618
    const/16 v2, 0x21

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47621
    :cond_21d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_22e

    .line 47622
    const/16 v2, 0x22

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47625
    :cond_22e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_23f

    .line 47626
    const/16 v2, 0x23

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47629
    :cond_23f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_250

    .line 47630
    const/16 v2, 0x24

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47633
    :cond_250
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_25e

    .line 47634
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47637
    :cond_25e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_26c

    .line 47638
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47641
    :cond_26c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_27d

    .line 47642
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47645
    :cond_27d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_28e

    .line 47646
    const/16 v2, 0x28

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47649
    :cond_28e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_29f

    .line 47650
    const/16 v2, 0x29

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47653
    :cond_29f
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_2b0

    .line 47654
    const/16 v2, 0x2a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47657
    :cond_2b0
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_2c2

    .line 47658
    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47661
    :cond_2c2
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_2d4

    .line 47662
    const/16 v2, 0x2c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47665
    :cond_2d4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_2e6

    .line 47666
    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47669
    :cond_2e6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2f4

    .line 47670
    const/16 v2, 0x2e

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47673
    :cond_2f4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_303

    .line 47674
    const/16 v2, 0x2f

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47677
    :cond_303
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_314

    .line 47678
    const/16 v2, 0x30

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47681
    :cond_314
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_325

    .line 47682
    const/16 v2, 0x31

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47685
    :cond_325
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_336

    .line 47686
    const/16 v2, 0x32

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47689
    :cond_336
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_348

    .line 47690
    const/16 v2, 0x33

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47693
    :cond_348
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_35a

    .line 47694
    const/16 v2, 0x34

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47697
    :cond_35a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_369

    .line 47698
    const/16 v2, 0x35

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47701
    :cond_369
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_378

    .line 47702
    const/16 v2, 0x36

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47705
    :cond_378
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_389

    .line 47706
    const/16 v2, 0x37

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47709
    :cond_389
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_39b

    .line 47710
    const/16 v2, 0x38

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47713
    :cond_39b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_3ad

    .line 47714
    const/16 v2, 0x39

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47717
    :cond_3ad
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_3bf

    .line 47718
    const/16 v2, 0x3a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47721
    :cond_3bf
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_3d1

    .line 47722
    const/16 v2, 0x3b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47725
    :cond_3d1
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_3e3

    .line 47726
    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47729
    :cond_3e3
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_3f5

    .line 47730
    const/16 v2, 0x3d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47733
    :cond_3f5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_407

    .line 47734
    const/16 v2, 0x3e

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47737
    :cond_407
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_419

    .line 47738
    const/16 v2, 0x3f

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47741
    :cond_419
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000

    if-ne v2, v3, :cond_42b

    .line 47742
    const/16 v2, 0x40

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47745
    :cond_42b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    const/high16 v3, 0x4000

    if-ne v2, v3, :cond_43d

    .line 47746
    const/16 v2, 0x41

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47749
    :cond_43d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_44b

    .line 47750
    const/16 v2, 0x42

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47753
    :cond_44b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_45b

    .line 47754
    const/16 v2, 0x43

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47757
    :cond_45b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_46a

    .line 47758
    const/16 v2, 0x44

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47761
    :cond_46a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_479

    .line 47762
    const/16 v2, 0x45

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47765
    :cond_479
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedSerializedSize:I

    move v1, v0

    .line 47766
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_f
.end method

.method public getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 46944
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 46984
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 47054
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 47064
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 46894
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 46874
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 46884
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 46634
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 46614
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 46624
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 46784
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 46794
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 46994
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 47004
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 46551
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46561
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46571
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 47091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47101
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46761
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46771
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46911
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46921
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46841
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46851
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46681
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46691
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 47011
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47021
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46721
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 47031
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47041
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46711
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 47071
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47081
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46861
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47181
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

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

    .line 47131
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47141
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47151
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47161
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47111
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47121
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 47191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

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
    .line 47201
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

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
    .line 46951
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46811
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46961
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46821
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46831
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46671
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46901
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46741
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46751
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46601
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46581
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46591
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46641
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46651
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46661
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46931
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46971
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 46519
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46941
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46981
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47051
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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

    .line 47061
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46891
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46871
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46881
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 46631
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46611
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46781
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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

    .line 46791
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

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
    .line 46991
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .line 47001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 47278
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedIsInitialized:B

    .line 47279
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 47282
    :goto_8
    return v1

    .line 47279
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 47281
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46494
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 47844
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46494
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;
    .registers 2

    .prologue
    .line 47848
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 47773
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x1

    const v5, 0x8000

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/high16 v2, -0x8000

    .line 47287
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getSerializedSize()I

    .line 47288
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 47289
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 47291
    :cond_1a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_26

    .line 47292
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47294
    :cond_26
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_33

    .line 47295
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47297
    :cond_33
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_41

    .line 47298
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47300
    :cond_41
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_4f

    .line 47301
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47303
    :cond_4f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_5d

    .line 47304
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47306
    :cond_5d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_6c

    .line 47307
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47309
    :cond_6c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_78

    .line 47310
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47312
    :cond_78
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_84

    .line 47313
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47315
    :cond_84
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_94

    .line 47316
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47318
    :cond_94
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_a4

    .line 47319
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47321
    :cond_a4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_b4

    .line 47322
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47324
    :cond_b4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_c4

    .line 47325
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47327
    :cond_c4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_d4

    .line 47328
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47330
    :cond_d4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_e4

    .line 47331
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47333
    :cond_e4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_f4

    .line 47334
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47336
    :cond_f4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_104

    .line 47337
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47339
    :cond_104
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_114

    .line 47340
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47342
    :cond_114
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_124

    .line 47343
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47345
    :cond_124
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_134

    .line 47346
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47348
    :cond_134
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_144

    .line 47349
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47351
    :cond_144
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_154

    .line 47352
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47354
    :cond_154
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_162

    .line 47355
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47357
    :cond_162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_171

    .line 47358
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47360
    :cond_171
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_180

    .line 47361
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47363
    :cond_180
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_18f

    .line 47364
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47366
    :cond_18f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_19e

    .line 47367
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47369
    :cond_19e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1ad

    .line 47370
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47372
    :cond_1ad
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1bc

    .line 47373
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47375
    :cond_1bc
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1cb

    .line 47376
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47378
    :cond_1cb
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1da

    .line 47379
    const/16 v0, 0x21

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47381
    :cond_1da
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1e9

    .line 47382
    const/16 v0, 0x22

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47384
    :cond_1e9
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_1f8

    .line 47385
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47387
    :cond_1f8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_207

    .line 47388
    const/16 v0, 0x24

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47390
    :cond_207
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_213

    .line 47391
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47393
    :cond_213
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_21f

    .line 47394
    const/16 v0, 0x26

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47396
    :cond_21f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_22e

    .line 47397
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47399
    :cond_22e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_23d

    .line 47400
    const/16 v0, 0x28

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47402
    :cond_23d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_24c

    .line 47403
    const/16 v0, 0x29

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47405
    :cond_24c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_25b

    .line 47406
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47408
    :cond_25b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_26b

    .line 47409
    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47411
    :cond_26b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_27b

    .line 47412
    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47414
    :cond_27b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_28b

    .line 47415
    const/16 v0, 0x2d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47417
    :cond_28b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_297

    .line 47418
    const/16 v0, 0x2e

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47420
    :cond_297
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a4

    .line 47421
    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47423
    :cond_2a4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2b3

    .line 47424
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47426
    :cond_2b3
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_2c2

    .line 47427
    const/16 v0, 0x31

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47429
    :cond_2c2
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_2d1

    .line 47430
    const/16 v0, 0x32

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47432
    :cond_2d1
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_2e1

    .line 47433
    const/16 v0, 0x33

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47435
    :cond_2e1
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_2f1

    .line 47436
    const/16 v0, 0x34

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47438
    :cond_2f1
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2fe

    .line 47439
    const/16 v0, 0x35

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47441
    :cond_2fe
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_30b

    .line 47442
    const/16 v0, 0x36

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47444
    :cond_30b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_31a

    .line 47445
    const/16 v0, 0x37

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47447
    :cond_31a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_32a

    .line 47448
    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47450
    :cond_32a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_33a

    .line 47451
    const/16 v0, 0x39

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47453
    :cond_33a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_34a

    .line 47454
    const/16 v0, 0x3a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47456
    :cond_34a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_35a

    .line 47457
    const/16 v0, 0x3b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47459
    :cond_35a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_36a

    .line 47460
    const/16 v0, 0x3c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47462
    :cond_36a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_37a

    .line 47463
    const/16 v0, 0x3d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47465
    :cond_37a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_38a

    .line 47466
    const/16 v0, 0x3e

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47468
    :cond_38a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_39a

    .line 47469
    const/16 v0, 0x3f

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47471
    :cond_39a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_3aa

    .line 47472
    const/16 v0, 0x40

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47474
    :cond_3aa
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    const/high16 v1, 0x4000

    if-ne v0, v1, :cond_3ba

    .line 47475
    const/16 v0, 0x41

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47477
    :cond_3ba
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField1_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3c6

    .line 47478
    const/16 v0, 0x42

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47480
    :cond_3c6
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d4

    .line 47481
    const/16 v0, 0x43

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47483
    :cond_3d4
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_3e1

    .line 47484
    const/16 v0, 0x44

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47486
    :cond_3e1
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->bitField2_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3ee

    .line 47487
    const/16 v0, 0x45

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47489
    :cond_3ee
    return-void
.end method
