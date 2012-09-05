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
    .line 54563
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    .line 54564
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->initFields()V

    .line 54565
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52050
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52407
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52508
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52051
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52052
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52407
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52508
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52052
    return-void
.end method

.method static synthetic access$71702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$71802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object p1
.end method

.method static synthetic access$71902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object p1
.end method

.method static synthetic access$72002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;)Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object p1
.end method

.method static synthetic access$72102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object p1
.end method

.method static synthetic access$72202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object p1
.end method

.method static synthetic access$72302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object p1
.end method

.method static synthetic access$72402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object p1
.end method

.method static synthetic access$72502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$PingRequest;)Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object p1
.end method

.method static synthetic access$72602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object p1
.end method

.method static synthetic access$72702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object p1
.end method

.method static synthetic access$72802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object p1
.end method

.method static synthetic access$72902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object p1
.end method

.method static synthetic access$73002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object p1
.end method

.method static synthetic access$73102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;)Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object p1
.end method

.method static synthetic access$73202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object p1
.end method

.method static synthetic access$73302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object p1
.end method

.method static synthetic access$73402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object p1
.end method

.method static synthetic access$73502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object p1
.end method

.method static synthetic access$73602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object p1
.end method

.method static synthetic access$73702(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object p1
.end method

.method static synthetic access$73802(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object p1
.end method

.method static synthetic access$73902(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object p1
.end method

.method static synthetic access$74002(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object p1
.end method

.method static synthetic access$74102(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object p1
.end method

.method static synthetic access$74202(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object p1
.end method

.method static synthetic access$74302(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object p1
.end method

.method static synthetic access$74402(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object p1
.end method

.method static synthetic access$74502(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object p1
.end method

.method static synthetic access$74602(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52045
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 1

    .prologue
    .line 52056
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method private getRequestClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52085
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52086
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52087
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52089
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52092
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
    .line 52377
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52378
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    .line 52379
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    .line 52380
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    .line 52381
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    .line 52382
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    .line 52383
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    .line 52384
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 52385
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    .line 52386
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    .line 52387
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    .line 52388
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    .line 52389
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    .line 52390
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    .line 52391
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    .line 52392
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    .line 52393
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    .line 52394
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 52395
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    .line 52396
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    .line 52397
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    .line 52398
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 52399
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .line 52400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    .line 52401
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    .line 52402
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    .line 52403
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    .line 52404
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    .line 52405
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    .line 52406
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    .registers 1

    .prologue
    .line 52708
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;->access$71500()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessageRequest()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;
    .registers 2

    .prologue
    .line 52103
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    return-object v0
.end method

.method public getConversationJoinRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;
    .registers 2

    .prologue
    .line 52323
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    return-object v0
.end method

.method public getConversationListRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;
    .registers 2

    .prologue
    .line 52183
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    return-object v0
.end method

.method public getConversationPreferenceRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;
    .registers 2

    .prologue
    .line 52243
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    return-object v0
.end method

.method public getConversationRenameRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 52223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    return-object v0
.end method

.method public getConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;
    .registers 2

    .prologue
    .line 52143
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    return-object v0
.end method

.method public getConversationSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;
    .registers 2

    .prologue
    .line 52283
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52045
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .registers 2

    .prologue
    .line 52060
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    return-object v0
.end method

.method public getDeviceRegistrationRequest()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 52163
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getEventSearchRequest()Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;
    .registers 2

    .prologue
    .line 52293
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    return-object v0
.end method

.method public getEventStreamRequest()Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;
    .registers 2

    .prologue
    .line 52153
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    return-object v0
.end method

.method public getGlobalConversationPreferencesRequest()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 52313
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    return-object v0
.end method

.method public getHangoutInviteFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;
    .registers 2

    .prologue
    .line 52363
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;
    .registers 2

    .prologue
    .line 52343
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    return-object v0
.end method

.method public getHangoutInviteReplyRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;
    .registers 2

    .prologue
    .line 52353
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    return-object v0
.end method

.method public getHangoutInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;
    .registers 2

    .prologue
    .line 52333
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    return-object v0
.end method

.method public getHangoutRingFinishRequest()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;
    .registers 2

    .prologue
    .line 52373
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    return-object v0
.end method

.method public getInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;
    .registers 2

    .prologue
    .line 52203
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    return-object v0
.end method

.method public getLeaveConversationRequest()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;
    .registers 2

    .prologue
    .line 52213
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    return-object v0
.end method

.method public getPingRequest()Lcom/google/wireless/realtimechat/proto/Client$PingRequest;
    .registers 2

    .prologue
    .line 52173
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    return-object v0
.end method

.method public getPresenceRequest()Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;
    .registers 2

    .prologue
    .line 52113
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    return-object v0
.end method

.method public getReceiptRequest()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 52133
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    return-object v0
.end method

.method public getReplyToInviteRequest()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;
    .registers 2

    .prologue
    .line 52253
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52071
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    .line 52072
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52073
    check-cast v1, Ljava/lang/String;

    .line 52081
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52075
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52077
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52078
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52079
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->requestClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52081
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

    .line 52510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    .line 52511
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 52631
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 52513
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 52514
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 52515
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52518
    :cond_1e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 52519
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52522
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 52523
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52526
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 52527
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52530
    :cond_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_54

    .line 52531
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52534
    :cond_54
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 52535
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52538
    :cond_64
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_74

    .line 52539
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52542
    :cond_74
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_83

    .line 52543
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52546
    :cond_83
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_94

    .line 52547
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52550
    :cond_94
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a5

    .line 52551
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52554
    :cond_a5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b6

    .line 52555
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52558
    :cond_b6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c7

    .line 52559
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52562
    :cond_c7
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d8

    .line 52563
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52566
    :cond_d8
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e9

    .line 52567
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52570
    :cond_e9
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_fa

    .line 52571
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52574
    :cond_fa
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10c

    .line 52575
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52578
    :cond_10c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11e

    .line 52579
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52582
    :cond_11e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_130

    .line 52583
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52586
    :cond_130
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_142

    .line 52587
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52590
    :cond_142
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_154

    .line 52591
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52594
    :cond_154
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_166

    .line 52595
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52598
    :cond_166
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_178

    .line 52599
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52602
    :cond_178
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_18a

    .line 52603
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52606
    :cond_18a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_19c

    .line 52607
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52610
    :cond_19c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_1ae

    .line 52611
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52614
    :cond_1ae
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_1c0

    .line 52615
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52618
    :cond_1c0
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_1d2

    .line 52619
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52622
    :cond_1d2
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_1e4

    .line 52623
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52626
    :cond_1e4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_1f6

    .line 52627
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52630
    :cond_1f6
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 52631
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public getSetAclsRequest()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 52263
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSuggestionsRequest()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 52303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getTileEventRequest()Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;
    .registers 2

    .prologue
    .line 52233
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    return-object v0
.end method

.method public getTypingRequest()Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;
    .registers 2

    .prologue
    .line 52123
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    return-object v0
.end method

.method public getUserCreationRequest()Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;
    .registers 2

    .prologue
    .line 52193
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    return-object v0
.end method

.method public getUserInfoRequest()Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;
    .registers 2

    .prologue
    .line 52273
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    return-object v0
.end method

.method public hasChatMessageRequest()Z
    .registers 3

    .prologue
    .line 52100
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

    .line 52320
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
    .line 52180
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

    .line 52240
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
    .line 52220
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
    .line 52140
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

    .line 52280
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
    .line 52160
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

    .line 52290
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
    .line 52150
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

    .line 52310
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

    .line 52360
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

    .line 52340
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

    .line 52350
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

    .line 52330
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

    .line 52370
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
    .line 52200
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
    .line 52210
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
    .line 52170
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
    .line 52110
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
    .line 52130
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

    .line 52250
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

    .line 52068
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

    .line 52260
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

    .line 52300
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
    .line 52230
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
    .line 52120
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
    .line 52190
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

    .line 52270
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

    .line 52409
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    .line 52410
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 52413
    :goto_8
    return v1

    .line 52410
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 52412
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 52638
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

    .line 52418
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getSerializedSize()I

    .line 52419
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 52420
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 52422
    :cond_17
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 52423
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->chatMessageRequest_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequest;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52425
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 52426
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->presenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$PresenceRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52428
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 52429
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->typingRequest_:Lcom/google/wireless/realtimechat/proto/Client$TypingRequest;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52431
    :cond_39
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_45

    .line 52432
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->receiptRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52434
    :cond_45
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 52435
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52437
    :cond_53
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_61

    .line 52438
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventStreamRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52440
    :cond_61
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6e

    .line 52441
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->deviceRegistrationRequest_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52443
    :cond_6e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7d

    .line 52444
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->pingRequest_:Lcom/google/wireless/realtimechat/proto/Client$PingRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52446
    :cond_7d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8c

    .line 52447
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationListRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52449
    :cond_8c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9b

    .line 52450
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userCreationRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52452
    :cond_9b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_aa

    .line 52453
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->inviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$InviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52455
    :cond_aa
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_b9

    .line 52456
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->leaveConversationRequest_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52458
    :cond_b9
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c8

    .line 52459
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationRenameRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52461
    :cond_c8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d7

    .line 52462
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->tileEventRequest_:Lcom/google/wireless/realtimechat/proto/Client$TileEventRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52464
    :cond_d7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_e7

    .line 52465
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationPreferenceRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceRequest;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52467
    :cond_e7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_f7

    .line 52468
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->replyToInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52470
    :cond_f7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_107

    .line 52471
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->setAclsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52473
    :cond_107
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_117

    .line 52474
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->userInfoRequest_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52476
    :cond_117
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_127

    .line 52477
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52479
    :cond_127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_137

    .line 52480
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->eventSearchRequest_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52482
    :cond_137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_147

    .line 52483
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->suggestionsRequest_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52485
    :cond_147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_157

    .line 52486
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->globalConversationPreferencesRequest_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52488
    :cond_157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_167

    .line 52489
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->conversationJoinRequest_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52491
    :cond_167
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_177

    .line 52492
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52494
    :cond_177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_187

    .line 52495
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteKeepAliveRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52497
    :cond_187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_197

    .line 52498
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteReplyRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52500
    :cond_197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1a7

    .line 52501
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutInviteFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52503
    :cond_1a7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_1b7

    .line 52504
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;->hangoutRingFinishRequest_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52506
    :cond_1b7
    return-void
.end method
