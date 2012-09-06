.class public final Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private limit_:I

.field private modifiedSinceTimestamp_:J

.field private offset_:I

.field private wantTranscript_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14265
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14402
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14476
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    .line 14497
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14266
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14267
    return-void
.end method

.method static synthetic access$16700()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 14260
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 14272
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLabelIsMutable()V
    .registers 3

    .prologue
    .line 14499
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 14500
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14501
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14503
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14270
    return-void
.end method


# virtual methods
.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 14539
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->ensureLabelIsMutable()V

    .line 14540
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 14542
    return-object p0
.end method

.method public addLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14529
    if-nez p1, :cond_8

    .line 14530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14532
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->ensureLabelIsMutable()V

    .line 14533
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 14535
    return-object p0
.end method

.method public addLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14552
    if-nez p1, :cond_8

    .line 14553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14555
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->ensureLabelIsMutable()V

    .line 14556
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 14558
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3

    .prologue
    .line 14301
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    .line 14302
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14303
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14305
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 6

    .prologue
    .line 14309
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 14310
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14311
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14312
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14313
    or-int/lit8 v2, v2, 0x1

    .line 14315
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$16902(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14316
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14317
    or-int/lit8 v2, v2, 0x2

    .line 14319
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->offset_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17002(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I

    .line 14320
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14321
    or-int/lit8 v2, v2, 0x4

    .line 14323
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17102(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I

    .line 14324
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 14325
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14327
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14329
    :cond_44
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17202(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 14330
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 14331
    or-int/lit8 v2, v2, 0x8

    .line 14333
    :cond_51
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->modifiedSinceTimestamp_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17302(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;J)J

    .line 14334
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5e

    .line 14335
    or-int/lit8 v2, v2, 0x10

    .line 14337
    :cond_5e
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->wantTranscript_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17402(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Z)Z

    .line 14338
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17502(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I

    .line 14339
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14278
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14279
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->offset_:I

    .line 14280
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14281
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    .line 14282
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14283
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14284
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->modifiedSinceTimestamp_:J

    .line 14286
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14287
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->wantTranscript_:Z

    .line 14288
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14289
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14438
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14439
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14441
    return-object p0
.end method

.method public clearLabel()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14545
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14546
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14548
    return-object p0
.end method

.method public clearLimit()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14490
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14491
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    .line 14493
    return-object p0
.end method

.method public clearModifiedSinceTimestamp()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3

    .prologue
    .line 14576
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->modifiedSinceTimestamp_:J

    .line 14579
    return-object p0
.end method

.method public clearOffset()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14469
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14470
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->offset_:I

    .line 14472
    return-object p0
.end method

.method public clearWantTranscript()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14597
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->wantTranscript_:Z

    .line 14600
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3

    .prologue
    .line 14293
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

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
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14407
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14408
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14409
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14410
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14413
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
    .line 14418
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14419
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14420
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14422
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14425
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2

    .prologue
    .line 14297
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14260
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 14512
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 14516
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 14509
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
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
    .line 14506
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 14481
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    return v0
.end method

.method public getModifiedSinceTimestamp()J
    .registers 3

    .prologue
    .line 14567
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->modifiedSinceTimestamp_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 14460
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->offset_:I

    return v0
.end method

.method public getWantTranscript()Z
    .registers 2

    .prologue
    .line 14588
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->wantTranscript_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14404
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLimit()Z
    .registers 3

    .prologue
    .line 14478
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

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

.method public hasModifiedSinceTimestamp()Z
    .registers 3

    .prologue
    .line 14564
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 14457
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

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

.method public hasWantTranscript()Z
    .registers 3

    .prologue
    .line 14585
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 14375
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->hasClientLoginToken()Z

    move-result v0

    if-nez v0, :cond_8

    .line 14377
    const/4 v0, 0x0

    .line 14379
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 14343
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14371
    :cond_6
    :goto_6
    return-object p0

    .line 14344
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 14345
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14346
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$16900(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14349
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasOffset()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 14350
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 14352
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 14353
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 14355
    :cond_33
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17200(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_51

    .line 14356
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 14357
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17200(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14358
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14365
    :cond_51
    :goto_51
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasModifiedSinceTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 14366
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getModifiedSinceTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setModifiedSinceTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 14368
    :cond_5e
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasWantTranscript()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14369
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getWantTranscript()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    goto :goto_6

    .line 14360
    :cond_6c
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->ensureLabelIsMutable()V

    .line 14361
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->access$17200(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_51
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14386
    const/4 v2, 0x0

    .line 14388
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 14393
    if-eqz v2, :cond_10

    .line 14394
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    .line 14397
    :cond_10
    return-object p0

    .line 14389
    :catch_11
    move-exception v1

    .line 14390
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-object v2, v0

    .line 14391
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 14393
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 14394
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

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
    .line 14260
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14260
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

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
    .line 14260
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14429
    if-nez p1, :cond_8

    .line 14430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14432
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14433
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14435
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14445
    if-nez p1, :cond_8

    .line 14446
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14448
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 14451
    return-object p0
.end method

.method public setLabel(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 14520
    if-nez p2, :cond_8

    .line 14521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14523
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->ensureLabelIsMutable()V

    .line 14524
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14526
    return-object p0
.end method

.method public setLimit(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14484
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14485
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->limit_:I

    .line 14487
    return-object p0
.end method

.method public setModifiedSinceTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 14570
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14571
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->modifiedSinceTimestamp_:J

    .line 14573
    return-object p0
.end method

.method public setOffset(I)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14463
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14464
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->offset_:I

    .line 14466
    return-object p0
.end method

.method public setWantTranscript(Z)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14591
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->bitField0_:I

    .line 14592
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->wantTranscript_:Z

    .line 14594
    return-object p0
.end method
