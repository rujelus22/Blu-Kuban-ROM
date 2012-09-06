.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accountVersion_:J

.field private bitField0_:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private resumeToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 18328
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 18467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18329
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->maybeForceBuilderInitialization()V

    .line 18330
    return-void
.end method

.method static synthetic access$24300()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 1

    .prologue
    .line 18323
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 1

    .prologue
    .line 18335
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePhotoIsMutable()V
    .registers 3

    .prologue
    .line 18470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 18471
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18474
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 18333
    return-void
.end method


# virtual methods
.method public addAllPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 18537
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18538
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 18540
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18530
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18531
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18533
    return-object p0
.end method

.method public addPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18513
    if-nez p2, :cond_8

    .line 18514
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18516
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 18519
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 18523
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18524
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18526
    return-object p0
.end method

.method public addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18503
    if-nez p1, :cond_8

    .line 18504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18506
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18507
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18509
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 3

    .prologue
    .line 18358
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    .line 18359
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 18360
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 18362
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 6

    .prologue
    .line 18376
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 18377
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18378
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 18379
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 18380
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18381
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18383
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 18384
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 18385
    or-int/lit8 v2, v2, 0x1

    .line 18387
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18388
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 18389
    or-int/lit8 v2, v2, 0x2

    .line 18391
    :cond_36
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;J)J

    .line 18392
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;I)I

    .line 18393
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 18339
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 18340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18342
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18343
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 18345
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18346
    return-object p0
.end method

.method public clearAccountVersion()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 18606
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18607
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 18609
    return-object p0
.end method

.method public clearPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 2

    .prologue
    .line 18543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18544
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18546
    return-object p0
.end method

.method public clearResumeToken()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 2

    .prologue
    .line 18580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18581
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18583
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3

    .prologue
    .line 18350
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

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
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountVersion()J
    .registers 3

    .prologue
    .line 18597
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18323
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 2

    .prologue
    .line 18354
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 18483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 18480
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18477
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 18561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18562
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 18563
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18564
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18567
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

.method public hasAccountVersion()Z
    .registers 3

    .prologue
    .line 18594
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

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

.method public hasResumeToken()Z
    .registers 3

    .prologue
    .line 18558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    .line 18418
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getPhotoCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 18419
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 18421
    const/4 v1, 0x0

    .line 18424
    :goto_12
    return v1

    .line 18418
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18424
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 18323
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18323
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

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
    .line 18323
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18432
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 18433
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 18438
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18440
    :sswitch_d
    return-object p0

    .line 18445
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 18446
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 18447
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->addPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    goto :goto_0

    .line 18451
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18452
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    goto :goto_0

    .line 18456
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18457
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    goto :goto_0

    .line 18433
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 18397
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 18414
    :cond_6
    :goto_6
    return-object p0

    .line 18398
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 18399
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 18400
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    .line 18401
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18408
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->hasResumeToken()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 18409
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    .line 18411
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->hasAccountVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18412
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getAccountVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->setAccountVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;

    goto :goto_6

    .line 18403
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18404
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->access$24500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setAccountVersion(J)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 18600
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18601
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->accountVersion_:J

    .line 18603
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 18497
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18498
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18500
    return-object p0
.end method

.method public setPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 18487
    if-nez p2, :cond_8

    .line 18488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18490
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->ensurePhotoIsMutable()V

    .line 18491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->photo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18493
    return-object p0
.end method

.method public setResumeToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 18571
    if-nez p1, :cond_8

    .line 18572
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18574
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->bitField0_:I

    .line 18575
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;->resumeToken_:Ljava/lang/Object;

    .line 18577
    return-object p0
.end method
