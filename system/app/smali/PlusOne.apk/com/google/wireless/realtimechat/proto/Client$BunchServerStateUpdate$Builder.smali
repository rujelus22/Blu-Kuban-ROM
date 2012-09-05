.class public final Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

.field private membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

.field private presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57651
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 57913
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57956
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57999
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58042
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58085
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58128
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58171
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58214
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58257
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58300
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 57652
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->maybeForceBuilderInitialization()V

    .line 57653
    return-void
.end method

.method static synthetic access$78200()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 1

    .prologue
    .line 57646
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 1

    .prologue
    .line 57658
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 57656
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 3

    .prologue
    .line 57695
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    .line 57696
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 57697
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 57699
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 6

    .prologue
    .line 57713
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 57714
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57715
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 57716
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 57717
    or-int/lit8 v2, v2, 0x1

    .line 57719
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57720
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 57721
    or-int/lit8 v2, v2, 0x2

    .line 57723
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57724
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 57725
    or-int/lit8 v2, v2, 0x4

    .line 57727
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 57728
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 57729
    or-int/lit8 v2, v2, 0x8

    .line 57731
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 57732
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 57733
    or-int/lit8 v2, v2, 0x10

    .line 57735
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 57736
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 57737
    or-int/lit8 v2, v2, 0x20

    .line 57739
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$78902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 57740
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 57741
    or-int/lit8 v2, v2, 0x40

    .line 57743
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 57744
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 57745
    or-int/lit16 v2, v2, 0x80

    .line 57747
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 57748
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 57749
    or-int/lit16 v2, v2, 0x100

    .line 57751
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 57752
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 57753
    or-int/lit16 v2, v2, 0x200

    .line 57755
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 57756
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;I)I

    .line 57757
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 57662
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 57663
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57664
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57665
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57666
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57667
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 57668
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57669
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 57670
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57671
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 57672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57673
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 57674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57675
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 57676
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 57678
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57679
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 57680
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57681
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 57682
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57683
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 57949
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57951
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57952
    return-object p0
.end method

.method public clearGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58164
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58166
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58167
    return-object p0
.end method

.method public clearInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58293
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58296
    return-object p0
.end method

.method public clearMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58121
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58123
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58124
    return-object p0
.end method

.method public clearMigration()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58250
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58252
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58253
    return-object p0
.end method

.method public clearNewConversation()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58336
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58338
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58339
    return-object p0
.end method

.method public clearPresence()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 57992
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57994
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57995
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58078
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58081
    return-object p0
.end method

.method public clearTileEvent()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58207
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58209
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58210
    return-object p0
.end method

.method public clearTyping()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58035
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58037
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58038
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3

    .prologue
    .line 57687
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

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
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 57918
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 57646
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 2

    .prologue
    .line 57691
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 58133
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 58262
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 58090
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 58219
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2

    .prologue
    .line 58305
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 57961
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 58047
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 58176
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 58004
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57915
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasGroupConversationRename()Z
    .registers 3

    .prologue
    .line 58130
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58259
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58087
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58216
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58302
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 57958
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58173
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57937
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 57939
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57945
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57946
    return-object p0

    .line 57942
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

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
    .line 57646
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

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
    .line 57646
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57804
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 57805
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_12c

    .line 57810
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57812
    :sswitch_d
    return-object p0

    .line 57817
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 57818
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 57819
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 57821
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57822
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 57826
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    .line 57827
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasPresence()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 57828
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 57830
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57831
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 57835
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    .line 57836
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasTyping()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 57837
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 57839
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57840
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 57844
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    .line 57845
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasReceipt()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 57846
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 57848
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57849
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 57853
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_7e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    .line 57854
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasMembershipChange()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 57855
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 57857
    :cond_8f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57858
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57862
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    :sswitch_9b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    .line 57863
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasGroupConversationRename()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 57864
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 57866
    :cond_ac
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57867
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57871
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    :sswitch_b8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    .line 57872
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasTileEvent()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 57873
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 57875
    :cond_c9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57876
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57880
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    :sswitch_d5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    .line 57881
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasMigration()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 57882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 57884
    :cond_e6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57885
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57889
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    :sswitch_f2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    .line 57890
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasInvalidateLocalCache()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 57891
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    .line 57893
    :cond_103
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57894
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57898
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    :sswitch_10f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    .line 57899
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasNewConversation()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 57900
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    .line 57902
    :cond_120
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 57903
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 57805
    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x22 -> :sswitch_62
        0x2a -> :sswitch_7e
        0x32 -> :sswitch_9b
        0x3a -> :sswitch_b8
        0x42 -> :sswitch_d5
        0x4a -> :sswitch_f2
        0x52 -> :sswitch_10f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 57761
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 57792
    :cond_6
    :goto_6
    return-object p0

    .line 57762
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57763
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57765
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 57766
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57768
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 57769
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57771
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 57772
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57774
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 57775
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57777
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 57778
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57780
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 57781
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57783
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 57784
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57786
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 57787
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 57789
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasNewConversation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57790
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_6
.end method

.method public mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58152
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58154
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58160
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58161
    return-object p0

    .line 58157
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    goto :goto_20
.end method

.method public mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58281
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58283
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58289
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58290
    return-object p0

    .line 58286
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    goto :goto_20
.end method

.method public mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58109
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58111
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58117
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58118
    return-object p0

    .line 58114
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    goto :goto_20
.end method

.method public mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58238
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58246
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58247
    return-object p0

    .line 58243
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    goto :goto_20
.end method

.method public mergeNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58324
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58326
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58332
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58333
    return-object p0

    .line 58329
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    goto :goto_20
.end method

.method public mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 57980
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 57982
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57988
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57989
    return-object p0

    .line 57985
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    goto :goto_1f
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58066
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58068
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58074
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58075
    return-object p0

    .line 58071
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58195
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58197
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58203
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58204
    return-object p0

    .line 58200
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    goto :goto_20
.end method

.method public mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58023
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 58025
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58031
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58032
    return-object p0

    .line 58028
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    goto :goto_1f
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 57931
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57933
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57934
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 57921
    if-nez p1, :cond_8

    .line 57922
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57924
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 57926
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57927
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58146
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58148
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58149
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58136
    if-nez p1, :cond_8

    .line 58137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58139
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58141
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58142
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58275
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58277
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58278
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58265
    if-nez p1, :cond_8

    .line 58266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58268
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58270
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58271
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58103
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58105
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58106
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58093
    if-nez p1, :cond_8

    .line 58094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58096
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58098
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58099
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58232
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58234
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58235
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58222
    if-nez p1, :cond_8

    .line 58223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58225
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58227
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58228
    return-object p0
.end method

.method public setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58318
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58320
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58321
    return-object p0
.end method

.method public setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58308
    if-nez p1, :cond_8

    .line 58309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58311
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58313
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58314
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 57974
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57976
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57977
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 57964
    if-nez p1, :cond_8

    .line 57965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57967
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 57969
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 57970
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58060
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58062
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58063
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58050
    if-nez p1, :cond_8

    .line 58051
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58053
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58055
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58056
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58189
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58191
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58192
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58179
    if-nez p1, :cond_8

    .line 58180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58182
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58184
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58185
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58017
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58019
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58020
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58007
    if-nez p1, :cond_8

    .line 58008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58010
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58012
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58013
    return-object p0
.end method
