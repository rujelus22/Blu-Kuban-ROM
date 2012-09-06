.class public final Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRenameOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;",
        "Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRenameOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private newDisplayName_:Ljava/lang/Object;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;

.field private timestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14142
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14339
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14375
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14411
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14143
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->maybeForceBuilderInitialization()V

    .line 14144
    return-void
.end method

.method static synthetic access$18800()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 1

    .prologue
    .line 14137
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 1

    .prologue
    .line 14149
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 14413
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 14414
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14415
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14417
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14147
    return-void
.end method


# virtual methods
.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;"
        }
    .end annotation

    .prologue
    .line 14449
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->ensureRecipientIdIsMutable()V

    .line 14450
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14452
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14439
    if-nez p1, :cond_8

    .line 14440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14442
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->ensureRecipientIdIsMutable()V

    .line 14443
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 14445
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 3

    .prologue
    .line 14176
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    .line 14177
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14178
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14180
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 6

    .prologue
    .line 14194
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 14195
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14196
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14197
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14198
    or-int/lit8 v2, v2, 0x1

    .line 14200
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19002(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14201
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14202
    or-int/lit8 v2, v2, 0x2

    .line 14204
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19102(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14205
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14206
    or-int/lit8 v2, v2, 0x4

    .line 14208
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->newDisplayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19202(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14209
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 14210
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14212
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14214
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19302(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 14215
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 14216
    or-int/lit8 v2, v2, 0x8

    .line 14218
    :cond_51
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->timestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19402(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;J)J

    .line 14219
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19502(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;I)I

    .line 14220
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3

    .prologue
    .line 14153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14155
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14157
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14158
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14159
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14160
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14161
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    .line 14163
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14164
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14327
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14328
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14330
    return-object p0
.end method

.method public clearNewDisplayName()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14400
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14402
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14455
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14456
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14458
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 2

    .prologue
    .line 14363
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14364
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14366
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3

    .prologue
    .line 14481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14482
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    .line 14484
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3

    .prologue
    .line 14168
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

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
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14309
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14310
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14311
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14314
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14137
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;
    .registers 2

    .prologue
    .line 14172
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    return-object v0
.end method

.method public getNewDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14380
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14381
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14382
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14383
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14386
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

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 14426
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 14423
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14420
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14344
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14345
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14346
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14347
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14350
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

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 14472
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    return-wide v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14305
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNewDisplayName()Z
    .registers 3

    .prologue
    .line 14377
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 14341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 14469
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 14251
    const/4 v0, 0x1

    return v0
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
    .line 14137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14137
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

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
    .line 14137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 14260
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 14265
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14267
    :sswitch_d
    return-object p0

    .line 14272
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14273
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 14277
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14278
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 14282
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    goto :goto_0

    .line 14287
    :sswitch_35
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->ensureRecipientIdIsMutable()V

    .line 14288
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 14292
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    goto :goto_0

    .line 14260
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x28 -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 14224
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14247
    :cond_6
    :goto_6
    return-object p0

    .line 14225
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14226
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 14228
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14229
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 14231
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasNewDisplayName()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 14232
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getNewDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->setNewDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    .line 14234
    :cond_2e
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19300(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 14235
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 14236
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19300(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 14237
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14244
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14245
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;

    goto :goto_6

    .line 14239
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->ensureRecipientIdIsMutable()V

    .line 14240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;->access$19300(Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14318
    if-nez p1, :cond_8

    .line 14319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14321
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14322
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->conversationId_:Ljava/lang/Object;

    .line 14324
    return-object p0
.end method

.method public setNewDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14390
    if-nez p1, :cond_8

    .line 14391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14393
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14394
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 14396
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14430
    if-nez p2, :cond_8

    .line 14431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14433
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->ensureRecipientIdIsMutable()V

    .line 14434
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14436
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14354
    if-nez p1, :cond_8

    .line 14355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14357
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14358
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->senderId_:Ljava/lang/Object;

    .line 14360
    return-object p0
.end method

.method public setTimestamp(J)Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14475
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->bitField0_:I

    .line 14476
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GroupConversationRename$Builder;->timestamp_:J

    .line 14478
    return-object p0
.end method
