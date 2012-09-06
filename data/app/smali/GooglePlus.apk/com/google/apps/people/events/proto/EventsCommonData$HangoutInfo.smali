.class public final Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3691
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    .line 3692
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->initFields()V

    .line 3693
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3390
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3439
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedIsInitialized:B

    .line 3456
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedSerializedSize:I

    .line 3391
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3392
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3439
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedIsInitialized:B

    .line 3456
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedSerializedSize:I

    .line 3392
    return-void
.end method

.method static synthetic access$4802(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3385
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 1

    .prologue
    .line 3396
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    return-object v0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3425
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    .line 3426
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3427
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3429
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    .line 3432
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
    .line 3437
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    .line 3438
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 1

    .prologue
    .line 3544
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->access$4600()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3547
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;
    .registers 2

    .prologue
    .line 3400
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3458
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedSerializedSize:I

    .line 3459
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 3467
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 3461
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 3462
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 3463
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3466
    :cond_18
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 3467
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3411
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    .line 3412
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3413
    check-cast v1, Ljava/lang/String;

    .line 3421
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3415
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3417
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3418
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3419
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3421
    goto :goto_8
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3408
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->bitField0_:I

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

    .line 3441
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedIsInitialized:B

    .line 3442
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3445
    :goto_8
    return v1

    .line 3442
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3444
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 2

    .prologue
    .line 3545
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;
    .registers 2

    .prologue
    .line 3549
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo$Builder;

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
    .line 3474
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3450
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getSerializedSize()I

    .line 3451
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 3452
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$HangoutInfo;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3454
    :cond_11
    return-void
.end method
