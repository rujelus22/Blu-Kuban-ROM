.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$WordOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private characterBoxes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1348
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1497
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1540
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1349
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->maybeForceBuilderInitialization()V

    .line 1350
    return-void
.end method

.method static synthetic access$1300(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 1

    .prologue
    .line 1343
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1389
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1392
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 1

    .prologue
    .line 1355
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCharacterBoxesIsMutable()V
    .registers 3

    .prologue
    .line 1579
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1581
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1583
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1353
    return-void
.end method


# virtual methods
.method public addAllCharacterBoxes(Ljava/lang/Iterable;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;)",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;"
        }
    .end annotation

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1647
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1649
    return-object p0
.end method

.method public addCharacterBoxes(ILcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1640
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1642
    return-object p0
.end method

.method public addCharacterBoxes(ILcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1622
    if-nez p2, :cond_8

    .line 1623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1625
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1626
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1628
    return-object p0
.end method

.method public addCharacterBoxes(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1632
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1633
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1635
    return-object p0
.end method

.method public addCharacterBoxes(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1612
    if-nez p1, :cond_8

    .line 1613
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1615
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1616
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    return-object p0
.end method

.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    .line 1379
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1380
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1382
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 1396
    new-instance v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 1397
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1398
    const/4 v1, 0x0

    .line 1399
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3d

    .line 1402
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1602(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1403
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 1404
    or-int/lit8 v0, v0, 0x2

    .line 1406
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->text_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1702(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_34

    .line 1408
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1409
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1411
    :cond_34
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1802(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Ljava/util/List;)Ljava/util/List;

    .line 1412
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1902(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;I)I

    .line 1413
    return-object v2

    :cond_3d
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1359
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1360
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1361
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1363
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1365
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1366
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBox()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1533
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1535
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1536
    return-object p0
.end method

.method public clearCharacterBoxes()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1653
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1655
    return-object p0
.end method

.method public clearText()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 2

    .prologue
    .line 1564
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1565
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1567
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3

    .prologue
    .line 1370
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

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
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getCharacterBoxes(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 3
    .parameter

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getCharacterBoxesCount()I
    .registers 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCharacterBoxesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/BoundingBoxProtos$BoundingBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 2

    .prologue
    .line 1374
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1546
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1547
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1548
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1551
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasBox()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1499
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 1542
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

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
    const/4 v1, 0x0

    .line 1438
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1439
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1450
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v0, v1

    .line 1444
    :goto_13
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getCharacterBoxesCount()I

    move-result v2

    if-ge v0, v2, :cond_26

    .line 1445
    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getCharacterBoxes(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1450
    :cond_26
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public mergeBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1521
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1523
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1529
    :goto_1f
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1530
    return-object p0

    .line 1526
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1417
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1434
    :cond_6
    :goto_6
    return-object p0

    .line 1418
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->hasBox()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1419
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    .line 1421
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->hasText()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1422
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->setText(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    .line 1424
    :cond_21
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1425
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1426
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    .line 1427
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    goto :goto_6

    .line 1429
    :cond_40
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1430
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->characterBoxes_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->access$1800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1458
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1459
    sparse-switch v0, :sswitch_data_46

    .line 1464
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1466
    :sswitch_d
    return-object p0

    .line 1471
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 1472
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->hasBox()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1473
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->mergeFrom(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 1475
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1476
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->setBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    goto :goto_0

    .line 1480
    :sswitch_2a
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1481
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    goto :goto_0

    .line 1485
    :sswitch_37
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 1486
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1487
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->buildPartial()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->addCharacterBoxes(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    goto :goto_0

    .line 1459
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1343
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeCharacterBoxes(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1659
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1661
    return-object p0
.end method

.method public setBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1515
    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1517
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1518
    return-object p0
.end method

.method public setBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1505
    if-nez p1, :cond_8

    .line 1506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1508
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->box_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1510
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1511
    return-object p0
.end method

.method public setCharacterBoxes(ILcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1606
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1607
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->build()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1609
    return-object p0
.end method

.method public setCharacterBoxes(ILcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1596
    if-nez p2, :cond_8

    .line 1597
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1599
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->ensureCharacterBoxesIsMutable()V

    .line 1600
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->characterBoxes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1602
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1555
    if-nez p1, :cond_8

    .line 1556
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1558
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1559
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1561
    return-object p0
.end method

.method setText(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1570
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->bitField0_:I

    .line 1571
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->text_:Ljava/lang/Object;

    .line 1573
    return-void
.end method
