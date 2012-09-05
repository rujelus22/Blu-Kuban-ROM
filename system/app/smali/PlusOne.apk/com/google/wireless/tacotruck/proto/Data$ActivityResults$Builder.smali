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
    .line 39884
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40009
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 40098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39885
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->maybeForceBuilderInitialization()V

    .line 39886
    return-void
.end method

.method static synthetic access$53900()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 1

    .prologue
    .line 39879
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 1

    .prologue
    .line 39891
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;-><init>()V

    return-object v0
.end method

.method private ensureActivityIsMutable()V
    .registers 3

    .prologue
    .line 40012
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40013
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 40014
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 40016
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39889
    return-void
.end method


# virtual methods
.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40072
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40073
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40075
    return-object p0
.end method

.method public addActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40055
    if-nez p2, :cond_8

    .line 40056
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40058
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40059
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40061
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40065
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40066
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40068
    return-object p0
.end method

.method public addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40045
    if-nez p1, :cond_8

    .line 40046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40048
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40049
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40051
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
    .line 40079
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40080
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40082
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 3

    .prologue
    .line 39912
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    .line 39913
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39914
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39916
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 6

    .prologue
    .line 39930
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 39931
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39932
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39933
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 39934
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 39935
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39937
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54102(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/util/List;)Ljava/util/List;

    .line 39938
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 39939
    or-int/lit8 v2, v2, 0x1

    .line 39941
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54202(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39942
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54302(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;I)I

    .line 39943
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 39895
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39896
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 39897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39899
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39900
    return-object p0
.end method

.method public clearActivity()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 40085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 40086
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 40088
    return-object p0
.end method

.method public clearShownActivitiesBlob()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2

    .prologue
    .line 40122
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 40123
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 40125
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3

    .prologue
    .line 39904
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
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 40025
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 40022
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
    .line 40019
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39879
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 39908
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40103
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 40104
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 40105
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 40106
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 40109
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
    .line 40100
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
    .line 39879
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

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
    .line 39879
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
    .line 39979
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39980
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 39985
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39987
    :sswitch_d
    return-object p0

    .line 39992
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    .line 39993
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39994
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->addActivity(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    goto :goto_0

    .line 39998
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    :sswitch_1d
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39999
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 39980
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
    .line 39947
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39961
    :cond_6
    :goto_6
    return-object p0

    .line 39948
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54100(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 39949
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 39950
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54100(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    .line 39951
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 39958
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->hasShownActivitiesBlob()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39959
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    goto :goto_6

    .line 39953
    :cond_33
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 39954
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->access$54100(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40039
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40040
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40042
    return-object p0
.end method

.method public setActivity(ILcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40029
    if-nez p2, :cond_8

    .line 40030
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40032
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->ensureActivityIsMutable()V

    .line 40033
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->activity_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40035
    return-object p0
.end method

.method public setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40113
    if-nez p1, :cond_8

    .line 40114
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40116
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->bitField0_:I

    .line 40117
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 40119
    return-object p0
.end method
