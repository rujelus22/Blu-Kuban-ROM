.class public final Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37066
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37189
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37067
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->maybeForceBuilderInitialization()V

    .line 37068
    return-void
.end method

.method static synthetic access$51100()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37061
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 1

    .prologue
    .line 37073
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureConversationIsMutable()V
    .registers 3

    .prologue
    .line 37216
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 37217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37218
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37220
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37071
    return-void
.end method


# virtual methods
.method public addAllConversation(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 37283
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37284
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 37286
    return-object p0
.end method

.method public addConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37276
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37277
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37279
    return-object p0
.end method

.method public addConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37259
    if-nez p2, :cond_8

    .line 37260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37262
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37263
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37265
    return-object p0
.end method

.method public addConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 37269
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37270
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37272
    return-object p0
.end method

.method public addConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37249
    if-nez p1, :cond_8

    .line 37250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37252
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37253
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37255
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 3

    .prologue
    .line 37094
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    .line 37095
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37096
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37098
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 6

    .prologue
    .line 37112
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 37113
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37114
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37115
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37116
    or-int/lit8 v2, v2, 0x1

    .line 37118
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51302(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37119
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 37120
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37121
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37123
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51402(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 37124
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51502(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;I)I

    .line 37125
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37077
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37078
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37079
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37080
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37081
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37082
    return-object p0
.end method

.method public clearConversation()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37290
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37292
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 2

    .prologue
    .line 37206
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37207
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37209
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 3

    .prologue
    .line 37086
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

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
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(I)Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 37229
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    return-object v0
.end method

.method public getConversationCount()I
    .registers 2

    .prologue
    .line 37226
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37061
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;
    .registers 2

    .prologue
    .line 37090
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 37194
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37191
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

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
    .line 37147
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
    .line 37061
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37061
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

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
    .line 37061
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 37156
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_30

    .line 37161
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37163
    :sswitch_d
    return-object p0

    .line 37168
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 37169
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 37170
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 37171
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37172
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 37177
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;

    move-result-object v1

    .line 37178
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 37179
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->addConversation(Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    goto :goto_0

    .line 37156
    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 37129
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37143
    :cond_6
    :goto_6
    return-object p0

    .line 37130
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37131
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;

    .line 37133
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51400(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 37134
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 37135
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51400(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    .line 37136
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 37138
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37139
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->conversation_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;->access$51400(Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 37243
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37244
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$ClientConversation$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37246
    return-object p0
.end method

.method public setConversation(ILcom/google/wireless/realtimechat/proto/Client$ClientConversation;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 37233
    if-nez p2, :cond_8

    .line 37234
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37236
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->ensureConversationIsMutable()V

    .line 37237
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 37239
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 37197
    if-nez p1, :cond_8

    .line 37198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37200
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->bitField0_:I

    .line 37201
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ConversationSearchResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 37203
    return-object p0
.end method
