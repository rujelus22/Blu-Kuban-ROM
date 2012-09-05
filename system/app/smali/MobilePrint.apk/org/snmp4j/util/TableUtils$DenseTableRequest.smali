.class Lorg/snmp4j/util/TableUtils$DenseTableRequest;
.super Lorg/snmp4j/util/TableUtils$TableRequest;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DenseTableRequest"
.end annotation


# instance fields
.field private final this$0:Lorg/snmp4j/util/TableUtils;


# direct methods
.method protected constructor <init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V
    .registers 8
    .parameter
    .parameter "target"
    .parameter "columnOIDs"
    .parameter "listener"
    .parameter "userObject"
    .parameter "lowerBoundIndex"
    .parameter "upperBoundIndex"

    .prologue
    .line 613
    iput-object p1, p0, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    .line 614
    invoke-direct/range {p0 .. p7}, Lorg/snmp4j/util/TableUtils$TableRequest;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/Target;[Lorg/snmp4j/smi/OID;Lorg/snmp4j/util/TableListener;Ljava/lang/Object;Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/OID;)V

    .line 616
    return-void
.end method


# virtual methods
.method public declared-synchronized onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 26
    .parameter "event"

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/snmp4j/Session;->cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 621
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->finished:Z

    move/from16 v19, v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_eb

    if-eqz v19, :cond_24

    .line 680
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 624
    :cond_24
    :try_start_24
    invoke-virtual/range {p0 .. p1}, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->checkResponse(Lorg/snmp4j/event/ResponseEvent;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 625
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 626
    .local v17, startCol:I
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v13

    .line 627
    .local v13, request:Lorg/snmp4j/PDU;
    invoke-virtual/range {p1 .. p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v14

    .line 628
    .local v14, response:Lorg/snmp4j/PDU;
    invoke-virtual {v13}, Lorg/snmp4j/PDU;->size()I

    move-result v7

    .line 629
    .local v7, cols:I
    invoke-virtual {v14}, Lorg/snmp4j/PDU;->size()I

    move-result v19

    div-int v16, v19, v7

    .line 630
    .local v16, rows:I
    const/4 v10, 0x0

    .line 631
    .local v10, lastMinIndex:Lorg/snmp4j/smi/OID;
    const/4 v12, 0x0

    .local v12, r:I
    :goto_48
    move/from16 v0, v16

    if-ge v12, v0, :cond_155

    .line 632
    const/4 v15, 0x0

    .line 633
    .local v15, row:Lorg/snmp4j/util/TableUtils$Row;
    const/4 v5, 0x0

    .local v5, c:I
    :goto_4e
    invoke-virtual {v13}, Lorg/snmp4j/PDU;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v5, v0, :cond_f4

    .line 634
    add-int v11, v17, v5

    .line 635
    .local v11, pos:I
    mul-int v19, v12, v7

    add-int v19, v19, v5

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v18

    .line 636
    .local v18, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/smi/VariableBinding;->isException()Z

    move-result v19

    if-eqz v19, :cond_6b

    .line 633
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 639
    :cond_6b
    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    .line 640
    .local v8, id:Lorg/snmp4j/smi/OID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->columnOIDs:[Lorg/snmp4j/smi/OID;

    move-object/from16 v19, v0

    aget-object v6, v19, v11

    .line 641
    .local v6, col:Lorg/snmp4j/smi/OID;
    invoke-virtual {v8, v6}, Lorg/snmp4j/smi/OID;->startsWith(Lorg/snmp4j/smi/OID;)Z

    move-result v19

    if-eqz v19, :cond_68

    .line 642
    new-instance v9, Lorg/snmp4j/smi/OID;

    invoke-virtual {v8}, Lorg/snmp4j/smi/OID;->getValue()[I

    move-result-object v19

    invoke-virtual {v6}, Lorg/snmp4j/smi/OID;->size()I

    move-result v20

    invoke-virtual {v8}, Lorg/snmp4j/smi/OID;->size()I

    move-result v21

    invoke-virtual {v6}, Lorg/snmp4j/smi/OID;->size()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Lorg/snmp4j/smi/OID;-><init>([III)V

    .line 644
    .local v9, index:Lorg/snmp4j/smi/OID;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->upperBoundIndex:Lorg/snmp4j/smi/OID;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v19

    if-gtz v19, :cond_68

    .line 648
    :cond_b0
    if-eqz v10, :cond_b8

    invoke-virtual {v9, v10}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v19

    if-gez v19, :cond_b9

    .line 650
    :cond_b8
    move-object v10, v9

    .line 652
    :cond_b9
    if-nez v15, :cond_c8

    .line 653
    new-instance v15, Lorg/snmp4j/util/TableUtils$Row;

    .end local v15           #row:Lorg/snmp4j/util/TableUtils$Row;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->this$0:Lorg/snmp4j/util/TableUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0, v9}, Lorg/snmp4j/util/TableUtils$Row;-><init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/smi/OID;)V

    .line 655
    .restart local v15       #row:Lorg/snmp4j/util/TableUtils$Row;
    :cond_c8
    invoke-virtual {v15, v11}, Lorg/snmp4j/util/TableUtils$Row;->setNumComplete(I)Z

    .line 656
    invoke-virtual {v15}, Lorg/snmp4j/util/TableUtils$Row;->getNumComplete()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_ee

    .line 657
    move-object/from16 v0, v18

    invoke-virtual {v15, v11, v0}, Lorg/snmp4j/util/TableUtils$Row;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 662
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->lastReceived:Ljava/util/Vector;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_e9
    .catchall {:try_start_24 .. :try_end_e9} :catchall_eb

    goto/16 :goto_68

    .line 620
    .end local v5           #c:I
    .end local v6           #col:Lorg/snmp4j/smi/OID;
    .end local v7           #cols:I
    .end local v8           #id:Lorg/snmp4j/smi/OID;
    .end local v9           #index:Lorg/snmp4j/smi/OID;
    .end local v10           #lastMinIndex:Lorg/snmp4j/smi/OID;
    .end local v11           #pos:I
    .end local v12           #r:I
    .end local v13           #request:Lorg/snmp4j/PDU;
    .end local v14           #response:Lorg/snmp4j/PDU;
    .end local v15           #row:Lorg/snmp4j/util/TableUtils$Row;
    .end local v16           #rows:I
    .end local v17           #startCol:I
    .end local v18           #vb:Lorg/snmp4j/smi/VariableBinding;
    :catchall_eb
    move-exception v19

    monitor-exit p0

    throw v19

    .line 660
    .restart local v5       #c:I
    .restart local v6       #col:Lorg/snmp4j/smi/OID;
    .restart local v7       #cols:I
    .restart local v8       #id:Lorg/snmp4j/smi/OID;
    .restart local v9       #index:Lorg/snmp4j/smi/OID;
    .restart local v10       #lastMinIndex:Lorg/snmp4j/smi/OID;
    .restart local v11       #pos:I
    .restart local v12       #r:I
    .restart local v13       #request:Lorg/snmp4j/PDU;
    .restart local v14       #response:Lorg/snmp4j/PDU;
    .restart local v15       #row:Lorg/snmp4j/util/TableUtils$Row;
    .restart local v16       #rows:I
    .restart local v17       #startCol:I
    .restart local v18       #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_ee
    :try_start_ee
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/snmp4j/util/TableUtils$Row;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    .line 665
    .end local v6           #col:Lorg/snmp4j/smi/OID;
    .end local v8           #id:Lorg/snmp4j/smi/OID;
    .end local v9           #index:Lorg/snmp4j/smi/OID;
    .end local v11           #pos:I
    .end local v18           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_f4
    if-eqz v15, :cond_151

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v20, v0

    new-instance v21, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual {v15}, Lorg/snmp4j/util/TableUtils$Row;->getRowIndex()Lorg/snmp4j/smi/OID;

    move-result-object v23

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Lorg/snmp4j/smi/VariableBinding;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/snmp4j/util/TableUtils$Row;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lorg/snmp4j/smi/VariableBinding;

    check-cast v19, [Lorg/snmp4j/smi/VariableBinding;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/smi/OID;[Lorg/snmp4j/smi/VariableBinding;)V

    invoke-interface/range {v20 .. v21}, Lorg/snmp4j/util/TableListener;->next(Lorg/snmp4j/util/TableEvent;)Z

    move-result v19

    if-nez v19, :cond_151

    .line 669
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->finished:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v19, v0

    new-instance v20, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v19 .. v20}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V

    goto/16 :goto_22

    .line 631
    :cond_151
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_48

    .line 675
    .end local v5           #c:I
    .end local v15           #row:Lorg/snmp4j/util/TableUtils$Row;
    :cond_155
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->sendNextChunk()Z

    move-result v19

    if-nez v19, :cond_22

    .line 676
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/snmp4j/util/TableUtils$DenseTableRequest;->finished:Z

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->listener:Lorg/snmp4j/util/TableListener;

    move-object/from16 v19, v0

    new-instance v20, Lorg/snmp4j/util/TableEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/TableUtils$TableRequest;->userObject:Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface/range {v19 .. v20}, Lorg/snmp4j/util/TableListener;->finished(Lorg/snmp4j/util/TableEvent;)V
    :try_end_17d
    .catchall {:try_start_ee .. :try_end_17d} :catchall_eb

    goto/16 :goto_22
.end method
