.class public final Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Audience;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Audience;",
        "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$AudienceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation
.end field

.field private public_:Z

.field private user_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 11027
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 11116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10886
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->maybeForceBuilderInitialization()V

    .line 10887
    return-void
.end method

.method static synthetic access$13900(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10880
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14000()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 1

    .prologue
    .line 10880
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10924
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 10925
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10926
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10929
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 1

    .prologue
    .line 10892
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCircleIsMutable()V
    .registers 3

    .prologue
    .line 11119
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 11120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 11121
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11123
    :cond_16
    return-void
.end method

.method private ensureUserIsMutable()V
    .registers 3

    .prologue
    .line 11030
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 11031
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 11032
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11034
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10890
    return-void
.end method


# virtual methods
.method public addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;"
        }
    .end annotation

    .prologue
    .line 11186
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Circle;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11187
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11189
    return-object p0
.end method

.method public addAllUser(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;"
        }
    .end annotation

    .prologue
    .line 11097
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11098
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 11100
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 11179
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11180
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11182
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11162
    if-nez p2, :cond_8

    .line 11163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11165
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11166
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11168
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 11172
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11173
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11175
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11152
    if-nez p1, :cond_8

    .line 11153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11155
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11156
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11158
    return-object p0
.end method

.method public addUser(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 11090
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11091
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11093
    return-object p0
.end method

.method public addUser(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11073
    if-nez p2, :cond_8

    .line 11074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11076
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11077
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11079
    return-object p0
.end method

.method public addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 11083
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11084
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11086
    return-object p0
.end method

.method public addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 11063
    if-nez p1, :cond_8

    .line 11064
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11066
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11067
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11069
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 3

    .prologue
    .line 10915
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    .line 10916
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10917
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10919
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 6

    .prologue
    .line 10933
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 10934
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10935
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10936
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 10937
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10938
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10940
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14202(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;

    .line 10941
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 10942
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10943
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10945
    :cond_38
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14302(Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/List;)Ljava/util/List;

    .line 10946
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 10947
    or-int/lit8 v2, v2, 0x1

    .line 10949
    :cond_44
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->public_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14402(Lcom/google/wireless/tacotruck/proto/Data$Audience;Z)Z

    .line 10950
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14502(Lcom/google/wireless/tacotruck/proto/Data$Audience;I)I

    .line 10951
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 10896
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10898
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10900
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 10902
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10903
    return-object p0
.end method

.method public clearCircle()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 11192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 11193
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11195
    return-object p0
.end method

.method public clearPublic()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11219
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 11222
    return-object p0
.end method

.method public clearUser()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 2

    .prologue
    .line 11103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 11104
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11106
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3

    .prologue
    .line 10907
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

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
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircle(I)Lcom/google/wireless/tacotruck/proto/Data$Circle;
    .registers 3
    .parameter "index"

    .prologue
    .line 11132
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Circle;

    return-object v0
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 11129
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCircleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Circle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11126
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10880
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 10911
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method public getPublic()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11210
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    return v0
.end method

.method public getUser(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 11043
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getUserCount()I
    .registers 2

    .prologue
    .line 11040
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11037
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPublic()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10983
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
    .line 10880
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10880
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

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
    .line 10880
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10991
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10992
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_3a

    .line 10997
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10999
    :sswitch_d
    return-object p0

    .line 11004
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 11005
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11006
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_0

    .line 11010
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Circle;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    move-result-object v0

    .line 11011
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 11012
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addCircle(Lcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_0

    .line 11016
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;
    :sswitch_2c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11017
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    goto :goto_0

    .line 10992
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x18 -> :sswitch_2c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10955
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10979
    :cond_6
    :goto_6
    return-object p0

    .line 10956
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14200(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 10957
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 10958
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14200(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    .line 10959
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10966
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14300(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 10967
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 10968
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14300(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    .line 10969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 10976
    :cond_43
    :goto_43
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->hasPublic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10977
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getPublic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->setPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_6

    .line 10961
    :cond_51
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 10962
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->user_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14200(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25

    .line 10971
    :cond_5e
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 10972
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$Audience;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->access$14300(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_43
.end method

.method public setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 11146
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11147
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11149
    return-object p0
.end method

.method public setCircle(ILcom/google/wireless/tacotruck/proto/Data$Circle;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11136
    if-nez p2, :cond_8

    .line 11137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11139
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureCircleIsMutable()V

    .line 11140
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11142
    return-object p0
.end method

.method public setPublic(Z)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11213
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->bitField0_:I

    .line 11214
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->public_:Z

    .line 11216
    return-object p0
.end method

.method public setUser(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 11057
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11058
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11060
    return-object p0
.end method

.method public setUser(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 11047
    if-nez p2, :cond_8

    .line 11048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11050
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->ensureUserIsMutable()V

    .line 11051
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->user_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11053
    return-object p0
.end method
