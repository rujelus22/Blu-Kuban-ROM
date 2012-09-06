.class public final Lcom/google/apps/tacotown/proto/data/ViewSegments;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ViewSegments.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/ViewSegmentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/ViewSegments$1;,
        Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/ViewSegments;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private segments_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/tacotown/proto/data/Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 359
    new-instance v0, Lcom/google/apps/tacotown/proto/data/ViewSegments;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/ViewSegments;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->defaultInstance:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 360
    sget-object v0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->defaultInstance:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->initFields()V

    .line 361
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedIsInitialized:B

    .line 64
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;Lcom/google/apps/tacotown/proto/data/ViewSegments$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/ViewSegments;-><init>(Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedIsInitialized:B

    .line 64
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$300(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/ViewSegments;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->defaultInstance:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    .line 46
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 1

    .prologue
    .line 152
    #calls: Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->create()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 155
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->defaultInstance:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentsCount()I
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/tacotown/proto/data/Segment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 66
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedSerializedSize:I

    .line 67
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 75
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 69
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 71
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 74
    :cond_22
    iput v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedSerializedSize:I

    move v2, v1

    .line 75
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedIsInitialized:B

    .line 50
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 53
    :goto_8
    return v1

    .line 50
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 52
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;
    .registers 2

    .prologue
    .line 157
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->newBuilder(Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->toBuilder()Lcom/google/apps/tacotown/proto/data/ViewSegments$Builder;

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
    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getSerializedSize()I

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 60
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/ViewSegments;->segments_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 62
    :cond_1b
    return-void
.end method
