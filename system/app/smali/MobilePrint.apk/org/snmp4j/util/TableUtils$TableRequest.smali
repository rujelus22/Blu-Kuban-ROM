.class public Lorg/snmp4j/util/TableUtils$TableRequest;
.super Ljava/lang/Object;
.source "TableUtils.java"

# interfaces
.implements Lorg/snmp4j/event/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableRequest"
.end annotation


# instance fields
.field private anyMatch:Z

.field columnOIDs:[Lorg/snmp4j/smi/OID;

.field volatile finished:Z

.field protected lastReceived:Ljava/util/Vector;

.field private lastSent:Ljava/util/Vector;

.field listener:Lorg/snmp4j/util/TableListener;

.field lowerBoundIndex:Lorg/snmp4j/smi/OID;

.field private rowCache:Ljava/util/LinkedList;

.field private sent:I

.field target:Lorg/snmp4j/Target;

.field private final this$0:Lorg/snmp4j/util/TableUtils;

.field upperBoundIndex:Lorg/snmp4j/smi/OID;

.field userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V
    .registers 12
    .parameter
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "listener"
    .parameter "userObject"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    const/4 v3, 0x0

    .line 345
    iput-object p1, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput v3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    .line 333
    iput-boolean v3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->anyMatch:Z

    .line 334
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastSent:Ljava/util/Vector;

    .line 335
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    .line 338
    iput-boolean v3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 346
    iput-object p2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->target:Lorg/snmp4j/Target;

    .line 347
    iput-object p3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->columnOIDs:[Lorg/snmp4j/smi/OID;

    .line 348
    iput-object p4, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    .line 349
    iput-object p5, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    .line 350
    new-instance v2, Ljava/util/Vector;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    .line 351
    iput-object p7, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    .line 352
    iput-object p6, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lowerBoundIndex:Lorg/snmp4j/smi/OID;

    .line 353
    if-eqz p6, :cond_50

    .line 354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_30
    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_50

    .line 355
    new-instance v1, Lorg/snmp4j/smi/OID;

    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/OID;

    invoke-direct {v1, v2}, Lorg/snmp4j/smi/OID;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 356
    .local v1, oid:Lorg/snmp4j/smi/OID;
    invoke-virtual {v1, p6}, Lorg/snmp4j/smi/OID;->append(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/smi/OID;

    .line 357
    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 360
    .end local v0           #i:I
    .end local v1           #oid:Lorg/snmp4j/smi/OID;
    :cond_50
    return-void
.end method

.method private emptyCache()V
    .registers 3

    .prologue
    .line 572
    :cond_0
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 573
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    invoke-direct {p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->getTableEvent()Lorg/snmp4j/util/TableEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/util/TableListener;->next(Lorg/snmp4j/util/TableEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    :cond_14
    return-void
.end method

.method private getTableEvent()Lorg/snmp4j/util/TableEvent;
    .registers 6

    .prologue
    .line 580
    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/util/TableUtils$Row;

    .line 581
    .local v0, r:Lorg/snmp4j/util/TableUtils$Row;
    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->columnOIDs:[Lorg/snmp4j/smi/OID;

    array-length v2, v2

    invoke-virtual {v0, v2}, Lorg/snmp4j/util/TableUtils$Row;->setNumComplete(I)Z

    .line 582
    invoke-virtual {v0}, Lorg/snmp4j/util/TableUtils$Row;->size()I

    move-result v2

    new-array v1, v2, [Lorg/snmp4j/smi/VariableBinding;

    .line 583
    .local v1, vbs:[Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v0, v1}, Lorg/snmp4j/util/TableUtils$Row;->copyInto([Ljava/lang/Object;)V

    .line 584
    new-instance v2, Lorg/snmp4j/util/TableEvent;

    iget-object v3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/smi/OID;[Lorg/snmp4j/smi/VariableBinding;)V

    return-object v2
.end method


# virtual methods
.method protected checkResponse(Lorg/snmp4j/event/ResponseEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 541
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 542
    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 543
    invoke-direct {p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->emptyCache()V

    .line 544
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    new-instance v1, Lorg/snmp4j/util/TableEvent;

    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getError()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    .line 568
    :goto_1c
    const/4 v0, 0x0

    :cond_1d
    return v0

    .line 546
    :cond_1e
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v1

    if-nez v1, :cond_37

    .line 547
    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 549
    invoke-direct {p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->emptyCache()V

    .line 550
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    new-instance v1, Lorg/snmp4j/util/TableEvent;

    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    goto :goto_1c

    .line 553
    :cond_37
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/PDU;->getType()I

    move-result v1

    const/16 v2, -0x58

    if-ne v1, v2, :cond_59

    .line 554
    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 555
    invoke-direct {p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->emptyCache()V

    .line 556
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    new-instance v1, Lorg/snmp4j/util/TableEvent;

    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V

    invoke-interface {v0, v1}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    goto :goto_1c

    .line 559
    :cond_59
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v1

    invoke-virtual {v1}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 560
    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 561
    invoke-direct {p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->emptyCache()V

    .line 562
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    new-instance v1, Lorg/snmp4j/util/TableEvent;

    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v3

    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    goto :goto_1c
.end method

.method public getRow(Lorg/snmp4j/smi/OID;)Lorg/snmp4j/util/TableUtils$Row;
    .registers 6
    .parameter "index"

    .prologue
    .line 588
    iget-object v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 589
    .local v0, it:Ljava/util/ListIterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 590
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/util/TableUtils$Row;

    .line 591
    .local v1, r:Lorg/snmp4j/util/TableUtils$Row;
    invoke-virtual {v1}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 595
    .end local v1           #r:Lorg/snmp4j/util/TableUtils$Row;
    :goto_24
    return-object v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 28
    .parameter "event"

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/snmp4j/Session;->cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 538
    :goto_21
    return-void

    .line 425
    :cond_22
    monitor-enter p0

    .line 426
    :try_start_23
    invoke-virtual/range {p0 .. p1}, Lorg/snmp4j/util/TableUtils$TableRequest;->checkResponse(Lorg/snmp4j/event/ResponseEvent;)Z

    move-result v22

    if-eqz v22, :cond_2a7

    .line 427
    const/4 v4, 0x0

    .line 428
    .local v4, anyMatchInChunk:Z
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 429
    .local v20, startCol:I
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v16

    .line 430
    .local v16, request:Lorg/snmp4j/PDU;
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v17

    .line 431
    .local v17, response:Lorg/snmp4j/PDU;
    invoke-virtual/range {v16 .. v16}, Lorg/snmp4j/PDU;->size()I

    move-result v7

    .line 432
    .local v7, cols:I
    invoke-virtual/range {v17 .. v17}, Lorg/snmp4j/PDU;->size()I

    move-result v22

    div-int v19, v22, v7

    .line 433
    .local v19, rows:I
    const/4 v12, 0x0

    .line 434
    .local v12, lastMinIndex:Lorg/snmp4j/smi/OID;
    const/4 v15, 0x0

    .local v15, r:I
    :goto_48
    move/from16 v0, v19

    if-ge v15, v0, :cond_1fc

    .line 435
    const/16 v18, 0x0

    .line 436
    .local v18, row:Lorg/snmp4j/util/TableUtils$Row;
    const/4 v4, 0x0

    .line 437
    const/4 v5, 0x0

    .local v5, c:I
    :goto_50
    invoke-virtual/range {v16 .. v16}, Lorg/snmp4j/PDU;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v5, v0, :cond_1f8

    .line 438
    add-int v14, v20, v5

    .line 439
    .local v14, pos:I
    mul-int v22, v15, v7

    add-int v22, v22, v5

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v21

    .line 440
    .local v21, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/VariableBinding;->isException()Z

    move-result v22

    if-eqz v22, :cond_6f

    .line 437
    :cond_6c
    :goto_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_50

    .line 443
    :cond_6f
    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v9

    .line 444
    .local v9, id:Lorg/snmp4j/smi/OID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->columnOIDs:[Lorg/snmp4j/smi/OID;

    move-object/from16 v22, v0

    aget-object v6, v22, v14

    .line 445
    .local v6, col:Lorg/snmp4j/smi/OID;
    invoke-virtual {v9, v6}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v22

    if-eqz v22, :cond_6c

    .line 446
    new-instance v10, Lorg/snmp4j/smi/OID;

    invoke-virtual {v9}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v22

    invoke-virtual {v6}, Lorg/snmp4j/smi/OID;->size()I

    move-result v23

    invoke-virtual {v9}, Lorg/snmp4j/smi/OID;->size()I

    move-result v24

    invoke-virtual {v6}, Lorg/snmp4j/smi/OID;->size()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v10, v0, v1, v2}, Lorg/snmp4j/smi/OID;-><init>([III)V

    .line 448
    .local v10, index:Lorg/snmp4j/smi/OID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v22

    if-gtz v22, :cond_6c

    .line 452
    :cond_b4
    if-eqz v12, :cond_bc

    invoke-virtual {v10, v12}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_bd

    .line 454
    :cond_bc
    move-object v12, v10

    .line 456
    :cond_bd
    const/4 v4, 0x1

    .line 457
    if-eqz v18, :cond_cc

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_fc

    .line 458
    :cond_cc
    const/16 v18, 0x0

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    .line 460
    .local v11, it:Ljava/util/ListIterator;
    :cond_e2
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v22

    if-eqz v22, :cond_fc

    .line 461
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/snmp4j/util/TableUtils$Row;

    .line 462
    .local v13, lastRow:Lorg/snmp4j/util/TableUtils$Row;
    invoke-virtual {v13}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v8

    .line 463
    .local v8, compareResult:I
    if-nez v8, :cond_16a

    .line 464
    move-object/from16 v18, v13

    .line 472
    .end local v8           #compareResult:I
    .end local v11           #it:Ljava/util/ListIterator;
    .end local v13           #lastRow:Lorg/snmp4j/util/TableUtils$Row;
    :cond_fc
    :goto_fc
    if-nez v18, :cond_126

    .line 473
    new-instance v18, Lorg/snmp4j/util/TableUtils$Row;

    .end local v18           #row:Lorg/snmp4j/util/TableUtils$Row;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lorg/snmp4j/util/TableUtils$Row;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/smi/OID;)V

    .line 474
    .restart local v18       #row:Lorg/snmp4j/util/TableUtils$Row;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    if-nez v22, :cond_16d

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_126
    :goto_126
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/snmp4j/util/TableUtils$Row;->setNumComplete(I)Z

    move-result v22

    if-eqz v22, :cond_136

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/util/TableUtils$Row;->size()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v14, :cond_1c9

    :cond_136
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/snmp4j/util/TableUtils$Row;->get(I)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_1c9

    .line 495
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v22, v0

    new-instance v23, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, -0x2

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface/range {v22 .. v23}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    .line 498
    monitor-exit p0

    goto/16 :goto_21

    .line 537
    .end local v4           #anyMatchInChunk:Z
    .end local v5           #c:I
    .end local v6           #col:Lorg/snmp4j/smi/OID;
    .end local v7           #cols:I
    .end local v9           #id:Lorg/snmp4j/smi/OID;
    .end local v10           #index:Lorg/snmp4j/smi/OID;
    .end local v12           #lastMinIndex:Lorg/snmp4j/smi/OID;
    .end local v14           #pos:I
    .end local v15           #r:I
    .end local v16           #request:Lorg/snmp4j/PDU;
    .end local v17           #response:Lorg/snmp4j/PDU;
    .end local v18           #row:Lorg/snmp4j/util/TableUtils$Row;
    .end local v19           #rows:I
    .end local v20           #startCol:I
    .end local v21           #vb:Lorg/snmp4j/smi/VariableBinding;
    :catchall_167
    move-exception v22

    monitor-exit p0
    :try_end_169
    .catchall {:try_start_23 .. :try_end_169} :catchall_167

    throw v22

    .line 467
    .restart local v4       #anyMatchInChunk:Z
    .restart local v5       #c:I
    .restart local v6       #col:Lorg/snmp4j/smi/OID;
    .restart local v7       #cols:I
    .restart local v8       #compareResult:I
    .restart local v9       #id:Lorg/snmp4j/smi/OID;
    .restart local v10       #index:Lorg/snmp4j/smi/OID;
    .restart local v11       #it:Ljava/util/ListIterator;
    .restart local v12       #lastMinIndex:Lorg/snmp4j/smi/OID;
    .restart local v13       #lastRow:Lorg/snmp4j/util/TableUtils$Row;
    .restart local v14       #pos:I
    .restart local v15       #r:I
    .restart local v16       #request:Lorg/snmp4j/PDU;
    .restart local v17       #response:Lorg/snmp4j/PDU;
    .restart local v18       #row:Lorg/snmp4j/util/TableUtils$Row;
    .restart local v19       #rows:I
    .restart local v20       #startCol:I
    .restart local v21       #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_16a
    if-lez v8, :cond_e2

    goto :goto_fc

    .line 477
    .end local v8           #compareResult:I
    .end local v11           #it:Ljava/util/ListIterator;
    .end local v13           #lastRow:Lorg/snmp4j/util/TableUtils$Row;
    :cond_16d
    :try_start_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/snmp4j/util/TableUtils$Row;

    invoke-virtual/range {v22 .. v22}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v22

    if-ltz v22, :cond_193

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_126

    .line 482
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v11

    .line 483
    .restart local v11       #it:Ljava/util/ListIterator;
    :cond_1a7
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v22

    if-eqz v22, :cond_126

    .line 484
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/snmp4j/util/TableUtils$Row;

    .line 485
    .restart local v13       #lastRow:Lorg/snmp4j/util/TableUtils$Row;
    invoke-static {v13}, Lorg/snmp4j/util/TableUtils$Row;->access$300(Lorg/snmp4j/util/TableUtils$Row;)Lorg/snmp4j/smi/OID;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v22

    if-ltz v22, :cond_1a7

    .line 486
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 487
    invoke-interface {v11, v13}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto/16 :goto_126

    .line 500
    .end local v11           #it:Ljava/util/ListIterator;
    .end local v13           #lastRow:Lorg/snmp4j/util/TableUtils$Row;
    :cond_1c9
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lorg/snmp4j/util/TableUtils$Row;->setNumComplete(I)Z

    .line 501
    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/util/TableUtils$Row;->getNumComplete()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_1f0

    .line 502
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/snmp4j/util/TableUtils$Row;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 507
    :goto_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6c

    .line 505
    :cond_1f0
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/snmp4j/util/TableUtils$Row;->add(Ljava/lang/Object;)Z

    goto :goto_1dd

    .line 434
    .end local v6           #col:Lorg/snmp4j/smi/OID;
    .end local v9           #id:Lorg/snmp4j/smi/OID;
    .end local v10           #index:Lorg/snmp4j/smi/OID;
    .end local v14           #pos:I
    .end local v21           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_1f8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_48

    .line 511
    .end local v5           #c:I
    .end local v18           #row:Lorg/snmp4j/util/TableUtils$Row;
    :cond_1fc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->anyMatch:Z

    move/from16 v22, v0

    or-int v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->anyMatch:Z

    .line 514
    :cond_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    if-lez v22, :cond_286

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/snmp4j/util/TableUtils$Row;

    invoke-virtual/range {v22 .. v22}, Lorg/snmp4j/util/TableUtils$Row;->getNumComplete()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->columnOIDs:[Lorg/snmp4j/smi/OID;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_286

    if-eqz v12, :cond_251

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->rowCache:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/snmp4j/util/TableUtils$Row;

    invoke-virtual/range {v22 .. v22}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v22

    if-gez v22, :cond_286

    .line 518
    :cond_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->getTableEvent()Lorg/snmp4j/util/TableEvent;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lorg/snmp4j/util/TableListener;->next(Lorg/snmp4j/util/TableEvent;)Z

    move-result v22

    if-nez v22, :cond_20a

    .line 519
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v22, v0

    new-instance v23, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v22 .. v23}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    .line 521
    monitor-exit p0

    goto/16 :goto_21

    .line 524
    :cond_286
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendNextChunk()Z

    move-result v22

    if-nez v22, :cond_2a7

    .line 525
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->anyMatch:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2aa

    .line 526
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    .line 527
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->anyMatch:Z

    .line 528
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendNextChunk()Z

    .line 537
    .end local v4           #anyMatchInChunk:Z
    .end local v7           #cols:I
    .end local v12           #lastMinIndex:Lorg/snmp4j/smi/OID;
    .end local v15           #r:I
    .end local v16           #request:Lorg/snmp4j/PDU;
    .end local v17           #response:Lorg/snmp4j/PDU;
    .end local v19           #rows:I
    .end local v20           #startCol:I
    :cond_2a7
    :goto_2a7
    monitor-exit p0

    goto/16 :goto_21

    .line 531
    .restart local v4       #anyMatchInChunk:Z
    .restart local v7       #cols:I
    .restart local v12       #lastMinIndex:Lorg/snmp4j/smi/OID;
    .restart local v15       #r:I
    .restart local v16       #request:Lorg/snmp4j/PDU;
    .restart local v17       #response:Lorg/snmp4j/PDU;
    .restart local v19       #rows:I
    .restart local v20       #startCol:I
    :cond_2aa
    invoke-direct/range {p0 .. p0}, Lorg/snmp4j/util/TableUtils$TableRequest;->emptyCache()V

    .line 532
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$TableRequest;->finished:Z

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v22, v0

    new-instance v23, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v22 .. v23}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V
    :try_end_2cf
    .catchall {:try_start_16d .. :try_end_2cf} :catchall_167

    goto :goto_2a7
.end method

.method public sendNextChunk()Z
    .registers 13

    .prologue
    const/16 v11, -0x5b

    const/16 v10, -0x5f

    const/4 v7, 0x0

    .line 363
    iget v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    iget-object v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v8, v9, :cond_10

    .line 410
    :goto_f
    return v7

    .line 366
    :cond_10
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    iget-object v8, v8, Lorg/snmp4j/util/AbstractSnmpUtility;->pduFactory:Lorg/snmp4j/util/PDUFactory;

    iget-object v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->target:Lorg/snmp4j/Target;

    invoke-interface {v8, v9}, Lorg/snmp4j/util/PDUFactory;->createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;

    move-result-object v3

    .line 367
    .local v3, pdu:Lorg/snmp4j/PDU;
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->target:Lorg/snmp4j/Target;

    invoke-interface {v8}, Lorg/snmp4j/Target;->getVersion()I

    move-result v8

    if-nez v8, :cond_99

    .line 368
    invoke-virtual {v3, v10}, Lorg/snmp4j/PDU;->setType(I)V

    .line 373
    :cond_25
    :goto_25
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    iget v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    invoke-static {v9}, Lorg/snmp4j/util/TableUtils;->access$000(Lorg/snmp4j/util/TableUtils;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 374
    .local v5, sz:I
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getType()I

    move-result v8

    if-ne v8, v11, :cond_52

    .line 375
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    invoke-static {v8}, Lorg/snmp4j/util/TableUtils;->access$100(Lorg/snmp4j/util/TableUtils;)I

    move-result v8

    if-lez v8, :cond_a3

    .line 376
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    invoke-static {v8}, Lorg/snmp4j/util/TableUtils;->access$100(Lorg/snmp4j/util/TableUtils;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    .line 377
    invoke-virtual {v3, v7}, Lorg/snmp4j/PDU;->setNonRepeaters(I)V

    .line 384
    :cond_52
    :goto_52
    new-instance v8, Ljava/util/Vector;

    add-int/lit8 v9, v5, 0x1

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    iput-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastSent:Ljava/util/Vector;

    .line 385
    iget v2, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    .local v2, i:I
    :goto_5d
    iget v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    add-int/2addr v8, v5

    if-ge v2, v8, :cond_81

    .line 386
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    .line 387
    .local v0, col:Lorg/snmp4j/smi/OID;
    new-instance v6, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v6, v0}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 388
    .local v6, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v3, v6}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 389
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getBERLength()I

    move-result v8

    iget-object v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->target:Lorg/snmp4j/Target;

    invoke-interface {v9}, Lorg/snmp4j/Target;->getMaxSizeRequestPDU()I

    move-result v9

    if-le v8, v9, :cond_aa

    .line 390
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->trim()V

    .line 398
    .end local v0           #col:Lorg/snmp4j/smi/OID;
    .end local v6           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_81
    :try_start_81
    new-instance v4, Ljava/lang/Integer;

    iget v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    invoke-direct {v4, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 399
    .local v4, startCol:Ljava/lang/Integer;
    iget v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    invoke-virtual {v3}, Lorg/snmp4j/PDU;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->sent:I

    .line 400
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->target:Lorg/snmp4j/Target;

    invoke-virtual {p0, v3, v8, v4}, Lorg/snmp4j/util/TableUtils$TableRequest;->sendRequest(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Integer;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_96} :catch_b8

    .line 410
    const/4 v7, 0x1

    goto/16 :goto_f

    .line 370
    .end local v2           #i:I
    .end local v4           #startCol:Ljava/lang/Integer;
    .end local v5           #sz:I
    :cond_99
    invoke-virtual {v3}, Lorg/snmp4j/PDU;->getType()I

    move-result v8

    if-eq v8, v10, :cond_25

    .line 371
    invoke-virtual {v3, v11}, Lorg/snmp4j/PDU;->setType(I)V

    goto :goto_25

    .line 380
    .restart local v5       #sz:I
    :cond_a3
    invoke-virtual {v3, v5}, Lorg/snmp4j/PDU;->setNonRepeaters(I)V

    .line 381
    invoke-virtual {v3, v7}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    goto :goto_52

    .line 394
    .restart local v0       #col:Lorg/snmp4j/smi/OID;
    .restart local v2       #i:I
    .restart local v6       #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_aa
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastSent:Ljava/util/Vector;

    iget-object v9, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 402
    .end local v0           #col:Lorg/snmp4j/smi/OID;
    .end local v6           #vb:Lorg/snmp4j/smi/VariableBinding;
    :catch_b8
    move-exception v1

    .line 403
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lorg/snmp4j/util/TableUtils;->access$200()Lorg/snmp4j/log/LogAdapter;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 404
    invoke-static {}, Lorg/snmp4j/util/TableUtils;->access$200()Lorg/snmp4j/log/LogAdapter;

    move-result-object v8

    invoke-interface {v8}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 405
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    :cond_cd
    iget-object v8, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    new-instance v9, Lorg/snmp4j/util/TableEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    invoke-direct {v9, p0, v10, v1}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    goto/16 :goto_f
.end method

.method protected sendRequest(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Integer;)V
    .registers 5
    .parameter "pdu"
    .parameter "target"
    .parameter "startCol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$TableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    iget-object v0, v0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    invoke-interface {v0, p1, p2, p3, p0}, Lorg/snmp4j/Session;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V

    .line 417
    return-void
.end method
