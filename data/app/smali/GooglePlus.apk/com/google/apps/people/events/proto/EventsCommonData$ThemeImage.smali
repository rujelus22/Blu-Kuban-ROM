.class public final Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

.field private static final serialVersionUID:J


# instance fields
.field private aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

.field private bitField0_:I

.field private format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2794
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    .line 2795
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->initFields()V

    .line 2796
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2373
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2444
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedIsInitialized:B

    .line 2467
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedSerializedSize:I

    .line 2374
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2375
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2444
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedIsInitialized:B

    .line 2467
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedSerializedSize:I

    .line 2375
    return-void
.end method

.method static synthetic access$3402(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2368
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .registers 1

    .prologue
    .line 2379
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    return-object v0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2428
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    .line 2429
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2430
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2432
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    .line 2435
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
    .line 2440
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->GIF:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    .line 2441
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->SMALL:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    .line 2442
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    .line 2443
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 1

    .prologue
    .line 2563
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->access$3200()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2566
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAspectRatio()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;
    .registers 2

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;
    .registers 2

    .prologue
    .line 2383
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;
    .registers 2

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2469
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedSerializedSize:I

    .line 2470
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2486
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2472
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2473
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 2474
    iget-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2477
    :cond_1b
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2c

    .line 2478
    iget-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2481
    :cond_2c
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3d

    .line 2482
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2485
    :cond_3d
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedSerializedSize:I

    move v1, v0

    .line 2486
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2414
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    .line 2415
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2416
    check-cast v1, Ljava/lang/String;

    .line 2424
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2418
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2420
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2421
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2422
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2424
    goto :goto_8
.end method

.method public hasAspectRatio()Z
    .registers 3

    .prologue
    .line 2401
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2391
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 2411
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2446
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedIsInitialized:B

    .line 2447
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2450
    :goto_8
    return v1

    .line 2447
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2449
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 2

    .prologue
    .line 2564
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;
    .registers 2

    .prologue
    .line 2568
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;)Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage$Builder;

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
    .line 2493
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2455
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getSerializedSize()I

    .line 2456
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 2457
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->format_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageFormat;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2459
    :cond_14
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_23

    .line 2460
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->aspectRatio_:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$ImageAspectRatio;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2462
    :cond_23
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 2463
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2465
    :cond_32
    return-void
.end method
