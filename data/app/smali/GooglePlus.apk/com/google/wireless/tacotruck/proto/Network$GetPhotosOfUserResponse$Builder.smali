.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private approvedPhoto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private unapprovedPhoto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 36303
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36304
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->maybeForceBuilderInitialization()V

    .line 36305
    return-void
.end method

.method static synthetic access$50200(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36298
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50300()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 36298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36340
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    .line 36341
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 36342
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 36345
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 1

    .prologue
    .line 36310
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureApprovedPhotoIsMutable()V
    .registers 3

    .prologue
    .line 36444
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 36445
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36446
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36448
    :cond_16
    return-void
.end method

.method private ensureUnapprovedPhotoIsMutable()V
    .registers 3

    .prologue
    .line 36533
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 36534
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36535
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36537
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36308
    return-void
.end method


# virtual methods
.method public addAllApprovedPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 36511
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36512
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36514
    return-object p0
.end method

.method public addAllUnapprovedPhoto(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 36600
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36601
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 36603
    return-object p0
.end method

.method public addApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36504
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36505
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36507
    return-object p0
.end method

.method public addApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36487
    if-nez p2, :cond_8

    .line 36488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36490
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36491
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36493
    return-object p0
.end method

.method public addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 36497
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36498
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36500
    return-object p0
.end method

.method public addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36477
    if-nez p1, :cond_8

    .line 36478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36480
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36481
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36483
    return-object p0
.end method

.method public addUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36593
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36594
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36596
    return-object p0
.end method

.method public addUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36576
    if-nez p2, :cond_8

    .line 36577
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36579
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36580
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 36582
    return-object p0
.end method

.method public addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 36586
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36589
    return-object p0
.end method

.method public addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 36566
    if-nez p1, :cond_8

    .line 36567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36569
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36570
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36572
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 3

    .prologue
    .line 36331
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    .line 36332
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 36333
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 36335
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 5

    .prologue
    .line 36349
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 36350
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36351
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 36352
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36353
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36355
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 36356
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 36357
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36358
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36360
    :cond_37
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;Ljava/util/List;)Ljava/util/List;

    .line 36361
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 36314
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36319
    return-object p0
.end method

.method public clearApprovedPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 36517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36518
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36520
    return-object p0
.end method

.method public clearUnapprovedPhoto()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 2

    .prologue
    .line 36606
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36607
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36609
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 3

    .prologue
    .line 36323
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 36457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getApprovedPhotoCount()I
    .registers 2

    .prologue
    .line 36454
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApprovedPhotoList()Ljava/util/List;
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
    .line 36451
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;
    .registers 2

    .prologue
    .line 36327
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 36546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getUnapprovedPhotoCount()I
    .registers 2

    .prologue
    .line 36543
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUnapprovedPhotoList()Ljava/util/List;
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
    .line 36540
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 36390
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getApprovedPhotoCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 36391
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 36402
    :cond_12
    :goto_12
    return v1

    .line 36390
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36396
    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getUnapprovedPhotoCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 36397
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 36396
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 36402
    :cond_2a
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
    .line 36298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36298
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

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
    .line 36298
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36410
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 36411
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2c

    .line 36416
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36418
    :sswitch_d
    return-object p0

    .line 36423
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 36424
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36425
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->addApprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    goto :goto_0

    .line 36429
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v0

    .line 36430
    .restart local v0       #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36431
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->addUnapprovedPhoto(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;

    goto :goto_0

    .line 36411
    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 36365
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 36386
    :cond_6
    :goto_6
    return-object p0

    .line 36366
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 36367
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 36368
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    .line 36369
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    .line 36376
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 36377
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 36378
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    .line 36379
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 36371
    :cond_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36372
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->approvedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50500(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 36381
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->unapprovedPhoto_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;->access$50600(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36471
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36472
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36474
    return-object p0
.end method

.method public setApprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36461
    if-nez p2, :cond_8

    .line 36462
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36464
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureApprovedPhotoIsMutable()V

    .line 36465
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->approvedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36467
    return-object p0
.end method

.method public setUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 36560
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36563
    return-object p0
.end method

.method public setUnapprovedPhoto(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 36550
    if-nez p2, :cond_8

    .line 36551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36553
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->ensureUnapprovedPhotoIsMutable()V

    .line 36554
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponse$Builder;->unapprovedPhoto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36556
    return-object p0
.end method
