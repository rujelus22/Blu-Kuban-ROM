.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private deleteCommentId_:Lcom/google/protobuf/LazyStringList;

.field private reportCommentId_:Lcom/google/protobuf/LazyStringList;

.field private reverseAction_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10451
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10625
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10706
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10762
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10452
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 10453
    return-void
.end method

.method static synthetic access$13500()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 1

    .prologue
    .line 10446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 1

    .prologue
    .line 10458
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeleteCommentIdIsMutable()V
    .registers 3

    .prologue
    .line 10708
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 10709
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10710
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10712
    :cond_17
    return-void
.end method

.method private ensureReportCommentIdIsMutable()V
    .registers 3

    .prologue
    .line 10764
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 10765
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10766
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10768
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10456
    return-void
.end method


# virtual methods
.method public addAllDeleteCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 10744
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10745
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10747
    return-object p0
.end method

.method public addAllReportCommentId(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 10800
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10801
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10803
    return-object p0
.end method

.method public addDeleteCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10734
    if-nez p1, :cond_8

    .line 10735
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10737
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10738
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10740
    return-object p0
.end method

.method public addReportCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10790
    if-nez p1, :cond_8

    .line 10791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10793
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10794
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 10796
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 3

    .prologue
    .line 10485
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    .line 10486
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10487
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10489
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 6

    .prologue
    .line 10503
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 10504
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10505
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10506
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10507
    or-int/lit8 v2, v2, 0x1

    .line 10509
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$13702(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10510
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10511
    or-int/lit8 v2, v2, 0x2

    .line 10513
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$13802(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10514
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 10515
    or-int/lit8 v2, v2, 0x4

    .line 10517
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$13902(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Z)Z

    .line 10518
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 10519
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10521
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10523
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14002(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10524
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_60

    .line 10525
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10527
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10529
    :cond_60
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14102(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 10530
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14202(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;I)I

    .line 10531
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10462
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10463
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10464
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10466
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10467
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 10468
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10469
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10471
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10473
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10673
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10674
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10676
    return-object p0
.end method

.method public clearDeleteCommentId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10750
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10751
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10753
    return-object p0
.end method

.method public clearReportCommentId()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10806
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10807
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10809
    return-object p0
.end method

.method public clearReverseAction()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10699
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 10702
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 2

    .prologue
    .line 10642
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10643
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10645
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3

    .prologue
    .line 10477
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

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
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10654
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10655
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10656
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10657
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10660
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
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 2

    .prologue
    .line 10481
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10721
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteCommentIdCount()I
    .registers 2

    .prologue
    .line 10718
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteCommentIdList()Ljava/util/List;
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
    .line 10715
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReportCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10777
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReportCommentIdCount()I
    .registers 2

    .prologue
    .line 10774
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getReportCommentIdList()Ljava/util/List;
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
    .line 10771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReverseAction()Z
    .registers 2

    .prologue
    .line 10690
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2

    .prologue
    .line 10630
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 10651
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

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

.method public hasReverseAction()Z
    .registers 3

    .prologue
    .line 10687
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10627
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 10446
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

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
    .line 10446
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10578
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_56

    .line 10583
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10585
    :sswitch_d
    return-object p0

    .line 10590
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10591
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v2

    .line 10592
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    if-eqz v2, :cond_0

    .line 10593
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10594
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_0

    .line 10599
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10600
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 10604
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10605
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    goto :goto_0

    .line 10609
    :sswitch_3b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10610
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 10614
    :sswitch_48
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10615
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 10578
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10535
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10565
    :cond_6
    :goto_6
    return-object p0

    .line 10536
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10537
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10539
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 10540
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10542
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->hasReverseAction()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 10543
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getReverseAction()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->setReverseAction(Z)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    .line 10545
    :cond_2e
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14000(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 10546
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 10547
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14000(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10548
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10555
    :cond_4c
    :goto_4c
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14100(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10556
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 10557
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14100(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10558
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    goto :goto_6

    .line 10550
    :cond_6b
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10551
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14000(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c

    .line 10560
    :cond_78
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->access$14100(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10664
    if-nez p1, :cond_8

    .line 10665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10667
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10668
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->activityId_:Ljava/lang/Object;

    .line 10670
    return-object p0
.end method

.method public setDeleteCommentId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10725
    if-nez p2, :cond_8

    .line 10726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10728
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureDeleteCommentIdIsMutable()V

    .line 10729
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10731
    return-object p0
.end method

.method public setReportCommentId(ILjava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10781
    if-nez p2, :cond_8

    .line 10782
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10784
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->ensureReportCommentIdIsMutable()V

    .line 10785
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10787
    return-object p0
.end method

.method public setReverseAction(Z)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10694
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->reverseAction_:Z

    .line 10696
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10633
    if-nez p1, :cond_8

    .line 10634
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10636
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->bitField0_:I

    .line 10637
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10639
    return-object p0
.end method
