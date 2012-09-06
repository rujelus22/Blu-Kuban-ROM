.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BunchClientRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54668
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 54669
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->initFields()V

    .line 54670
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52155
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52512
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52613
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52156
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52512
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52613
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52157
    return-void
.end method

.method static synthetic access$71802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$71902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object p1
.end method

.method static synthetic access$72002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object p1
.end method

.method static synthetic access$72102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object p1
.end method

.method static synthetic access$72202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object p1
.end method

.method static synthetic access$72302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object p1
.end method

.method static synthetic access$72402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object p1
.end method

.method static synthetic access$72502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object p1
.end method

.method static synthetic access$72602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object p1
.end method

.method static synthetic access$72702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object p1
.end method

.method static synthetic access$72802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object p1
.end method

.method static synthetic access$72902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object p1
.end method

.method static synthetic access$73002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object p1
.end method

.method static synthetic access$73102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object p1
.end method

.method static synthetic access$73202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object p1
.end method

.method static synthetic access$73302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object p1
.end method

.method static synthetic access$73402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object p1
.end method

.method static synthetic access$73502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object p1
.end method

.method static synthetic access$73602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object p1
.end method

.method static synthetic access$73702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object p1
.end method

.method static synthetic access$73802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object p1
.end method

.method static synthetic access$73902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object p1
.end method

.method static synthetic access$74002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object p1
.end method

.method static synthetic access$74102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object p1
.end method

.method static synthetic access$74202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object p1
.end method

.method static synthetic access$74302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object p1
.end method

.method static synthetic access$74402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object p1
.end method

.method static synthetic access$74502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object p1
.end method

.method static synthetic access$74602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object p1
.end method

.method static synthetic access$74702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52150
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 1

    .prologue
    .line 52161
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method private getRequestClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52190
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52191
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52192
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52194
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52197
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
    .line 52482
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52483
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52484
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52485
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52486
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52487
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52488
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52489
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52490
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52491
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52492
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52493
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52494
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52495
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52496
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52497
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52498
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52499
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 52500
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 52501
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 52502
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 52503
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 52504
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 52505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 52506
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 52507
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 52508
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 52509
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 52510
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52511
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52813
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->access$71600()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 52816
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 52208
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 52428
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 52288
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 52348
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 52328
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 52248
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 52388
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 2

    .prologue
    .line 52165
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 52268
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 52398
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 52258
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 52418
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 52468
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 52448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 52458
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 52438
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 52478
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 52308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 52318
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 52278
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 52218
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 52238
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 52358
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52176
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52177
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52178
    check-cast v1, Ljava/lang/String;

    .line 52186
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52180
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52182
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52183
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52184
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52186
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52616
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 52736
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 52618
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 52619
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 52620
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52623
    :cond_1e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 52624
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52627
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 52628
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52631
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 52632
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52635
    :cond_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_54

    .line 52636
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52639
    :cond_54
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 52640
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52643
    :cond_64
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_74

    .line 52644
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52647
    :cond_74
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_83

    .line 52648
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52651
    :cond_83
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_94

    .line 52652
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52655
    :cond_94
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a5

    .line 52656
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52659
    :cond_a5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b6

    .line 52660
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52663
    :cond_b6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c7

    .line 52664
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52667
    :cond_c7
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d8

    .line 52668
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52671
    :cond_d8
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e9

    .line 52672
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52675
    :cond_e9
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_fa

    .line 52676
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52679
    :cond_fa
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10c

    .line 52680
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52683
    :cond_10c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11e

    .line 52684
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52687
    :cond_11e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_130

    .line 52688
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52691
    :cond_130
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_142

    .line 52692
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52695
    :cond_142
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_154

    .line 52696
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52699
    :cond_154
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_166

    .line 52700
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52703
    :cond_166
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_178

    .line 52704
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52707
    :cond_178
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_18a

    .line 52708
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52711
    :cond_18a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_19c

    .line 52712
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52715
    :cond_19c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_1ae

    .line 52716
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52719
    :cond_1ae
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_1c0

    .line 52720
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52723
    :cond_1c0
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_1d2

    .line 52724
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52727
    :cond_1d2
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_1e4

    .line 52728
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52731
    :cond_1e4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_1f6

    .line 52732
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52735
    :cond_1f6
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 52736
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 52368
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 52408
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 52338
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 52228
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 52298
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 52378
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public hasChatMessageRequest()Z
    .registers 3

    .prologue
    .line 52205
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52425
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52285
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52345
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52325
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52245
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52385
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52265
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52395
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52415
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52465
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52305
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52315
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52275
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52215
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52235
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52355
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52173
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52335
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52225
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .line 52295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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

    .line 52375
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 52514
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52515
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 52518
    :goto_8
    return v1

    .line 52515
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 52517
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 52814
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 2

    .prologue
    .line 52818
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

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
    .line 52743
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 52523
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSerializedSize()I

    .line 52524
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 52525
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 52527
    :cond_17
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 52528
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52530
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 52531
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52533
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 52534
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52536
    :cond_39
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_45

    .line 52537
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52539
    :cond_45
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 52540
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52542
    :cond_53
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_61

    .line 52543
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52545
    :cond_61
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6e

    .line 52546
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52548
    :cond_6e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7d

    .line 52549
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52551
    :cond_7d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8c

    .line 52552
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52554
    :cond_8c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9b

    .line 52555
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52557
    :cond_9b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_aa

    .line 52558
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52560
    :cond_aa
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_b9

    .line 52561
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52563
    :cond_b9
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c8

    .line 52564
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52566
    :cond_c8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d7

    .line 52567
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52569
    :cond_d7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_e7

    .line 52570
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52572
    :cond_e7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_f7

    .line 52573
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52575
    :cond_f7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_107

    .line 52576
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52578
    :cond_107
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_117

    .line 52579
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52581
    :cond_117
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_127

    .line 52582
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52584
    :cond_127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_137

    .line 52585
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52587
    :cond_137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_147

    .line 52588
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52590
    :cond_147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_157

    .line 52591
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52593
    :cond_157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_167

    .line 52594
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52596
    :cond_167
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_177

    .line 52597
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52599
    :cond_177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_187

    .line 52600
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52602
    :cond_187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_197

    .line 52603
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52605
    :cond_197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1a7

    .line 52606
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52608
    :cond_1a7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_1b7

    .line 52609
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52611
    :cond_1b7
    return-void
.end method
