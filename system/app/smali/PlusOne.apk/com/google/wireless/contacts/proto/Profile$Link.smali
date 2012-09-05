.class public final Lcom/google/wireless/contacts/proto/Profile$Link;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Link;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private domain_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1866
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Link;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$Link;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Profile$Link;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Link;

    .line 1867
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Link;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Link;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Link;->initFields()V

    .line 1868
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1306
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1432
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedIsInitialized:B

    .line 1458
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedSerializedSize:I

    .line 1307
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Profile$Link;-><init>(Lcom/google/wireless/contacts/proto/Profile$Link$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1308
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1432
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedIsInitialized:B

    .line 1458
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedSerializedSize:I

    .line 1308
    return-void
.end method

.method static synthetic access$2202(Lcom/google/wireless/contacts/proto/Profile$Link;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/contacts/proto/Profile$Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/wireless/contacts/proto/Profile$Link;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    iput p1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 1

    .prologue
    .line 1312
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Link;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method private getDomainBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    .line 1384
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1385
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1387
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    .line 1390
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

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    .line 1416
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1417
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1419
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    .line 1422
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1351
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    .line 1352
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1353
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1355
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    .line 1358
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
    .line 1427
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 1428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    .line 1429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    .line 1430
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    .line 1431
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    .registers 1

    .prologue
    .line 1558
    #calls: Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Link$Builder;->access$2000()Lcom/google/wireless/contacts/proto/Profile$Link$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Link;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Link;
    .registers 2

    .prologue
    .line 1316
    sget-object v0, Lcom/google/wireless/contacts/proto/Profile$Link;->defaultInstance:Lcom/google/wireless/contacts/proto/Profile$Link;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1369
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    .line 1370
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1371
    check-cast v1, Ljava/lang/String;

    .line 1379
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1373
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1375
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1376
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1377
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->domain_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1379
    goto :goto_8
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    .line 1402
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1403
    check-cast v1, Ljava/lang/String;

    .line 1411
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1405
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1407
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1408
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1409
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1411
    goto :goto_8
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1460
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedSerializedSize:I

    .line 1461
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1481
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1463
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1464
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 1465
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1468
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 1469
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1472
    :cond_27
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 1473
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1476
    :cond_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 1477
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1480
    :cond_48
    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedSerializedSize:I

    move v1, v0

    .line 1481
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    .line 1338
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1339
    check-cast v1, Ljava/lang/String;

    .line 1347
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1341
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1343
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1344
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1345
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1347
    goto :goto_8
.end method

.method public hasDomain()Z
    .registers 3

    .prologue
    .line 1366
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 1398
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

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

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1324
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

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
    .line 1334
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

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

    .line 1434
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedIsInitialized:B

    .line 1435
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1438
    :goto_8
    return v1

    .line 1435
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1437
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1488
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

    .line 1443
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getSerializedSize()I

    .line 1444
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1445
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1447
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 1448
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1450
    :cond_1e
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 1451
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getDomainBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1453
    :cond_2c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 1454
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Link;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1456
    :cond_3b
    return-void
.end method
