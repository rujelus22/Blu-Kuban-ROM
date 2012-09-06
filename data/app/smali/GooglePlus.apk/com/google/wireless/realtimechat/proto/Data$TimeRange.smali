.class public final Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$TimeRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private end_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private start_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3369
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    .line 3370
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->initFields()V

    .line 3371
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3052
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3090
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedIsInitialized:B

    .line 3110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedSerializedSize:I

    .line 3053
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3047
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;-><init>(Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3090
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedIsInitialized:B

    .line 3110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedSerializedSize:I

    .line 3054
    return-void
.end method

.method static synthetic access$4302(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3047
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J

    return-wide p1
.end method

.method static synthetic access$4402(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3047
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J

    return-wide p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3047
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 1

    .prologue
    .line 3058
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 3087
    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J

    .line 3088
    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J

    .line 3089
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 1

    .prologue
    .line 3202
    #calls: Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->access$4100()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3047
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange;
    .registers 2

    .prologue
    .line 3062
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$TimeRange;

    return-object v0
.end method

.method public getEnd()J
    .registers 3

    .prologue
    .line 3083
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3112
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedSerializedSize:I

    .line 3113
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3125
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3115
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3116
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 3117
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3120
    :cond_17
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_24

    .line 3121
    iget-wide v2, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3124
    :cond_24
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedSerializedSize:I

    move v1, v0

    .line 3125
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStart()J
    .registers 3

    .prologue
    .line 3073
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J

    return-wide v0
.end method

.method public hasEnd()Z
    .registers 3

    .prologue
    .line 3080
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

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

.method public hasStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3070
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

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
    const/4 v1, 0x1

    .line 3092
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedIsInitialized:B

    .line 3093
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3096
    :goto_8
    return v1

    .line 3093
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3095
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3047
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 2

    .prologue
    .line 3203
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3047
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;
    .registers 2

    .prologue
    .line 3207
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$TimeRange;)Lcom/google/wireless/realtimechat/proto/Data$TimeRange$Builder;

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
    .line 3132
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3101
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->getSerializedSize()I

    .line 3102
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 3103
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->start_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3105
    :cond_10
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 3106
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$TimeRange;->end_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3108
    :cond_1b
    return-void
.end method
