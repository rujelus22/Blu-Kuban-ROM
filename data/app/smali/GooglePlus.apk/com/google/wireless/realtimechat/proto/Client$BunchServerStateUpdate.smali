.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BunchServerStateUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;,
        Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadataOrBuilder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

.field private groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

.field private membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

.field private presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58911
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    .line 58912
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->initFields()V

    .line 58913
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 57454
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 57968
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedIsInitialized:B

    .line 58015
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedSerializedSize:I

    .line 57455
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 57456
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 57968
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedIsInitialized:B

    .line 58015
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedSerializedSize:I

    .line 57456
    return-void
.end method

.method static synthetic access$79102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object p1
.end method

.method static synthetic access$79202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object p1
.end method

.method static synthetic access$79302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object p1
.end method

.method static synthetic access$79402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object p1
.end method

.method static synthetic access$79502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object p1
.end method

.method static synthetic access$79602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object p1
.end method

.method static synthetic access$79702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object p1
.end method

.method static synthetic access$79802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object p1
.end method

.method static synthetic access$79902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object p1
.end method

.method static synthetic access$80002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object p1
.end method

.method static synthetic access$80102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    return-object p1
.end method

.method static synthetic access$80202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57449
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 1

    .prologue
    .line 57460
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 57956
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57957
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57958
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 57959
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 57960
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 57961
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 57962
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 57963
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 57964
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 57965
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 57966
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 57967
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 1

    .prologue
    .line 58143
    #calls: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->access$78900()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 58146
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 57852
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57449
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 2

    .prologue
    .line 57464
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    return-object v0
.end method

.method public getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 2

    .prologue
    .line 57952
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 57902
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 57932
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 57892
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 57922
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2

    .prologue
    .line 57942
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 57862
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 57882
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 58017
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedSerializedSize:I

    .line 58018
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 58066
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 58020
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 58021
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 58022
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58025
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 58026
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58029
    :cond_27
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 58030
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58033
    :cond_35
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_42

    .line 58034
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58037
    :cond_42
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 58038
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58041
    :cond_52
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 58042
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58045
    :cond_62
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_72

    .line 58046
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58049
    :cond_72
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_81

    .line 58050
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58053
    :cond_81
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_92

    .line 58054
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58057
    :cond_92
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a3

    .line 58058
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58061
    :cond_a3
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b4

    .line 58062
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 58065
    :cond_b4
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedSerializedSize:I

    move v1, v0

    .line 58066
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 57912
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 57872
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57849
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEventMetadata()Z
    .registers 3

    .prologue
    .line 57949
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasGroupConversationRename()Z
    .registers 3

    .prologue
    .line 57899
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasInvalidateLocalCache()Z
    .registers 3

    .prologue
    .line 57929
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasMembershipChange()Z
    .registers 3

    .prologue
    .line 57889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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
    .line 57919
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasNewConversation()Z
    .registers 3

    .prologue
    .line 57939
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasPresence()Z
    .registers 3

    .prologue
    .line 57859
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasReceipt()Z
    .registers 3

    .prologue
    .line 57879
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasTileEvent()Z
    .registers 3

    .prologue
    .line 57909
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public hasTyping()Z
    .registers 3

    .prologue
    .line 57869
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 57970
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedIsInitialized:B

    .line 57971
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 57974
    :goto_8
    return v1

    .line 57971
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 57973
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57449
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58144
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57449
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58148
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

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
    .line 58073
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

    const/4 v1, 0x1

    .line 57979
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getSerializedSize()I

    .line 57980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 57981
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57983
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 57984
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57986
    :cond_1e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 57987
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57989
    :cond_2a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_35

    .line 57990
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57992
    :cond_35
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 57993
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57995
    :cond_43
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 57996
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 57998
    :cond_51
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5f

    .line 57999
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58001
    :cond_5f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6c

    .line 58002
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58004
    :cond_6c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7b

    .line 58005
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58007
    :cond_7b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8a

    .line 58008
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58010
    :cond_8a
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_99

    .line 58011
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 58013
    :cond_99
    return-void
.end method
