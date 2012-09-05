.class public final Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$Event$Step;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$Event$Step;",
        "Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$Event$StepOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private endTimeMsec_:J

.field private endTime_:J

.field private name_:Ljava/lang/Object;

.field private startTimeMsec_:J

.field private startTime_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1358
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1359
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->maybeForceBuilderInitialization()V

    .line 1360
    return-void
.end method

.method static synthetic access$1200()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 1

    .prologue
    .line 1353
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 1

    .prologue
    .line 1365
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1363
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 3

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    .line 1393
    .local v0, result:Lcom/google/wireless/webapps/Analytics$Event$Step;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1394
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1396
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 6

    .prologue
    .line 1410
    new-instance v1, Lcom/google/wireless/webapps/Analytics$Event$Step;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$Event$Step;-><init>(Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 1411
    .local v1, result:Lcom/google/wireless/webapps/Analytics$Event$Step;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1412
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1413
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1414
    or-int/lit8 v2, v2, 0x1

    .line 1416
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1402(Lcom/google/wireless/webapps/Analytics$Event$Step;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1418
    or-int/lit8 v2, v2, 0x2

    .line 1420
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->startTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1502(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J

    .line 1421
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1422
    or-int/lit8 v2, v2, 0x4

    .line 1424
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->endTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1602(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J

    .line 1425
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1426
    or-int/lit8 v2, v2, 0x8

    .line 1428
    :cond_35
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->startTimeMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1702(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J

    .line 1429
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1430
    or-int/lit8 v2, v2, 0x10

    .line 1432
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->endTimeMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1802(Lcom/google/wireless/webapps/Analytics$Event$Step;J)J

    .line 1433
    #setter for: Lcom/google/wireless/webapps/Analytics$Event$Step;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$Event$Step;->access$1902(Lcom/google/wireless/webapps/Analytics$Event$Step;I)I

    .line 1434
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->clear()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->clear()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1369
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1371
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1372
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    .line 1373
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1374
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    .line 1375
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1376
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    .line 1377
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1378
    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    .line 1379
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1380
    return-object p0
.end method

.method public clearEndTime()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1581
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    .line 1584
    return-object p0
.end method

.method public clearEndTimeMsec()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3

    .prologue
    .line 1623
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    .line 1626
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 2

    .prologue
    .line 1534
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1535
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1537
    return-object p0
.end method

.method public clearStartTime()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1560
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1561
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    .line 1563
    return-object p0
.end method

.method public clearStartTimeMsec()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3

    .prologue
    .line 1602
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1603
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    .line 1605
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3

    .prologue
    .line 1384
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->create()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

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
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->clone()Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1353
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$Event$Step;
    .registers 2

    .prologue
    .line 1388
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1572
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    return-wide v0
.end method

.method public getEndTimeMsec()J
    .registers 3

    .prologue
    .line 1614
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1516
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1517
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1518
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1521
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

.method public getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1551
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    return-wide v0
.end method

.method public getStartTimeMsec()J
    .registers 3

    .prologue
    .line 1593
    iget-wide v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    return-wide v0
.end method

.method public hasEndTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1569
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

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

.method public hasEndTimeMsec()Z
    .registers 3

    .prologue
    .line 1611
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1512
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStartTime()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1548
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

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

.method public hasStartTimeMsec()Z
    .registers 3

    .prologue
    .line 1590
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

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
    .line 1353
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

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
    .line 1353
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1466
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1467
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_50

    .line 1472
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1474
    :sswitch_d
    return-object p0

    .line 1479
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1480
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1484
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1485
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    goto :goto_0

    .line 1489
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1490
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    goto :goto_0

    .line 1494
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1495
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    goto :goto_0

    .line 1499
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1500
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    goto :goto_0

    .line 1467
    nop

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$Event$Step;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1438
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$Event$Step;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1454
    :cond_6
    :goto_6
    return-object p0

    .line 1439
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->hasName()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1440
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    .line 1442
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1443
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->setStartTime(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    .line 1445
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->hasEndTime()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1446
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->setEndTime(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    .line 1448
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->hasStartTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1449
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getStartTimeMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    .line 1451
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->hasEndTimeMsec()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1452
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$Event$Step;->getEndTimeMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;

    goto :goto_6
.end method

.method public setEndTime(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1575
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1576
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTime_:J

    .line 1578
    return-object p0
.end method

.method public setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1617
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1618
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->endTimeMsec_:J

    .line 1620
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1525
    if-nez p1, :cond_8

    .line 1526
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1528
    :cond_8
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1529
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->name_:Ljava/lang/Object;

    .line 1531
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1554
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1555
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTime_:J

    .line 1557
    return-object p0
.end method

.method public setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1596
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->bitField0_:I

    .line 1597
    iput-wide p1, p0, Lcom/google/wireless/webapps/Analytics$Event$Step$Builder;->startTimeMsec_:J

    .line 1599
    return-object p0
.end method
