.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BunchServerResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57395
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    .line 57396
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->initFields()V

    .line 57397
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 54803
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 55171
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedIsInitialized:B

    .line 55275
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedSerializedSize:I

    .line 54804
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 54805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 55171
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedIsInitialized:B

    .line 55275
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedSerializedSize:I

    .line 54805
    return-void
.end method

.method static synthetic access$75102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$75202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object p1
.end method

.method static synthetic access$75302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object p1
.end method

.method static synthetic access$75402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;)Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object p1
.end method

.method static synthetic access$75502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object p1
.end method

.method static synthetic access$75602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object p1
.end method

.method static synthetic access$75702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object p1
.end method

.method static synthetic access$75802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object p1
.end method

.method static synthetic access$75902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$PingResponse;)Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object p1
.end method

.method static synthetic access$76002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object p1
.end method

.method static synthetic access$76102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object p1
.end method

.method static synthetic access$76202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$Error;)Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object p1
.end method

.method static synthetic access$76302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;)Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object p1
.end method

.method static synthetic access$76402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object p1
.end method

.method static synthetic access$76502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;)Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object p1
.end method

.method static synthetic access$76602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object p1
.end method

.method static synthetic access$76702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object p1
.end method

.method static synthetic access$76802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object p1
.end method

.method static synthetic access$76902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object p1
.end method

.method static synthetic access$77002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object p1
.end method

.method static synthetic access$77102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object p1
.end method

.method static synthetic access$77202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object p1
.end method

.method static synthetic access$77302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object p1
.end method

.method static synthetic access$77402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object p1
.end method

.method static synthetic access$77502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object p1
.end method

.method static synthetic access$77602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object p1
.end method

.method static synthetic access$77702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object p1
.end method

.method static synthetic access$77802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object p1
.end method

.method static synthetic access$77902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object p1
.end method

.method static synthetic access$78002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object p1
.end method

.method static synthetic access$78102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54798
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 1

    .prologue
    .line 54809
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    return-object v0
.end method

.method private getRequestClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 54838
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    .line 54839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 54840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 54842
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    .line 54845
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
    .line 55140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    .line 55141
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    .line 55142
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    .line 55143
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    .line 55144
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .line 55145
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    .line 55146
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    .line 55147
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    .line 55148
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$PingResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    .line 55149
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    .line 55150
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    .line 55151
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Error;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Error;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    .line 55152
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    .line 55153
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    .line 55154
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    .line 55155
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    .line 55156
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 55157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    .line 55158
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    .line 55159
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 55160
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .line 55161
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    .line 55162
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 55163
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    .line 55164
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    .line 55165
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 55166
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 55167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 55168
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 55169
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .line 55170
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 1

    .prologue
    .line 55479
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->access$74900()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 55482
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessageResponse()Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;
    .registers 2

    .prologue
    .line 54856
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    return-object v0
.end method

.method public getConversationJoinResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;
    .registers 2

    .prologue
    .line 55086
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    return-object v0
.end method

.method public getConversationListResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;
    .registers 2

    .prologue
    .line 54936
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    return-object v0
.end method

.method public getConversationPreferenceResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;
    .registers 2

    .prologue
    .line 54996
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    return-object v0
.end method

.method public getConversationRenameResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;
    .registers 2

    .prologue
    .line 54976
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    return-object v0
.end method

.method public getConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;
    .registers 2

    .prologue
    .line 54896
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    return-object v0
.end method

.method public getConversationSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 55046
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54798
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
    .registers 2

    .prologue
    .line 54813
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    return-object v0
.end method

.method public getDeviceRegistrationResponse()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;
    .registers 2

    .prologue
    .line 54916
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    return-object v0
.end method

.method public getError()Lcom/google/wireless/realtimechat/proto/Client$Error;
    .registers 2

    .prologue
    .line 54956
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    return-object v0
.end method

.method public getEventSearchResponse()Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;
    .registers 2

    .prologue
    .line 55056
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    return-object v0
.end method

.method public getEventSteamResponse()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
    .registers 2

    .prologue
    .line 54906
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    return-object v0
.end method

.method public getGlobalConversationPreferencesResponse()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;
    .registers 2

    .prologue
    .line 55076
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    return-object v0
.end method

.method public getHangoutInviteFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 55126
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getHangoutInviteKeepAliveResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 55106
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getHangoutInviteReplyResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 55116
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getHangoutInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 55096
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getHangoutRingFinishResponse()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 55136
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    return-object v0
.end method

.method public getInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 55006
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getLeaveConversationResponse()Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;
    .registers 2

    .prologue
    .line 54966
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    return-object v0
.end method

.method public getPingResponse()Lcom/google/wireless/realtimechat/proto/Client$PingResponse;
    .registers 2

    .prologue
    .line 54926
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    return-object v0
.end method

.method public getPresenceResponse()Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;
    .registers 2

    .prologue
    .line 54866
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    return-object v0
.end method

.method public getReceiptResponse()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 54886
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    return-object v0
.end method

.method public getReplyToInviteResponse()Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;
    .registers 2

    .prologue
    .line 55016
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    return-object v0
.end method

.method public getRequestClientId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 54824
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    .line 54825
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 54826
    check-cast v1, Ljava/lang/String;

    .line 54834
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 54828
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 54830
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 54831
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 54832
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->requestClientId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 54834
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

    .line 55277
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedSerializedSize:I

    .line 55278
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    move v1, v0

    .line 55402
    .end local v0           #size:I
    .local v1, size:I
    :goto_d
    return v1

    .line 55280
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_e
    const/4 v0, 0x0

    .line 55281
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 55282
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55285
    :cond_1e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 55286
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55289
    :cond_2b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 55290
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55293
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 55294
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55297
    :cond_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v7, :cond_54

    .line 55298
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55301
    :cond_54
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 55302
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55305
    :cond_64
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_74

    .line 55306
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55309
    :cond_74
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_83

    .line 55310
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55313
    :cond_83
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_94

    .line 55314
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55317
    :cond_94
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a5

    .line 55318
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55321
    :cond_a5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b6

    .line 55322
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55325
    :cond_b6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c7

    .line 55326
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55329
    :cond_c7
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d8

    .line 55330
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55333
    :cond_d8
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e9

    .line 55334
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55337
    :cond_e9
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_fa

    .line 55338
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55341
    :cond_fa
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const v3, 0x8000

    and-int/2addr v2, v3

    const v3, 0x8000

    if-ne v2, v3, :cond_10c

    .line 55342
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-static {v7, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55345
    :cond_10c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_11e

    .line 55346
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55349
    :cond_11e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    const/high16 v3, 0x2

    if-ne v2, v3, :cond_130

    .line 55350
    const/16 v2, 0x12

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55353
    :cond_130
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    const/high16 v3, 0x4

    if-ne v2, v3, :cond_142

    .line 55354
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55357
    :cond_142
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    const/high16 v3, 0x8

    if-ne v2, v3, :cond_154

    .line 55358
    const/16 v2, 0x14

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55361
    :cond_154
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    const/high16 v3, 0x10

    if-ne v2, v3, :cond_166

    .line 55362
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55365
    :cond_166
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    const/high16 v3, 0x20

    if-ne v2, v3, :cond_178

    .line 55366
    const/16 v2, 0x16

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55369
    :cond_178
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_18a

    .line 55370
    const/16 v2, 0x17

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55373
    :cond_18a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    const/high16 v3, 0x80

    if-ne v2, v3, :cond_19c

    .line 55374
    const/16 v2, 0x18

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55377
    :cond_19c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_1ae

    .line 55378
    const/16 v2, 0x19

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55381
    :cond_1ae
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x200

    and-int/2addr v2, v3

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_1c0

    .line 55382
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55385
    :cond_1c0
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    const/high16 v3, 0x400

    if-ne v2, v3, :cond_1d2

    .line 55386
    const/16 v2, 0x1b

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55389
    :cond_1d2
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    const/high16 v3, 0x800

    if-ne v2, v3, :cond_1e4

    .line 55390
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55393
    :cond_1e4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000

    if-ne v2, v3, :cond_1f6

    .line 55394
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55397
    :cond_1f6
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    const/high16 v3, 0x2000

    if-ne v2, v3, :cond_208

    .line 55398
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55401
    :cond_208
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 55402
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_d
.end method

.method public getSetAclsResponse()Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;
    .registers 2

    .prologue
    .line 55026
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    return-object v0
.end method

.method public getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 55066
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getTileEventResponse()Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;
    .registers 2

    .prologue
    .line 54986
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    return-object v0
.end method

.method public getTypingResponse()Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;
    .registers 2

    .prologue
    .line 54876
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    return-object v0
.end method

.method public getUserCreationResponse()Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;
    .registers 2

    .prologue
    .line 54946
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    return-object v0
.end method

.method public getUserInfoResponse()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 55036
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public hasChatMessageResponse()Z
    .registers 3

    .prologue
    .line 54853
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55083
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54933
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 54993
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54973
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54893
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55043
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54913
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54953
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55053
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54903
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55073
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55123
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55103
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55113
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55093
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55133
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55003
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54963
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54923
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54883
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55013
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 54821
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55023
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55063
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54873
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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
    .line 54943
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55033
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

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

    .line 55173
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedIsInitialized:B

    .line 55174
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 55177
    :goto_8
    return v1

    .line 55174
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 55176
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54798
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 55480
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54798
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;
    .registers 2

    .prologue
    .line 55484
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse$Builder;

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
    .line 55409
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

    .line 55182
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSerializedSize()I

    .line 55183
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 55184
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getRequestClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 55186
    :cond_17
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 55187
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->chatMessageResponse_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessageResponse;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55189
    :cond_22
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 55190
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->presenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$PresenceResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55192
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 55193
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->typingResponse_:Lcom/google/wireless/realtimechat/proto/Client$TypingResponse;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55195
    :cond_39
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_45

    .line 55196
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->receiptResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55198
    :cond_45
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 55199
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55201
    :cond_53
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_61

    .line 55202
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSteamResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55204
    :cond_61
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6e

    .line 55205
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->deviceRegistrationResponse_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationResponse;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55207
    :cond_6e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7d

    .line 55208
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->pingResponse_:Lcom/google/wireless/realtimechat/proto/Client$PingResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55210
    :cond_7d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8c

    .line 55211
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationListResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationListResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55213
    :cond_8c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_9b

    .line 55214
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userCreationResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserCreationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55216
    :cond_9b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_aa

    .line 55217
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->error_:Lcom/google/wireless/realtimechat/proto/Client$Error;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55219
    :cond_aa
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_b9

    .line 55220
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->leaveConversationResponse_:Lcom/google/wireless/realtimechat/proto/Client$LeaveConversationResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55222
    :cond_b9
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_c8

    .line 55223
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationRenameResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55225
    :cond_c8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_d7

    .line 55226
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->tileEventResponse_:Lcom/google/wireless/realtimechat/proto/Client$TileEventResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55228
    :cond_d7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_e7

    .line 55229
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationPreferenceResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationPreferenceResponse;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55231
    :cond_e7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_f7

    .line 55232
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->inviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55234
    :cond_f7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_107

    .line 55235
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->replyToInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$ReplyToInviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55237
    :cond_107
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_117

    .line 55238
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->setAclsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55240
    :cond_117
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_127

    .line 55241
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->userInfoResponse_:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55243
    :cond_127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_137

    .line 55244
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55246
    :cond_137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_147

    .line 55247
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->eventSearchResponse_:Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55249
    :cond_147
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_157

    .line 55250
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->suggestionsResponse_:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55252
    :cond_157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_167

    .line 55253
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->globalConversationPreferencesResponse_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55255
    :cond_167
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_177

    .line 55256
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->conversationJoinResponse_:Lcom/google/wireless/realtimechat/proto/Client$ConversationJoinResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55258
    :cond_177
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_187

    .line 55259
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55261
    :cond_187
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_197

    .line 55262
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteKeepAliveResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55264
    :cond_197
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1a7

    .line 55265
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteReplyResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55267
    :cond_1a7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    if-ne v0, v1, :cond_1b7

    .line 55268
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutInviteFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55270
    :cond_1b7
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->bitField0_:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-ne v0, v1, :cond_1c7

    .line 55271
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hangoutRingFinishResponse_:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 55273
    :cond_1c7
    return-void
.end method
