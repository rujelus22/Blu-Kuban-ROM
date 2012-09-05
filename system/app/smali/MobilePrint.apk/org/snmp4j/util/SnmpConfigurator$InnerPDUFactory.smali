.class public Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;
.super Ljava/lang/Object;
.source "SnmpConfigurator.java"

# interfaces
.implements Lorg/snmp4j/util/PDUFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/SnmpConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerPDUFactory"
.end annotation


# instance fields
.field private settings:Ljava/util/Map;

.field private final this$0:Lorg/snmp4j/util/SnmpConfigurator;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/SnmpConfigurator;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter "settings"

    .prologue
    .line 398
    iput-object p1, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p2, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    .line 400
    return-void
.end method


# virtual methods
.method public createPDU(Lorg/snmp4j/Target;)Lorg/snmp4j/PDU;
    .registers 23
    .parameter "target"

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$000(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 404
    .local v9, pduType:Ljava/lang/String;
    if-nez v9, :cond_1c

    .line 405
    const-string v9, "GET"

    .line 407
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 408
    invoke-static {v9}, Lorg/snmp4j/PDU;->getTypeFromString(Ljava/lang/String;)I

    move-result v15

    .line 409
    .local v15, type:I
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/snmp4j/util/DefaultPDUFactory;->createPDU(Lorg/snmp4j/Target;I)Lorg/snmp4j/PDU;

    move-result-object v8

    .line 410
    .local v8, pdu:Lorg/snmp4j/PDU;
    const/16 v16, -0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_3e

    instance-of v0, v8, Lorg/snmp4j/PDUv1;

    move/from16 v16, v0

    if-nez v16, :cond_3e

    .line 411
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "V1TRAP can only be sent using SNMPv1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 413
    :cond_3e
    const/16 v16, -0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_ba

    .line 414
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->getMaxRepetitions()Ljava/lang/Integer;

    move-result-object v6

    .line 415
    .local v6, maxRep:Ljava/lang/Integer;
    if-eqz v6, :cond_53

    .line 416
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/snmp4j/PDU;->setMaxRepetitions(I)V

    .line 418
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->getNonRepeaters()Ljava/lang/Integer;

    move-result-object v7

    .line 419
    .local v7, nonRepeaters:Ljava/lang/Integer;
    if-eqz v7, :cond_62

    .line 420
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/snmp4j/PDU;->setNonRepeaters(I)V

    .line 455
    .end local v6           #maxRep:Ljava/lang/Integer;
    .end local v7           #nonRepeaters:Ljava/lang/Integer;
    :cond_62
    :goto_62
    instance-of v0, v8, Lorg/snmp4j/ScopedPDU;

    move/from16 v16, v0

    if-eqz v16, :cond_b9

    move-object v11, v8

    .line 456
    check-cast v11, Lorg/snmp4j/ScopedPDU;

    .line 457
    .local v11, scoped:Lorg/snmp4j/ScopedPDU;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$700(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    .local v2, cEngineID:Ljava/lang/String;
    if-eqz v2, :cond_92

    .line 460
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/snmp4j/ScopedPDU;->setContextEngineID(Lorg/snmp4j/smi/OctetString;)V

    .line 462
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$800(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .local v3, cn:Ljava/lang/String;
    if-eqz v3, :cond_b9

    .line 465
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lorg/snmp4j/util/SnmpConfigurator;->createOctetString(Ljava/lang/String;Ljava/lang/String;)Lorg/snmp4j/smi/OctetString;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/snmp4j/ScopedPDU;->setContextName(Lorg/snmp4j/smi/OctetString;)V

    .line 468
    .end local v2           #cEngineID:Ljava/lang/String;
    .end local v3           #cn:Ljava/lang/String;
    .end local v11           #scoped:Lorg/snmp4j/ScopedPDU;
    :cond_b9
    return-object v8

    .line 423
    :cond_ba
    const/16 v16, -0x59

    move/from16 v0, v16

    if-eq v15, v0, :cond_c6

    const/16 v16, -0x5a

    move/from16 v0, v16

    if-ne v15, v0, :cond_124

    .line 424
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$100(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    .line 425
    .local v14, tu:Ljava/lang/Number;
    if-eqz v14, :cond_f5

    .line 426
    new-instance v16, Lorg/snmp4j/smi/VariableBinding;

    sget-object v17, Lorg/snmp4j/mp/SnmpConstants;->sysUpTime:Lorg/snmp4j/smi/OID;

    new-instance v18, Lorg/snmp4j/smi/TimeTicks;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    invoke-direct/range {v18 .. v20}, Lorg/snmp4j/smi/TimeTicks;-><init>(J)V

    invoke-direct/range {v16 .. v18}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 429
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$200(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 430
    .local v13, to:Ljava/lang/String;
    if-eqz v13, :cond_62

    .line 431
    new-instance v16, Lorg/snmp4j/smi/VariableBinding;

    sget-object v17, Lorg/snmp4j/mp/SnmpConstants;->snmpTrapOID:Lorg/snmp4j/smi/OID;

    new-instance v18, Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v18}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;Lorg/snmp4j/smi/Variable;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    goto/16 :goto_62

    .line 434
    .end local v13           #to:Ljava/lang/String;
    .end local v14           #tu:Ljava/lang/Number;
    :cond_124
    const/16 v16, -0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_62

    move-object v10, v8

    .line 435
    check-cast v10, Lorg/snmp4j/PDUv1;

    .line 436
    .local v10, pduV1:Lorg/snmp4j/PDUv1;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$300(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 438
    .local v1, aa:Ljava/lang/String;
    if-eqz v1, :cond_153

    .line 439
    new-instance v16, Lorg/snmp4j/smi/IpAddress;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/IpAddress;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/snmp4j/PDUv1;->setAgentAddress(Lorg/snmp4j/smi/IpAddress;)V

    .line 441
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$400(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 442
    .local v5, gid:Ljava/lang/Integer;
    if-eqz v5, :cond_176

    .line 443
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/snmp4j/PDUv1;->setGenericTrap(I)V

    .line 445
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$500(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 446
    .local v12, sid:Ljava/lang/Integer;
    if-eqz v12, :cond_199

    .line 447
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/snmp4j/PDUv1;->setSpecificTrap(I)V

    .line 449
    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lorg/snmp4j/util/SnmpConfigurator;->access$600(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    .local v4, e:Ljava/lang/String;
    if-eqz v4, :cond_62

    .line 452
    new-instance v16, Lorg/snmp4j/smi/OID;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/snmp4j/PDUv1;->setEnterprise(Lorg/snmp4j/smi/OID;)V

    goto/16 :goto_62
.end method

.method public getMaxRepetitions()Ljava/lang/Integer;
    .registers 5

    .prologue
    .line 472
    iget-object v1, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    iget-object v2, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    invoke-static {v2}, Lorg/snmp4j/util/SnmpConfigurator;->access$900(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 474
    .local v0, maxRep:Ljava/lang/Integer;
    return-object v0
.end method

.method public getNonRepeaters()Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->settings:Ljava/util/Map;

    iget-object v1, p0, Lorg/snmp4j/util/SnmpConfigurator$InnerPDUFactory;->this$0:Lorg/snmp4j/util/SnmpConfigurator;

    invoke-static {v1}, Lorg/snmp4j/util/SnmpConfigurator;->access$1000(Lorg/snmp4j/util/SnmpConfigurator;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
