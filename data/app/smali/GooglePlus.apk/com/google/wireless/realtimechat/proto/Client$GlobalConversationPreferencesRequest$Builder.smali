.class public final Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

.field private tagModification_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22074
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22283
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 22307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22396
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22439
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22075
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 22076
    return-void
.end method

.method static synthetic access$29600()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 1

    .prologue
    .line 22069
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 1

    .prologue
    .line 22081
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTagModificationIsMutable()V
    .registers 3

    .prologue
    .line 22310
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 22311
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22312
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22314
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 22079
    return-void
.end method


# virtual methods
.method public addAllTagModification(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 22377
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22378
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 22380
    return-object p0
.end method

.method public addTagModification(ILcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 22370
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22371
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22373
    return-object p0
.end method

.method public addTagModification(ILcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 22353
    if-nez p2, :cond_8

    .line 22354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22356
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22357
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 22359
    return-object p0
.end method

.method public addTagModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 22363
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22364
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22366
    return-object p0
.end method

.method public addTagModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22343
    if-nez p1, :cond_8

    .line 22344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22346
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22347
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22349
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 3

    .prologue
    .line 22108
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    .line 22109
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 22110
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 22112
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 6

    .prologue
    .line 22126
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 22127
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22128
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 22129
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 22130
    or-int/lit8 v2, v2, 0x1

    .line 22132
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->conversationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$29802(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22133
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 22134
    or-int/lit8 v2, v2, 0x2

    .line 22136
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$29902(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 22137
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 22138
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22139
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22141
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30002(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Ljava/util/List;)Ljava/util/List;

    .line 22142
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 22143
    or-int/lit8 v2, v2, 0x4

    .line 22145
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30102(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22146
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 22147
    or-int/lit8 v2, v2, 0x8

    .line 22149
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30202(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22150
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30302(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;I)I

    .line 22151
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22085
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 22086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22087
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22088
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 22089
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22090
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22091
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22092
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22093
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22094
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22095
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22096
    return-object p0
.end method

.method public clearConversationId()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22271
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22272
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22274
    return-object p0
.end method

.method public clearLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22432
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22434
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22435
    return-object p0
.end method

.method public clearStubbyInfo()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22475
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22477
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22478
    return-object p0
.end method

.method public clearTagModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22384
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22386
    return-object p0
.end method

.method public clearVisibilityModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 2

    .prologue
    .line 22300
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22301
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 22303
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3

    .prologue
    .line 22100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

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
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22252
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22253
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22254
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22255
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22258
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
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22069
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;
    .registers 2

    .prologue
    .line 22104
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;
    .registers 2

    .prologue
    .line 22401
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    return-object v0
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 22444
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public getTagModification(I)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;
    .registers 3
    .parameter "index"

    .prologue
    .line 22323
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    return-object v0
.end method

.method public getTagModificationCount()I
    .registers 2

    .prologue
    .line 22320
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagModificationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22317
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityModification()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2

    .prologue
    .line 22288
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22249
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLocationModification()Z
    .registers 3

    .prologue
    .line 22398
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

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

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 22441
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

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

.method public hasVisibilityModification()Z
    .registers 3

    .prologue
    .line 22285
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 22182
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
    .line 22069
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22069
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

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
    .line 22069
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 22191
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_76

    .line 22196
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 22198
    :sswitch_d
    return-object p0

    .line 22203
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22204
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    goto :goto_0

    .line 22208
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 22209
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    move-result-object v3

    .line 22210
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    if-eqz v3, :cond_0

    .line 22211
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22212
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    goto :goto_0

    .line 22217
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;

    move-result-object v1

    .line 22218
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22219
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->addTagModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    goto :goto_0

    .line 22223
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;
    :sswitch_3d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v1

    .line 22224
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->hasLocationModification()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 22225
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->getLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    .line 22227
    :cond_4e
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22228
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->setLocationModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    goto :goto_0

    .line 22232
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;
    :sswitch_59
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v1

    .line 22233
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->hasStubbyInfo()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 22234
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 22236
    :cond_6a
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 22237
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    goto :goto_0

    .line 22191
    nop

    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3d
        0x2a -> :sswitch_59
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 22155
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22178
    :cond_6
    :goto_6
    return-object p0

    .line 22156
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->hasConversationId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22157
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 22159
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->hasVisibilityModification()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 22160
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getVisibilityModification()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->setVisibilityModification(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 22162
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30000(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 22163
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 22164
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30000(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    .line 22165
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22172
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->hasLocationModification()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 22173
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getLocationModification()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeLocationModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    .line 22175
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->hasStubbyInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22176
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;

    goto :goto_6

    .line 22167
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22168
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->tagModification_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;->access$30000(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeLocationModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22420
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 22422
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22428
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22429
    return-object p0

    .line 22425
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    goto :goto_20
.end method

.method public mergeStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22463
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 22465
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22471
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22472
    return-object p0

    .line 22468
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    goto :goto_20
.end method

.method public setConversationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22262
    if-nez p1, :cond_8

    .line 22263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22265
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22266
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->conversationId_:Ljava/lang/Object;

    .line 22268
    return-object p0
.end method

.method public setLocationModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 22414
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22416
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22417
    return-object p0
.end method

.method public setLocationModification(Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22404
    if-nez p1, :cond_8

    .line 22405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22407
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->locationModification_:Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$LocationModification;

    .line 22409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22410
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 22457
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22459
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22460
    return-object p0
.end method

.method public setStubbyInfo(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22447
    if-nez p1, :cond_8

    .line 22448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22450
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 22452
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22453
    return-object p0
.end method

.method public setTagModification(ILcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 22337
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22338
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22340
    return-object p0
.end method

.method public setTagModification(ILcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$TagModification;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 22327
    if-nez p2, :cond_8

    .line 22328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22330
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->ensureTagModificationIsMutable()V

    .line 22331
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->tagModification_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22333
    return-object p0
.end method

.method public setVisibilityModification(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22291
    if-nez p1, :cond_8

    .line 22292
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22294
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->bitField0_:I

    .line 22295
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$GlobalConversationPreferencesRequest$Builder;->visibilityModification_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 22297
    return-object p0
.end method
