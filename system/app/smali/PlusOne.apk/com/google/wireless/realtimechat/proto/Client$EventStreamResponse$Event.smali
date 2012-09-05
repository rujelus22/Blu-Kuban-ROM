.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

.field private tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26766
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .line 26767
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->initFields()V

    .line 26768
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25968
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26072
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedIsInitialized:B

    .line 26110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedSerializedSize:I

    .line 25969
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25970
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26072
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedIsInitialized:B

    .line 26110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedSerializedSize:I

    .line 25970
    return-void
.end method

.method static synthetic access$35502(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$35602(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    return-object p1
.end method

.method static synthetic access$35702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$35802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object p1
.end method

.method static synthetic access$35902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object p1
.end method

.method static synthetic access$36002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object p1
.end method

.method static synthetic access$36102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object p1
.end method

.method static synthetic access$36202(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object p1
.end method

.method static synthetic access$36302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25963
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 1

    .prologue
    .line 25974
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 26063
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J

    .line 26064
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26065
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26066
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26067
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26068
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26069
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26070
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26071
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 1

    .prologue
    .line 26226
    #calls: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->access$35300()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26229
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 26009
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25963
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 2

    .prologue
    .line 25978
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 26039
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 26029
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 26049
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 26019
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    .registers 2

    .prologue
    .line 25999
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 26112
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedSerializedSize:I

    .line 26113
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    move v1, v0

    .line 26149
    .end local v0           #size:I
    .local v1, size:I
    :goto_a
    return v1

    .line 26115
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_b
    const/4 v0, 0x0

    .line 26116
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 26117
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 26120
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_28

    .line 26121
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26124
    :cond_28
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_35

    .line 26125
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26128
    :cond_35
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_45

    .line 26129
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26132
    :cond_45
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_55

    .line 26133
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26136
    :cond_55
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_65

    .line 26137
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26140
    :cond_65
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_74

    .line 26141
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26144
    :cond_74
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_87

    .line 26145
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26148
    :cond_87
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedSerializedSize:I

    move v1, v0

    .line 26149
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_a
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 26059
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 25989
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J

    return-wide v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 26006
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasGroupConversationRename()Z
    .registers 3

    .prologue
    .line 26036
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasMembershipChange()Z
    .registers 3

    .prologue
    .line 26026
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasMigration()Z
    .registers 3

    .prologue
    .line 26046
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasReceipt()Z
    .registers 3

    .prologue
    .line 26016
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasReceiverState()Z
    .registers 3

    .prologue
    .line 25996
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasTileEvent()Z
    .registers 3

    .prologue
    .line 26056
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25986
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 26074
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedIsInitialized:B

    .line 26075
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 26078
    :goto_8
    return v1

    .line 26075
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 26077
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->memoizedIsInitialized:B

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
    .line 26156
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 26083
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getSerializedSize()I

    .line 26084
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 26085
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 26087
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_1f

    .line 26088
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26090
    :cond_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_2a

    .line 26091
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26093
    :cond_2a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_38

    .line 26094
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26096
    :cond_38
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_46

    .line 26097
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26099
    :cond_46
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_54

    .line 26100
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26102
    :cond_54
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_61

    .line 26103
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26105
    :cond_61
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_72

    .line 26106
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 26108
    :cond_72
    return-void
.end method
