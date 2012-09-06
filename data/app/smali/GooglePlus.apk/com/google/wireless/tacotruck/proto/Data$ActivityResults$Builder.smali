.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityResultsOrBuilder;"
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

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42665
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42666
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->maybeForceBuilderInitialization()V

    .line 42667
    return-void
.end method

.method static synthetic access$57400()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 1

    .prologue
    .line 42660
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 1

    .prologue
    .line 42672
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 42793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 42794
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42797
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 42670
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 42853
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42854
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42856
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 42836
    if-nez p2, :cond_8

    .line 42837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42839
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42840
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 42842
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 42846
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42847
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42849
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42826
    if-nez p1, :cond_8

    .line 42827
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42829
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42830
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42832
    return-object p0
.end method

.method public addAllActivity(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;"
        }
    .end annotation

    .prologue
    .line 42860
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42861
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 42863
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 3

    .prologue
    .line 42693
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    .line 42694
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42695
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42697
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 6

    .prologue
    .line 42711
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 42712
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42713
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42714
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 42715
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42716
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42718
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57602(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/util/List;)Ljava/util/List;

    .line 42719
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 42720
    or-int/lit8 v2, v2, 0x1

    .line 42722
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57702(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42723
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57802(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;I)I

    .line 42724
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 42676
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42678
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42679
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42680
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42681
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 42866
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42869
    return-object p0
.end method

.method public clearShownActivitiesBlob()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 42903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42904
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42906
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3

    .prologue
    .line 42685
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

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
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 42806
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 42803
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

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
    .line 42800
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42660
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 42689
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42885
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42886
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42887
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42890
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

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    .line 42881
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

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
    .line 42746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getActivityCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 42747
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 42749
    const/4 v1, 0x0

    .line 42752
    :goto_12
    return v1

    .line 42746
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42752
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
    .line 42660
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42660
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

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
    .line 42660
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42760
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42761
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 42766
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42768
    :sswitch_d
    return-object p0

    .line 42773
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 42774
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42775
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    goto :goto_0

    .line 42779
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42780
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 42761
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 42728
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42742
    :cond_6
    :goto_6
    return-object p0

    .line 42729
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57600(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 42730
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 42731
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57600(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 42732
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42739
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->hasShownActivitiesBlob()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42740
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    goto :goto_6

    .line 42734
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42735
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$57600(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 42820
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42821
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42823
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 42810
    if-nez p2, :cond_8

    .line 42811
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42813
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 42814
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42816
    return-object p0
.end method

.method public setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42894
    if-nez p1, :cond_8

    .line 42895
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42897
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 42898
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 42900
    return-object p0
.end method
