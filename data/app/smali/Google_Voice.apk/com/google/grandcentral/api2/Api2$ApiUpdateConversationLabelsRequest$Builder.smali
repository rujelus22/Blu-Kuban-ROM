.class public final Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private addLabel_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private conversationId_:Lcom/google/protobuf/LazyStringList;

.field private removeLabel_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 23310
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23363
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23428
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23493
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23174
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 23175
    return-void
.end method

.method static synthetic access$27500()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 1

    .prologue
    .line 23168
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 1

    .prologue
    .line 23180
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAddLabelIsMutable()V
    .registers 3

    .prologue
    .line 23430
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 23431
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23432
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23434
    :cond_16
    return-void
.end method

.method private ensureConversationIdIsMutable()V
    .registers 3

    .prologue
    .line 23365
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 23366
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23367
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23369
    :cond_16
    return-void
.end method

.method private ensureRemoveLabelIsMutable()V
    .registers 3

    .prologue
    .line 23495
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 23496
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23497
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23499
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 23178
    return-void
.end method


# virtual methods
.method public addAddLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23460
    if-nez p1, :cond_8

    .line 23461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23463
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureAddLabelIsMutable()V

    .line 23464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23466
    return-object p0
.end method

.method public addAddLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23483
    if-nez p1, :cond_8

    .line 23484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23486
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureAddLabelIsMutable()V

    .line 23487
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 23489
    return-object p0
.end method

.method public addAllAddLabel(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 23470
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureAddLabelIsMutable()V

    .line 23471
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23473
    return-object p0
.end method

.method public addAllConversationId(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 23405
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureConversationIdIsMutable()V

    .line 23406
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23408
    return-object p0
.end method

.method public addAllRemoveLabel(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 23535
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureRemoveLabelIsMutable()V

    .line 23536
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23538
    return-object p0
.end method

.method public addConversationId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23395
    if-nez p1, :cond_8

    .line 23396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23398
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureConversationIdIsMutable()V

    .line 23399
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23401
    return-object p0
.end method

.method public addConversationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23418
    if-nez p1, :cond_8

    .line 23419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23421
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureConversationIdIsMutable()V

    .line 23422
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 23424
    return-object p0
.end method

.method public addRemoveLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23525
    if-nez p1, :cond_8

    .line 23526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23528
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureRemoveLabelIsMutable()V

    .line 23529
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 23531
    return-object p0
.end method

.method public addRemoveLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23548
    if-nez p1, :cond_8

    .line 23549
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23551
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureRemoveLabelIsMutable()V

    .line 23552
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 23554
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3

    .prologue
    .line 23205
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    .line 23206
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 23207
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 23209
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 6

    .prologue
    .line 23213
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 23214
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23215
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 23216
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 23217
    or-int/lit8 v2, v2, 0x1

    .line 23219
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27702(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23220
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 23221
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23223
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23225
    :cond_2b
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27802(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 23226
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_46

    .line 23227
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23229
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23231
    :cond_46
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27902(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 23232
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_62

    .line 23233
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23235
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23237
    :cond_62
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$28002(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 23238
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$28102(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;I)I

    .line 23239
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23184
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 23185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23186
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23187
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23188
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23189
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23190
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23191
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23192
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23193
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddLabel()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23476
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23477
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23479
    return-object p0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23346
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23347
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23349
    return-object p0
.end method

.method public clearConversationId()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23411
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23412
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23414
    return-object p0
.end method

.method public clearRemoveLabel()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23541
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23542
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23544
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3

    .prologue
    .line 23197
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

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
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23443
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 23447
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAddLabelCount()I
    .registers 2

    .prologue
    .line 23440
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAddLabelList()Ljava/util/List;
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
    .line 23437
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23315
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23316
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 23317
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 23318
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23321
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 23326
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23327
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 23328
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 23330
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23333
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getConversationId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23378
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConversationIdBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 23382
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConversationIdCount()I
    .registers 2

    .prologue
    .line 23375
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getConversationIdList()Ljava/util/List;
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
    .line 23372
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2

    .prologue
    .line 23201
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 23168
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23508
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 23512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveLabelCount()I
    .registers 2

    .prologue
    .line 23505
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveLabelList()Ljava/util/List;
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
    .line 23502
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 23312
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

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
    .line 23283
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 23285
    const/4 v0, 0x0

    .line 23287
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 23243
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 23279
    :cond_6
    :goto_6
    return-object p0

    .line 23244
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 23245
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23246
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27700(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23249
    :cond_19
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27800(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 23250
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 23251
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27800(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23252
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23259
    :cond_37
    :goto_37
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27900(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 23260
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 23261
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27900(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23262
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23269
    :cond_55
    :goto_55
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$28000(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 23270
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 23271
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$28000(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23272
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 23254
    :cond_74
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureConversationIdIsMutable()V

    .line 23255
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27800(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 23264
    :cond_81
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureAddLabelIsMutable()V

    .line 23265
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$27900(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_55

    .line 23274
    :cond_8e
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureRemoveLabelIsMutable()V

    .line 23275
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->access$28000(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23294
    const/4 v2, 0x0

    .line 23296
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 23301
    if-eqz v2, :cond_10

    .line 23302
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    .line 23305
    :cond_10
    return-object p0

    .line 23297
    :catch_11
    move-exception v1

    .line 23298
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    move-object v2, v0

    .line 23299
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 23301
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 23302
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    :cond_21
    throw v3
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
    .line 23168
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23168
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

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
    .line 23168
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAddLabel(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23451
    if-nez p2, :cond_8

    .line 23452
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23454
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureAddLabelIsMutable()V

    .line 23455
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23457
    return-object p0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23337
    if-nez p1, :cond_8

    .line 23338
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23340
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23341
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23343
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 23353
    if-nez p1, :cond_8

    .line 23354
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23356
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->bitField0_:I

    .line 23357
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 23359
    return-object p0
.end method

.method public setConversationId(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23386
    if-nez p2, :cond_8

    .line 23387
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23389
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureConversationIdIsMutable()V

    .line 23390
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23392
    return-object p0
.end method

.method public setRemoveLabel(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23516
    if-nez p2, :cond_8

    .line 23517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23519
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->ensureRemoveLabelIsMutable()V

    .line 23520
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23522
    return-object p0
.end method
