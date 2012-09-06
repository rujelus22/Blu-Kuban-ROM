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

.field private eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

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
    .line 58155
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 58435
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58478
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58521
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58564
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58607
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58650
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58693
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58736
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58779
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58822
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58865
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58156
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->maybeForceBuilderInitialization()V

    .line 58157
    return-void
.end method

.method static synthetic access$78900()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 1

    .prologue
    .line 58150
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 1

    .prologue
    .line 58162
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 58160
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 3

    .prologue
    .line 58201
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    .line 58202
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 58203
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 58205
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 6

    .prologue
    .line 58219
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;-><init>(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 58220
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58221
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 58222
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 58223
    or-int/lit8 v2, v2, 0x1

    .line 58225
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58226
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 58227
    or-int/lit8 v2, v2, 0x2

    .line 58229
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58230
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 58231
    or-int/lit8 v2, v2, 0x4

    .line 58233
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79302(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58234
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 58235
    or-int/lit8 v2, v2, 0x8

    .line 58237
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79402(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58238
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 58239
    or-int/lit8 v2, v2, 0x10

    .line 58241
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79502(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58242
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 58243
    or-int/lit8 v2, v2, 0x20

    .line 58245
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79602(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58246
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 58247
    or-int/lit8 v2, v2, 0x40

    .line 58249
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79702(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58250
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 58251
    or-int/lit16 v2, v2, 0x80

    .line 58253
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79802(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58254
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 58255
    or-int/lit16 v2, v2, 0x100

    .line 58257
    :cond_76
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$79902(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58258
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 58259
    or-int/lit16 v2, v2, 0x200

    .line 58261
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$80002(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58262
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 58263
    or-int/lit16 v2, v2, 0x400

    .line 58265
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$80102(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58266
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->access$80202(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;I)I

    .line 58267
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58166
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 58167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58168
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58169
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58170
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58171
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58172
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58173
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58174
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58175
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58176
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58177
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58178
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58179
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58180
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58181
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58182
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58183
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58184
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58185
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58186
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58187
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58188
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58189
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58471
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58473
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58474
    return-object p0
.end method

.method public clearEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58901
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58903
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58904
    return-object p0
.end method

.method public clearGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58686
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58688
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58689
    return-object p0
.end method

.method public clearInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58815
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58817
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58818
    return-object p0
.end method

.method public clearMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58643
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58645
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58646
    return-object p0
.end method

.method public clearMigration()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58772
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58775
    return-object p0
.end method

.method public clearNewConversation()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58858
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58860
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58861
    return-object p0
.end method

.method public clearPresence()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58514
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58516
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58517
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58600
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58602
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58603
    return-object p0
.end method

.method public clearTileEvent()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58729
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58732
    return-object p0
.end method

.method public clearTyping()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 2

    .prologue
    .line 58557
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58559
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58560
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3

    .prologue
    .line 58193
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
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 58440
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 58150
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
    .registers 2

    .prologue
    .line 58197
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;
    .registers 2

    .prologue
    .line 58870
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 58655
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;
    .registers 2

    .prologue
    .line 58784
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 58612
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 58741
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;
    .registers 2

    .prologue
    .line 58827
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    return-object v0
.end method

.method public getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;
    .registers 2

    .prologue
    .line 58483
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 58569
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 58698
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;
    .registers 2

    .prologue
    .line 58526
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    return-object v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 58437
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58867
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

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
    .line 58652
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
    .line 58781
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
    .line 58609
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
    .line 58738
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
    .line 58824
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
    .line 58480
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
    .line 58566
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
    .line 58695
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
    .line 58523
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 58309
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58459
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 58461
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58467
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58468
    return-object p0

    .line 58464
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    goto :goto_1f
.end method

.method public mergeEventMetadata(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58891
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58897
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58898
    return-object p0

    .line 58894
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

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
    .line 58150
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 58150
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

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
    .line 58150
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
    .line 58317
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 58318
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_14a

    .line 58323
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58325
    :sswitch_d
    return-object p0

    .line 58330
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    .line 58331
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasChatMessage()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 58332
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 58334
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58335
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 58339
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    .line 58340
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasPresence()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 58341
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    .line 58343
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58344
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 58348
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    .line 58349
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasTyping()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 58350
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    .line 58352
    :cond_57
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58353
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 58357
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    .line 58358
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasReceipt()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 58359
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 58361
    :cond_73
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58362
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto :goto_0

    .line 58366
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_7e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    .line 58367
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasMembershipChange()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 58368
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 58370
    :cond_8f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58371
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58375
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    :sswitch_9b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    .line 58376
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasGroupConversationRename()Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 58377
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 58379
    :cond_ac
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58380
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58384
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    :sswitch_b8
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    .line 58385
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasTileEvent()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 58386
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 58388
    :cond_c9
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58389
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58393
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    :sswitch_d5
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    .line 58394
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasMigration()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 58395
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 58397
    :cond_e6
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58398
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58402
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    :sswitch_f2
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    .line 58403
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasInvalidateLocalCache()Z

    move-result v2

    if-eqz v2, :cond_103

    .line 58404
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    .line 58406
    :cond_103
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58407
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58411
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;
    :sswitch_10f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    .line 58412
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasNewConversation()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 58413
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    .line 58415
    :cond_120
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58416
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58420
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;
    :sswitch_12c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    move-result-object v0

    .line 58421
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->hasEventMetadata()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 58422
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;

    .line 58424
    :cond_13d
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 58425
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->setEventMetadata(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_0

    .line 58318
    nop

    :sswitch_data_14a
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
        0x5a -> :sswitch_12c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 58271
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 58305
    :cond_6
    :goto_6
    return-object p0

    .line 58272
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58273
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58275
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 58276
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getPresence()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58278
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 58279
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTyping()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58281
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 58282
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58284
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 58285
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58287
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 58288
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58290
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 58291
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58293
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 58294
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58296
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 58297
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getInvalidateLocalCache()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58299
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasNewConversation()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 58300
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getNewConversation()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    .line 58302
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->hasEventMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58303
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;->getEventMetadata()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->mergeEventMetadata(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;

    goto/16 :goto_6
.end method

.method public mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58674
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58676
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58682
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58683
    return-object p0

    .line 58679
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    goto :goto_20
.end method

.method public mergeInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58803
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58805
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58811
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58812
    return-object p0

    .line 58808
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    goto :goto_20
.end method

.method public mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58631
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58633
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58639
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58640
    return-object p0

    .line 58636
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    goto :goto_20
.end method

.method public mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58760
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58762
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58768
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58769
    return-object p0

    .line 58765
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    goto :goto_20
.end method

.method public mergeNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58846
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58848
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58854
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58855
    return-object p0

    .line 58851
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    goto :goto_20
.end method

.method public mergePresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58502
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 58504
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58510
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58511
    return-object p0

    .line 58507
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    goto :goto_1f
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58588
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58590
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58596
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58597
    return-object p0

    .line 58593
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58717
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 58719
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58725
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58726
    return-object p0

    .line 58722
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    goto :goto_20
.end method

.method public mergeTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 58545
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 58547
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58553
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58554
    return-object p0

    .line 58550
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    goto :goto_1f
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58453
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58455
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58456
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58443
    if-nez p1, :cond_8

    .line 58444
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58446
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 58448
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58449
    return-object p0
.end method

.method public setEventMetadata(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58883
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58886
    return-object p0
.end method

.method public setEventMetadata(Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58873
    if-nez p1, :cond_8

    .line 58874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58876
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->eventMetadata_:Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$EventMetadata;

    .line 58878
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58879
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58668
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58670
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58671
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58658
    if-nez p1, :cond_8

    .line 58659
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58661
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 58663
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58664
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58797
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58800
    return-object p0
.end method

.method public setInvalidateLocalCache(Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58787
    if-nez p1, :cond_8

    .line 58788
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58790
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->invalidateLocalCache_:Lcom/google/wireless/realtimechat/proto/Client$InvalidateLocalCache;

    .line 58792
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58793
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58625
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58627
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58628
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58615
    if-nez p1, :cond_8

    .line 58616
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58618
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 58620
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58621
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58754
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58756
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58757
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58744
    if-nez p1, :cond_8

    .line 58745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58747
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 58749
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58750
    return-object p0
.end method

.method public setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58840
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$NewConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58843
    return-object p0
.end method

.method public setNewConversation(Lcom/google/wireless/realtimechat/proto/Client$NewConversation;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58830
    if-nez p1, :cond_8

    .line 58831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58833
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->newConversation_:Lcom/google/wireless/realtimechat/proto/Client$NewConversation;

    .line 58835
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58836
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58496
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Presence$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Presence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58498
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58499
    return-object p0
.end method

.method public setPresence(Lcom/google/wireless/realtimechat/proto/Client$Presence;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58486
    if-nez p1, :cond_8

    .line 58487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58489
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->presence_:Lcom/google/wireless/realtimechat/proto/Client$Presence;

    .line 58491
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58492
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58582
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58584
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58585
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58572
    if-nez p1, :cond_8

    .line 58573
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58575
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 58577
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58578
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58711
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58713
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58714
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58701
    if-nez p1, :cond_8

    .line 58702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58704
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 58706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58707
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 58539
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Typing;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58541
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58542
    return-object p0
.end method

.method public setTyping(Lcom/google/wireless/realtimechat/proto/Client$Typing;)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 58529
    if-nez p1, :cond_8

    .line 58530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58532
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->typing_:Lcom/google/wireless/realtimechat/proto/Client$Typing;

    .line 58534
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate$Builder;->bitField0_:I

    .line 58535
    return-object p0
.end method
