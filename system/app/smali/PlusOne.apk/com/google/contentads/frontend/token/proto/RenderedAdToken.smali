.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderedAdToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;,
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;,
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;,
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

.field private static final serialVersionUID:J


# instance fields
.field private adgroupId_:J

.field private attribution_:Ljava/lang/Object;

.field private bitField0_:I

.field private clickUrl_:Ljava/lang/Object;

.field private creativeId_:J

.field private creativeType_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

.field private visibleUrl_:Ljava/lang/Object;

.field private visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2072
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;-><init>(Z)V

    sput-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    .line 2073
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->initFields()V

    .line 2074
    return-void
.end method

.method private constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1432
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedIsInitialized:B

    .line 1476
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1432
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedIsInitialized:B

    .line 1476
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$2102(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I

    return p1
.end method

.method static synthetic access$2202(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-wide p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J

    return-wide p1
.end method

.method static synthetic access$2302(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-wide p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/contentads/frontend/token/proto/RenderedAdToken;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    return p1
.end method

.method private getAttributionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1391
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    .line 1392
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1393
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1395
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    .line 1398
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

.method private getClickUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    .line 1328
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1329
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1331
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    .line 1334
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

.method public static getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken;

    return-object v0
.end method

.method private getVisibleUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    .line 1360
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1361
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1363
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    .line 1366
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
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1423
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I

    .line 1424
    iput-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J

    .line 1425
    iput-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J

    .line 1426
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    .line 1427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    .line 1429
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 1430
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 1431
    return-void
.end method

.method public static newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    .registers 1

    .prologue
    .line 1592
    #calls: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->access$1900()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAdgroupId()J
    .registers 3

    .prologue
    .line 1303
    iget-wide v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J

    return-wide v0
.end method

.method public getAttribution()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    .line 1378
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1379
    check-cast v1, Ljava/lang/String;

    .line 1387
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1381
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1383
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1384
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1385
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->attribution_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1387
    goto :goto_8
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    .line 1314
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1315
    check-cast v1, Ljava/lang/String;

    .line 1323
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1317
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1319
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1320
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1321
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->clickUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1323
    goto :goto_8
.end method

.method public getCreativeId()J
    .registers 3

    .prologue
    .line 1293
    iget-wide v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J

    return-wide v0
.end method

.method public getCreativeType()I
    .registers 2

    .prologue
    .line 1283
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1478
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedSerializedSize:I

    .line 1479
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1515
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1481
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1482
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 1483
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1486
    :cond_18
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_29

    .line 1487
    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getClickUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1490
    :cond_29
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3b

    .line 1491
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getVisibleUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1494
    :cond_3b
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4a

    .line 1495
    iget-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1498
    :cond_4a
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5b

    .line 1499
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1502
    :cond_5b
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_6a

    .line 1503
    const/16 v2, 0xd

    iget-wide v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1506
    :cond_6a
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_79

    .line 1507
    const/16 v2, 0xe

    iget-wide v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1510
    :cond_79
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8c

    .line 1511
    const/16 v2, 0x13

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getAttributionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1514
    :cond_8c
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->memoizedSerializedSize:I

    move v1, v0

    .line 1515
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_9
.end method

.method public getTextElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    return-object v0
.end method

.method public getVisibleUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1345
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    .line 1346
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1347
    check-cast v1, Ljava/lang/String;

    .line 1355
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1349
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1351
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1352
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1353
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visibleUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1355
    goto :goto_8
.end method

.method public getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    return-object v0
.end method

.method public hasAdgroupId()Z
    .registers 3

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

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

.method public hasAttribution()Z
    .registers 3

    .prologue
    .line 1374
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasClickUrl()Z
    .registers 3

    .prologue
    .line 1310
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

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

.method public hasCreativeId()Z
    .registers 3

    .prologue
    .line 1290
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

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

.method public hasCreativeType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1280
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTextElement()Z
    .registers 3

    .prologue
    .line 1416
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasVisibleUrl()Z
    .registers 3

    .prologue
    .line 1342
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasVisualElement()Z
    .registers 3

    .prologue
    .line 1406
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1522
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1449
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getSerializedSize()I

    .line 1450
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1451
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeType_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1453
    :cond_11
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 1454
    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getClickUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1456
    :cond_20
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_30

    .line 1457
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getVisibleUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1459
    :cond_30
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3d

    .line 1460
    iget-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->visualElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1462
    :cond_3d
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4c

    .line 1463
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->textElement_:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 1465
    :cond_4c
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_59

    .line 1466
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->creativeId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1468
    :cond_59
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_66

    .line 1469
    const/16 v0, 0xe

    iget-wide v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->adgroupId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1471
    :cond_66
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_77

    .line 1472
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->getAttributionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1474
    :cond_77
    return-void
.end method
