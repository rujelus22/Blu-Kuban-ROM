.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timeMs_:J

.field private timezone_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2346
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    .line 2347
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->initFields()V

    .line 2348
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1992
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2052
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedIsInitialized:B

    .line 2072
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedSerializedSize:I

    .line 1993
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1987
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2052
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedIsInitialized:B

    .line 2072
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedSerializedSize:I

    .line 1994
    return-void
.end method

.method static synthetic access$2802(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1987
    iput-wide p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J

    return-wide p1
.end method

.method static synthetic access$2902(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1987
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 1

    .prologue
    .line 1998
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method private getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2037
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    .line 2038
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2039
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2041
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    .line 2044
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
    .registers 3

    .prologue
    .line 2049
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J

    .line 2050
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    .line 2051
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 1

    .prologue
    .line 2164
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->access$2600()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2167
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;
    .registers 2

    .prologue
    .line 2002
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2074
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedSerializedSize:I

    .line 2075
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2087
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2077
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2078
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 2079
    iget-wide v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2082
    :cond_17
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_26

    .line 2083
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2086
    :cond_26
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedSerializedSize:I

    move v1, v0

    .line 2087
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTimeMs()J
    .registers 3

    .prologue
    .line 2013
    iget-wide v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2023
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    .line 2024
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2025
    check-cast v1, Ljava/lang/String;

    .line 2033
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2027
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2029
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2030
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2031
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timezone_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2033
    goto :goto_8
.end method

.method public hasTimeMs()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2010
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimezone()Z
    .registers 3

    .prologue
    .line 2020
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2054
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedIsInitialized:B

    .line 2055
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2058
    :goto_8
    return v1

    .line 2055
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2057
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 2

    .prologue
    .line 2165
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;
    .registers 2

    .prologue
    .line 2169
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;)Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1987
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventTime$Builder;

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
    .line 2094
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

    .line 2063
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getSerializedSize()I

    .line 2064
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 2065
    iget-wide v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->timeMs_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2067
    :cond_10
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1d

    .line 2068
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventTime;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2070
    :cond_1d
    return-void
.end method
