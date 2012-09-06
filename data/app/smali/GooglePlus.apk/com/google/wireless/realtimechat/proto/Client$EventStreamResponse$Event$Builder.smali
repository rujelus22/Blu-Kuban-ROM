.class public final Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$EventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

.field private groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

.field private membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

.field private migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

.field private receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

.field private receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

.field private tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26238
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26481
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26505
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26548
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26591
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26634
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26677
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26720
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26239
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->maybeForceBuilderInitialization()V

    .line 26240
    return-void
.end method

.method static synthetic access$35300()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 1

    .prologue
    .line 26233
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 1

    .prologue
    .line 26245
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26243
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 3

    .prologue
    .line 26278
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    .line 26279
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26280
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26282
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 6

    .prologue
    .line 26296
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;-><init>(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 26297
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26298
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26299
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26300
    or-int/lit8 v2, v2, 0x1

    .line 26302
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$35502(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;J)J

    .line 26303
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26304
    or-int/lit8 v2, v2, 0x2

    .line 26306
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$35602(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26307
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 26308
    or-int/lit8 v2, v2, 0x4

    .line 26310
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$35702(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26311
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 26312
    or-int/lit8 v2, v2, 0x8

    .line 26314
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$35802(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26315
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 26316
    or-int/lit8 v2, v2, 0x10

    .line 26318
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$35902(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26319
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 26320
    or-int/lit8 v2, v2, 0x20

    .line 26322
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$36002(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26323
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 26324
    or-int/lit8 v2, v2, 0x40

    .line 26326
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$36102(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26327
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 26328
    or-int/lit16 v2, v2, 0x80

    .line 26330
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$36202(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26331
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->access$36302(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;I)I

    .line 26332
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3

    .prologue
    .line 26249
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    .line 26251
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26252
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26253
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26254
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26256
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26257
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26258
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26259
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26260
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26261
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26262
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26263
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26264
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26265
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26266
    return-object p0
.end method

.method public clearChatMessage()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26541
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26543
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26544
    return-object p0
.end method

.method public clearGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26670
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26673
    return-object p0
.end method

.method public clearMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26627
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26629
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26630
    return-object p0
.end method

.method public clearMigration()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26713
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26715
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26716
    return-object p0
.end method

.method public clearReceipt()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26584
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26586
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26587
    return-object p0
.end method

.method public clearReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26498
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26499
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->UNKNOWN:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26501
    return-object p0
.end method

.method public clearTileEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 2

    .prologue
    .line 26756
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26758
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26759
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3

    .prologue
    .line 26474
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26475
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    .line 26477
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3

    .prologue
    .line 26270
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

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
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
    .registers 2

    .prologue
    .line 26510
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26233
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
    .registers 2

    .prologue
    .line 26274
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    return-object v0
.end method

.method public getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 26639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    return-object v0
.end method

.method public getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;
    .registers 2

    .prologue
    .line 26596
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    return-object v0
.end method

.method public getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;
    .registers 2

    .prologue
    .line 26682
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    return-object v0
.end method

.method public getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
    .registers 2

    .prologue
    .line 26553
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    return-object v0
.end method

.method public getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    .registers 2

    .prologue
    .line 26486
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    return-object v0
.end method

.method public getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;
    .registers 2

    .prologue
    .line 26725
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 26465
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasChatMessage()Z
    .registers 3

    .prologue
    .line 26507
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26636
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26679
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26550
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26483
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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
    .line 26722
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

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

    .line 26462
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 26365
    const/4 v0, 0x1

    return v0
.end method

.method public mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26531
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26537
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26538
    return-object p0

    .line 26534
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

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
    .line 26233
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26233
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

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
    .line 26233
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 26374
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_da

    .line 26379
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 26381
    :sswitch_d
    return-object p0

    .line 26386
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26387
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    goto :goto_0

    .line 26391
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    move-result-object v1

    .line 26392
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasChatMessage()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 26393
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;

    .line 26395
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26396
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto :goto_0

    .line 26400
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v1

    .line 26401
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasReceipt()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 26402
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    .line 26404
    :cond_48
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26405
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto :goto_0

    .line 26409
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v1

    .line 26410
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasMembershipChange()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 26411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    .line 26413
    :cond_64
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26414
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto :goto_0

    .line 26418
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;
    :sswitch_6f
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v1

    .line 26419
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasGroupConversationRename()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 26420
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 26422
    :cond_80
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26423
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto/16 :goto_0

    .line 26427
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    :sswitch_8c
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v1

    .line 26428
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasMigration()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 26429
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    .line 26431
    :cond_9d
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26432
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto/16 :goto_0

    .line 26436
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;
    :sswitch_a9
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v1

    .line 26437
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->hasTileEvent()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 26438
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    .line 26440
    :cond_ba
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26441
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto/16 :goto_0

    .line 26445
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;
    :sswitch_c6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 26446
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v3

    .line 26447
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;
    if-eqz v3, :cond_0

    .line 26448
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26449
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    goto/16 :goto_0

    .line 26374
    :sswitch_data_da
    .sparse-switch
        0x0 -> :sswitch_d
        0x10 -> :sswitch_e
        0x1a -> :sswitch_1b
        0x22 -> :sswitch_37
        0x2a -> :sswitch_53
        0x32 -> :sswitch_6f
        0x3a -> :sswitch_8c
        0x42 -> :sswitch_a9
        0x48 -> :sswitch_c6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 26336
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26361
    :cond_6
    :goto_6
    return-object p0

    .line 26337
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26338
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26340
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasReceiverState()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26341
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->setReceiverState(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26343
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 26344
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26346
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 26347
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26349
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 26350
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMembershipChange()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26352
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 26353
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getGroupConversationRename()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26355
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 26356
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getMigration()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    .line 26358
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26359
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;->getTileEvent()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;

    goto :goto_6
.end method

.method public mergeGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26660
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26666
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26667
    return-object p0

    .line 26663
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    goto :goto_20
.end method

.method public mergeMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26617
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26623
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26624
    return-object p0

    .line 26620
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    goto :goto_20
.end method

.method public mergeMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26701
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26703
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26709
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26710
    return-object p0

    .line 26706
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    goto :goto_20
.end method

.method public mergeReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26572
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26574
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26580
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26581
    return-object p0

    .line 26577
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    goto :goto_20
.end method

.method public mergeTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26744
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26746
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26752
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26753
    return-object p0

    .line 26749
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    goto :goto_20
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26523
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26525
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26526
    return-object p0
.end method

.method public setChatMessage(Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26513
    if-nez p1, :cond_8

    .line 26514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26516
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->chatMessage_:Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;

    .line 26518
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26519
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26652
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26654
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26655
    return-object p0
.end method

.method public setGroupConversationRename(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26642
    if-nez p1, :cond_8

    .line 26643
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26645
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->groupConversationRename_:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .line 26647
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26648
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26609
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26611
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26612
    return-object p0
.end method

.method public setMembershipChange(Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26599
    if-nez p1, :cond_8

    .line 26600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26602
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->membershipChange_:Lcom/google/wireless/realtimechat/proto/Client$MembershipChange;

    .line 26604
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26605
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26695
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Migration$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Migration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26697
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26698
    return-object p0
.end method

.method public setMigration(Lcom/google/wireless/realtimechat/proto/Client$Migration;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26685
    if-nez p1, :cond_8

    .line 26686
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26688
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->migration_:Lcom/google/wireless/realtimechat/proto/Client$Migration;

    .line 26690
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26691
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26566
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$Receipt$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26568
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26569
    return-object p0
.end method

.method public setReceipt(Lcom/google/wireless/realtimechat/proto/Client$Receipt;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26556
    if-nez p1, :cond_8

    .line 26557
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26559
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receipt_:Lcom/google/wireless/realtimechat/proto/Client$Receipt;

    .line 26561
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26562
    return-object p0
.end method

.method public setReceiverState(Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26489
    if-nez p1, :cond_8

    .line 26490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26492
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26493
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->receiverState_:Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$ReceiverState;

    .line 26495
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26738
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$TileEvent$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26740
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26741
    return-object p0
.end method

.method public setTileEvent(Lcom/google/wireless/realtimechat/proto/Client$TileEvent;)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26728
    if-nez p1, :cond_8

    .line 26729
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26731
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->tileEvent_:Lcom/google/wireless/realtimechat/proto/Client$TileEvent;

    .line 26733
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26734
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26468
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->bitField0_:I

    .line 26469
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event$Builder;->timestamp_:J

    .line 26471
    return-object p0
.end method
