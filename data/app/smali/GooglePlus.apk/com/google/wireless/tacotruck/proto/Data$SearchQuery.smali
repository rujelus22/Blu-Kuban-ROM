.class public final Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$SearchQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;,
        Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private filter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private queryText_:Ljava/lang/Object;

.field private searchRadiusMeters_:I

.field private sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40701
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 40702
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->initFields()V

    .line 40703
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39993
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40177
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedIsInitialized:B

    .line 40212
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedSerializedSize:I

    .line 39994
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;-><init>(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40177
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedIsInitialized:B

    .line 40212
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedSerializedSize:I

    .line 39995
    return-void
.end method

.method static synthetic access$54102(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54200(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39988
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$54202(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$54302(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object p1
.end method

.method static synthetic access$54402(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object p1
.end method

.method static synthetic access$54502(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I

    return p1
.end method

.method static synthetic access$54602(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39988
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 1

    .prologue
    .line 39999
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object v0
.end method

.method private getQueryTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40116
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    .line 40117
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40118
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40120
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    .line 40123
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

.method private initFields()V
    .registers 2

    .prologue
    .line 40171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    .line 40172
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    .line 40173
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->BEST:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    .line 40174
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 40175
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I

    .line 40176
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 40321
    #calls: Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->access$53900()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40324
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39988
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 40003
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object v0
.end method

.method public getFilter(I)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;
    .registers 3
    .parameter "index"

    .prologue
    .line 40137
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    return-object v0
.end method

.method public getFilterCount()I
    .registers 2

    .prologue
    .line 40134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40131
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 40157
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQueryText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40102
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    .line 40103
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40104
    check-cast v1, Ljava/lang/String;

    .line 40112
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40106
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40108
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40109
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40110
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->queryText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40112
    goto :goto_8
.end method

.method public getSearchRadiusMeters()I
    .registers 2

    .prologue
    .line 40167
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 40214
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedSerializedSize:I

    .line 40215
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 40244
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 40217
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 40218
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 40219
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 40223
    :cond_19
    const/4 v0, 0x0

    .line 40224
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_37

    .line 40225
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 40224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 40228
    :cond_37
    add-int/2addr v2, v0

    .line 40229
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 40231
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_54

    .line 40232
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 40235
    :cond_54
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v6, :cond_61

    .line 40236
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 40239
    :cond_61
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_71

    .line 40240
    const/4 v4, 0x5

    iget v5, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 40243
    :cond_71
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedSerializedSize:I

    move v3, v2

    .line 40244
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getSort()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;
    .registers 2

    .prologue
    .line 40147
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    return-object v0
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    .line 40154
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

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

.method public hasQueryText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40099
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSearchRadiusMeters()Z
    .registers 3

    .prologue
    .line 40164
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

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

.method public hasSort()Z
    .registers 3

    .prologue
    .line 40144
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40179
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedIsInitialized:B

    .line 40180
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 40189
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 40180
    goto :goto_9

    .line 40182
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->hasPosition()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 40183
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 40184
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedIsInitialized:B

    move v1, v2

    .line 40185
    goto :goto_9

    .line 40188
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39988
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40322
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39988
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;
    .registers 2

    .prologue
    .line 40326
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 40251
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 40194
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getSerializedSize()I

    .line 40195
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 40196
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getQueryTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40198
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 40199
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->filter_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Filter;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 40198
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 40201
    :cond_2e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_3e

    .line 40202
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->sort_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery$Sort;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 40204
    :cond_3e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_49

    .line 40205
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40207
    :cond_49
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_57

    .line 40208
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->searchRadiusMeters_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 40210
    :cond_57
    return-void
.end method
