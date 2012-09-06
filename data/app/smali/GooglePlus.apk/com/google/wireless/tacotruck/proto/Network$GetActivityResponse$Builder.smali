.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private missingActivity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 5558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5690
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5779
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5559
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->maybeForceBuilderInitialization()V

    .line 5560
    return-void
.end method

.method static synthetic access$6800(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5553
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5553
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5595
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    .line 5596
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5597
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 5600
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 1

    .prologue
    .line 5565
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 5693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 5694
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5695
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5697
    :cond_16
    return-void
.end method

.method private ensureMissingActivityIsMutable()V
    .registers 3

    .prologue
    .line 5782
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 5783
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5786
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 5563
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5753
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5754
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5756
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5736
    if-nez p2, :cond_8

    .line 5737
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5739
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5740
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5742
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5746
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5749
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5726
    if-nez p1, :cond_8

    .line 5727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5729
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5730
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5732
    return-object p0
.end method

.method public addAllActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5760
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5761
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5763
    return-object p0
.end method

.method public addAllMissingActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 5849
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5850
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5852
    return-object p0
.end method

.method public addMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5842
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5843
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5845
    return-object p0
.end method

.method public addMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5825
    if-nez p2, :cond_8

    .line 5826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5828
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5829
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5831
    return-object p0
.end method

.method public addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 5835
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5836
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5838
    return-object p0
.end method

.method public addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5815
    if-nez p1, :cond_8

    .line 5816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5818
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5821
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 3

    .prologue
    .line 5586
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    .line 5587
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5588
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5590
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 5

    .prologue
    .line 5604
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 5605
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5606
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 5607
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5608
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5610
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7102(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;

    .line 5611
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 5612
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5613
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5615
    :cond_37
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7202(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;Ljava/util/List;)Ljava/util/List;

    .line 5616
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5569
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5571
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5573
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5574
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5767
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5769
    return-object p0
.end method

.method public clearMissingActivity()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 2

    .prologue
    .line 5855
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5856
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5858
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 3

    .prologue
    .line 5578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

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
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 5703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5553
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;
    .registers 2

    .prologue
    .line 5582
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMissingActivity(I)Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 5795
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    return-object v0
.end method

.method public getMissingActivityCount()I
    .registers 2

    .prologue
    .line 5792
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMissingActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5789
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 5645
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getActivityCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 5646
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5648
    const/4 v1, 0x0

    .line 5651
    :goto_12
    return v1

    .line 5645
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5651
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
    .line 5553
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5553
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

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
    .line 5553
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5659
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5660
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2c

    .line 5665
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5667
    :sswitch_d
    return-object p0

    .line 5672
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 5673
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5674
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    goto :goto_0

    .line 5678
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;

    move-result-object v0

    .line 5679
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 5680
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->addMissingActivity(Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;

    goto :goto_0

    .line 5660
    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 5620
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5641
    :cond_6
    :goto_6
    return-object p0

    .line 5621
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7100(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 5622
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 5623
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7100(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    .line 5624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    .line 5631
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5632
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 5633
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    .line 5634
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 5626
    :cond_44
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5627
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7100(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 5636
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5637
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->missingActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;->access$7200(Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5720
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5721
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5723
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5710
    if-nez p2, :cond_8

    .line 5711
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5713
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureActivityIsMutable()V

    .line 5714
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5716
    return-object p0
.end method

.method public setMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 5809
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5810
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$MissingActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MissingActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5812
    return-object p0
.end method

.method public setMissingActivity(ILcom/google/wireless/tacotruck/proto/Network$MissingActivity;)Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 5799
    if-nez p2, :cond_8

    .line 5800
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5802
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->ensureMissingActivityIsMutable()V

    .line 5803
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivityResponse$Builder;->missingActivity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5805
    return-object p0
.end method
