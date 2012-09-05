.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private receiptInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;"
        }
    .end annotation
.end field

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10384
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10123
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->maybeForceBuilderInitialization()V

    .line 10124
    return-void
.end method

.method static synthetic access$13600()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 1

    .prologue
    .line 10117
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 1

    .prologue
    .line 10129
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureReceiptInfoIsMutable()V
    .registers 3

    .prologue
    .line 10298
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 10299
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10300
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10302
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10127
    return-void
.end method


# virtual methods
.method public addAllReceiptInfo(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 10365
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10366
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10368
    return-object p0
.end method

.method public addReceiptInfo(ILcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10358
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10359
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10361
    return-object p0
.end method

.method public addReceiptInfo(ILcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10341
    if-nez p2, :cond_8

    .line 10342
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10344
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10345
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10347
    return-object p0
.end method

.method public addReceiptInfo(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10351
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10352
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10354
    return-object p0
.end method

.method public addReceiptInfo(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10331
    if-nez p1, :cond_8

    .line 10332
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10334
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10335
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10337
    return-object p0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 3

    .prologue
    .line 10152
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    .line 10153
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10154
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10156
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 6

    .prologue
    .line 10170
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 10171
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10172
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10173
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10174
    or-int/lit8 v2, v2, 0x1

    .line 10176
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$13802(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10177
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 10178
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10179
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10181
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$13902(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Ljava/util/List;)Ljava/util/List;

    .line 10182
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 10183
    or-int/lit8 v2, v2, 0x2

    .line 10185
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$14002(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10186
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$14102(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;I)I

    .line 10187
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10133
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10135
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10137
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10138
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10140
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10283
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10284
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10286
    return-object p0
.end method

.method public clearReceiptInfo()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10372
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10374
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 2

    .prologue
    .line 10420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10422
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10423
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3

    .prologue
    .line 10144
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

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
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10264
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10265
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10267
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10270
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
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10117
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;
    .registers 2

    .prologue
    .line 10148
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    return-object v0
.end method

.method public getReceiptInfo(I)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 10311
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    return-object v0
.end method

.method public getReceiptInfoCount()I
    .registers 2

    .prologue
    .line 10308
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReceiptInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10305
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 10389
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10261
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 10386
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

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
    .line 10117
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

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
    .line 10117
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10221
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_46

    .line 10226
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10228
    :sswitch_d
    return-object p0

    .line 10233
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10234
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 10238
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;

    move-result-object v0

    .line 10239
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10240
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->addReceiptInfo(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    goto :goto_0

    .line 10244
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    .line 10245
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->hasStubbyInfo()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 10246
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 10248
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10249
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    goto :goto_0

    .line 10221
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10191
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10208
    :cond_6
    :goto_6
    return-object p0

    .line 10192
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10193
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    .line 10195
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$13900(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 10196
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 10197
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$13900(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    .line 10198
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10205
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10206
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;

    goto :goto_6

    .line 10200
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10201
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->receiptInfo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;->access$13900(Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 10408
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 10410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10416
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10417
    return-object p0

    .line 10413
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_1f
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10274
    if-nez p1, :cond_8

    .line 10275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10277
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10278
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 10280
    return-object p0
.end method

.method public setReceiptInfo(ILcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10325
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10326
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10328
    return-object p0
.end method

.method public setReceiptInfo(ILcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10315
    if-nez p2, :cond_8

    .line 10316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10318
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->ensureReceiptInfoIsMutable()V

    .line 10319
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->receiptInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10321
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 10402
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10404
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10405
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10392
    if-nez p1, :cond_8

    .line 10393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10395
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 10397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$Builder;->bitField0_:I

    .line 10398
    return-object p0
.end method
