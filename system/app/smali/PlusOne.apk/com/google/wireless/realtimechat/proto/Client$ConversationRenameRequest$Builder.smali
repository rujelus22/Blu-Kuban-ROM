.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private newDisplayName_:Ljava/lang/Object;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13330
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13366
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13422
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13144
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->maybeForceBuilderInitialization()V

    .line 13145
    return-void
.end method

.method static synthetic access$17400()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 1

    .prologue
    .line 13138
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 1

    .prologue
    .line 13150
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 13368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 13369
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13370
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13372
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13148
    return-void
.end method


# virtual methods
.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 13404
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->ensureRecipientIdIsMutable()V

    .line 13405
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 13407
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13394
    if-nez p1, :cond_8

    .line 13395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13397
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->ensureRecipientIdIsMutable()V

    .line 13398
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 13400
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 3

    .prologue
    .line 13175
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    .line 13176
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 13177
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 13179
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 6

    .prologue
    .line 13193
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 13194
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13195
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13196
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13197
    or-int/lit8 v2, v2, 0x1

    .line 13199
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17602(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13200
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13201
    or-int/lit8 v2, v2, 0x2

    .line 13203
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->newDisplayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17702(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13204
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 13205
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13207
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13209
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17802(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 13210
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 13211
    or-int/lit8 v2, v2, 0x4

    .line 13213
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17902(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13214
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$18002(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;I)I

    .line 13215
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2

    .prologue
    .line 13154
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13158
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13159
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13160
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13161
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13162
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13163
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2

    .prologue
    .line 13318
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13319
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13321
    return-object p0
.end method

.method public clearNewDisplayName()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2

    .prologue
    .line 13354
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13355
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getNewDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13357
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2

    .prologue
    .line 13410
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13411
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13413
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 2

    .prologue
    .line 13458
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13460
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13461
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3

    .prologue
    .line 13167
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

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
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13299
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13300
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13301
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13302
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13305
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
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13138
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;
    .registers 2

    .prologue
    .line 13171
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNewDisplayName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13335
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13336
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13337
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13338
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13341
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
    .line 13381
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 13378
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

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
    .line 13375
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 13427
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13296
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

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
    .line 13332
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 13424
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

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
    .line 13138
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

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
    .line 13138
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13251
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13252
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 13257
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13259
    :sswitch_d
    return-object p0

    .line 13264
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13265
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 13269
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13270
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    goto :goto_0

    .line 13274
    :sswitch_28
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->ensureRecipientIdIsMutable()V

    .line 13275
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 13279
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 13280
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 13281
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 13283
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 13284
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    goto :goto_0

    .line 13252
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 13219
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13239
    :cond_6
    :goto_6
    return-object p0

    .line 13220
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13221
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 13223
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->hasNewDisplayName()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13224
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getNewDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->setNewDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    .line 13226
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17800(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 13227
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 13228
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17800(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 13229
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13236
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13237
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;

    goto :goto_6

    .line 13231
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->ensureRecipientIdIsMutable()V

    .line 13232
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;->access$17800(Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13446
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 13448
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13454
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13455
    return-object p0

    .line 13451
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13309
    if-nez p1, :cond_8

    .line 13310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13312
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13313
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 13315
    return-object p0
.end method

.method public setNewDisplayName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13345
    if-nez p1, :cond_8

    .line 13346
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13348
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13349
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->newDisplayName_:Ljava/lang/Object;

    .line 13351
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 13385
    if-nez p2, :cond_8

    .line 13386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13388
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->ensureRecipientIdIsMutable()V

    .line 13389
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 13391
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 13440
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13442
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13443
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13430
    if-nez p1, :cond_8

    .line 13431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13433
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 13435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequest$Builder;->bitField0_:I

    .line 13436
    return-object p0
.end method
