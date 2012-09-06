.class public final Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayableTotalCallRate_:Ljava/lang/Object;

.field private displayableTotalSmsRate_:Ljava/lang/Object;

.field private rate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation
.end field

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 34010
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 34140
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34011
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 34012
    return-void
.end method

.method static synthetic access$40500()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 1

    .prologue
    .line 34005
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 1

    .prologue
    .line 34017
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRateIsMutable()V
    .registers 3

    .prologue
    .line 34186
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 34187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34188
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34190
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 34015
    return-void
.end method


# virtual methods
.method public addAllRate(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 34253
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiRate;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34254
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 34256
    return-object p0
.end method

.method public addRate(ILcom/google/grandcentral/api2/Api2$ApiRate$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 34246
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34247
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34249
    return-object p0
.end method

.method public addRate(ILcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 34229
    if-nez p2, :cond_8

    .line 34230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34232
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34233
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34235
    return-object p0
.end method

.method public addRate(Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 34239
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34240
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34242
    return-object p0
.end method

.method public addRate(Lcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34219
    if-nez p1, :cond_8

    .line 34220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34222
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34223
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34225
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 3

    .prologue
    .line 34042
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    .line 34043
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 34044
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 34046
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 6

    .prologue
    .line 34050
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 34051
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34052
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 34053
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 34054
    or-int/lit8 v2, v2, 0x1

    .line 34056
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40702(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34057
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 34058
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34059
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34061
    :cond_2a
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40802(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 34062
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 34063
    or-int/lit8 v2, v2, 0x2

    .line 34065
    :cond_36
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40902(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34066
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 34067
    or-int/lit8 v2, v2, 0x4

    .line 34069
    :cond_43
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$41002(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34070
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$41102(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;I)I

    .line 34071
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34021
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 34022
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34023
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34025
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34027
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34028
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34029
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34030
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDisplayableTotalCallRate()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34308
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34309
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalCallRate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34311
    return-object p0
.end method

.method public clearDisplayableTotalSmsRate()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34361
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34362
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDisplayableTotalSmsRate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34364
    return-object p0
.end method

.method public clearRate()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34260
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34262
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 2

    .prologue
    .line 34176
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34178
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34179
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3

    .prologue
    .line 34034
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

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
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    .registers 2

    .prologue
    .line 34038
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34005
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTotalCallRate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34277
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34278
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34279
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34280
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34283
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

.method public getDisplayableTotalCallRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34288
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34289
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34290
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34292
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34295
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

.method public getDisplayableTotalSmsRate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34330
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34331
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 34332
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34333
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34336
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

.method public getDisplayableTotalSmsRateBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34341
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34342
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34343
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34345
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34348
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

.method public getRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate;
    .registers 3
    .parameter "index"

    .prologue
    .line 34199
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRate;

    return-object v0
.end method

.method public getRateCount()I
    .registers 2

    .prologue
    .line 34196
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRateList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34193
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 34145
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasDisplayableTotalCallRate()Z
    .registers 3

    .prologue
    .line 34274
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

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

.method public hasDisplayableTotalSmsRate()Z
    .registers 3

    .prologue
    .line 34327
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34142
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34103
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_8

    .line 34117
    :cond_7
    :goto_7
    return v1

    .line 34107
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->getRateCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 34112
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->getRate(I)Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiRate;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 34111
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 34117
    :cond_26
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 34075
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 34099
    :cond_6
    :goto_6
    return-object p0

    .line 34076
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 34077
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    .line 34079
    :cond_14
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40800(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 34080
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 34081
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40800(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    .line 34082
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34089
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->hasDisplayableTotalCallRate()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 34090
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34091
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalCallRate_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40900(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34094
    :cond_44
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->hasDisplayableTotalSmsRate()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34095
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34096
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->displayableTotalSmsRate_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$41000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    goto :goto_6

    .line 34084
    :cond_57
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34085
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->rate_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->access$40800(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34124
    const/4 v2, 0x0

    .line 34126
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 34131
    if-eqz v2, :cond_10

    .line 34132
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    .line 34135
    :cond_10
    return-object p0

    .line 34127
    :catch_11
    move-exception v1

    .line 34128
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    move-object v2, v0

    .line 34129
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 34131
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 34132
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

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
    .line 34005
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 34005
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

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
    .line 34005
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 34164
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 34166
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34172
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34173
    return-object p0

    .line 34169
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public removeRate(I)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 34265
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34266
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34268
    return-object p0
.end method

.method public setDisplayableTotalCallRate(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34299
    if-nez p1, :cond_8

    .line 34300
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34302
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34303
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34305
    return-object p0
.end method

.method public setDisplayableTotalCallRateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34315
    if-nez p1, :cond_8

    .line 34316
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34318
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34319
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalCallRate_:Ljava/lang/Object;

    .line 34321
    return-object p0
.end method

.method public setDisplayableTotalSmsRate(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34352
    if-nez p1, :cond_8

    .line 34353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34355
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34356
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34358
    return-object p0
.end method

.method public setDisplayableTotalSmsRateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34368
    if-nez p1, :cond_8

    .line 34369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34371
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34372
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->displayableTotalSmsRate_:Ljava/lang/Object;

    .line 34374
    return-object p0
.end method

.method public setRate(ILcom/google/grandcentral/api2/Api2$ApiRate$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 34213
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34214
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiRate$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34216
    return-object p0
.end method

.method public setRate(ILcom/google/grandcentral/api2/Api2$ApiRate;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 34203
    if-nez p2, :cond_8

    .line 34204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34206
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->ensureRateIsMutable()V

    .line 34207
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->rate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 34209
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 34158
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34160
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34161
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 34148
    if-nez p1, :cond_8

    .line 34149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34151
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 34153
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesResponse$Builder;->bitField0_:I

    .line 34154
    return-object p0
.end method
