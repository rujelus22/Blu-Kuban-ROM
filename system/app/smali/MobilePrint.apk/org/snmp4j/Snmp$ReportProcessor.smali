.class Lorg/snmp4j/Snmp$ReportProcessor;
.super Ljava/lang/Object;
.source "Snmp.java"

# interfaces
.implements Lorg/snmp4j/Snmp$ReportHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/Snmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportProcessor"
.end annotation


# instance fields
.field private final this$0:Lorg/snmp4j/Snmp;


# direct methods
.method constructor <init>(Lorg/snmp4j/Snmp;)V
    .registers 2
    .parameter

    .prologue
    .line 1292
    iput-object p1, p0, Lorg/snmp4j/Snmp$ReportProcessor;->this$0:Lorg/snmp4j/Snmp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processReport(Lorg/snmp4j/mp/PduHandle;Lorg/snmp4j/CommandResponderEvent;)V
    .registers 20
    .parameter "handle"
    .parameter "e"

    .prologue
    .line 1295
    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPDU()Lorg/snmp4j/PDU;

    move-result-object v5

    .line 1296
    .local v5, pdu:Lorg/snmp4j/PDU;
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Searching pending request with handle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/Snmp$ReportProcessor;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v1}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/snmp4j/Snmp$PendingRequest;

    .line 1298
    .local v11, request:Lorg/snmp4j/Snmp$PendingRequest;
    if-nez v11, :cond_51

    .line 1299
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unmatched report PDU received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    .line 1382
    :cond_50
    :goto_50
    return-void

    .line 1302
    :cond_51
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v1

    if-nez v1, :cond_7c

    .line 1303
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Illegal report PDU received from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " missing report variable binding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_50

    .line 1307
    :cond_7c
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v14

    .line 1308
    .local v14, vb:Lorg/snmp4j/smi/VariableBinding;
    if-nez v14, :cond_a2

    .line 1309
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Received illegal REPORT PDU from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto :goto_50

    .line 1312
    :cond_a2
    invoke-virtual {v14}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v7

    .line 1313
    .local v7, firstOID:Lorg/snmp4j/smi/OID;
    const/4 v12, 0x0

    .line 1314
    .local v12, resend:Z
    invoke-static {v11}, Lorg/snmp4j/Snmp$PendingRequest;->access$500(Lorg/snmp4j/Snmp$PendingRequest;)I

    move-result v1

    invoke-static {v11}, Lorg/snmp4j/Snmp$PendingRequest;->access$000(Lorg/snmp4j/Snmp$PendingRequest;)I

    move-result v2

    if-ge v1, v2, :cond_b8

    .line 1315
    invoke-static {v11}, Lorg/snmp4j/Snmp$PendingRequest;->access$500(Lorg/snmp4j/Snmp$PendingRequest;)I

    move-result v1

    packed-switch v1, :pswitch_data_196

    .line 1333
    :cond_b8
    :goto_b8
    if-eqz v12, :cond_12d

    .line 1334
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    const-string v2, "Send new request after report."

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 1335
    invoke-static {v11}, Lorg/snmp4j/Snmp$PendingRequest;->access$508(Lorg/snmp4j/Snmp$PendingRequest;)I

    .line 1339
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/Snmp$ReportProcessor;->this$0:Lorg/snmp4j/Snmp;

    iget-object v2, v11, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    iget-object v3, v11, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getTransportMapping()Lorg/snmp4j/TransportMapping;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v3, v15, v0}, Lorg/snmp4j/Snmp;->sendMessage(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Lorg/snmp4j/TransportMapping;Lorg/snmp4j/mp/PduHandleCallback;)Lorg/snmp4j/mp/PduHandle;

    move-result-object v13

    .line 1344
    .local v13, resentHandle:Lorg/snmp4j/mp/PduHandle;
    invoke-static {v11, v13}, Lorg/snmp4j/Snmp$PendingRequest;->access$602(Lorg/snmp4j/Snmp$PendingRequest;Lorg/snmp4j/mp/PduHandle;)Lorg/snmp4j/mp/PduHandle;
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_dd} :catch_df

    goto/16 :goto_50

    .line 1346
    .end local v13           #resentHandle:Lorg/snmp4j/mp/PduHandle;
    :catch_df
    move-exception v9

    .line 1347
    .local v9, iox:Ljava/io/IOException;
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to send message to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, v11, Lorg/snmp4j/Snmp$PendingRequest;->target:Lorg/snmp4j/Target;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    goto/16 :goto_50

    .line 1317
    .end local v9           #iox:Ljava/io/IOException;
    :pswitch_10c
    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->usmStatsUnknownEngineIDs:Lorg/snmp4j/smi/OID;

    invoke-virtual {v1, v7}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 1318
    const/4 v12, 0x1

    goto :goto_b8

    .line 1320
    :cond_116
    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID;

    invoke-virtual {v1, v7}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1321
    invoke-static {v11}, Lorg/snmp4j/Snmp$PendingRequest;->access$508(Lorg/snmp4j/Snmp$PendingRequest;)I

    .line 1322
    const/4 v12, 0x1

    goto :goto_b8

    .line 1326
    :pswitch_123
    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->usmStatsNotInTimeWindows:Lorg/snmp4j/smi/OID;

    invoke-virtual {v1, v7}, Lorg/snmp4j/smi/OID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1327
    const/4 v12, 0x1

    goto :goto_b8

    .line 1356
    :cond_12d
    iget-object v10, v11, Lorg/snmp4j/Snmp$PendingRequest;->listener:Lorg/snmp4j/event/ResponseListener;

    .line 1357
    .local v10, reqListener:Lorg/snmp4j/event/ResponseListener;
    iget-object v4, v11, Lorg/snmp4j/Snmp$PendingRequest;->pdu:Lorg/snmp4j/PDU;

    .line 1358
    .local v4, reqPDU:Lorg/snmp4j/PDU;
    iget-object v6, v11, Lorg/snmp4j/Snmp$PendingRequest;->userObject:Ljava/lang/Object;

    .line 1359
    .local v6, reqUserObject:Ljava/lang/Object;
    monitor-enter v11

    .line 1360
    :try_start_134
    invoke-virtual {v11}, Lorg/snmp4j/Snmp$PendingRequest;->cancel()Z

    move-result v8

    .line 1361
    .local v8, intime:Z
    monitor-exit v11
    :try_end_139
    .catchall {:try_start_134 .. :try_end_139} :catchall_15a

    .line 1364
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/snmp4j/Snmp$ReportProcessor;->this$0:Lorg/snmp4j/Snmp;

    invoke-static {v1}, Lorg/snmp4j/Snmp;->access$400(Lorg/snmp4j/Snmp;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    if-eqz v8, :cond_15d

    if-eqz v10, :cond_15d

    .line 1367
    new-instance v1, Lorg/snmp4j/event/ResponseEvent;

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/snmp4j/event/ResponseEvent;-><init>(Ljava/lang/Object;Lorg/snmp4j/smi/Address;Lorg/snmp4j/PDU;Lorg/snmp4j/PDU;Ljava/lang/Object;)V

    invoke-interface {v10, v1}, Lorg/snmp4j/event/ResponseListener;->onResponse(Lorg/snmp4j/event/ResponseEvent;)V

    goto/16 :goto_50

    .line 1361
    .end local v8           #intime:Z
    :catchall_15a
    move-exception v1

    :try_start_15b
    monitor-exit v11
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    throw v1

    .line 1375
    .restart local v8       #intime:Z
    :cond_15d
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    invoke-interface {v1}, Lorg/snmp4j/log/LogAdapter;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1376
    invoke-static {}, Lorg/snmp4j/Snmp;->access$300()Lorg/snmp4j/log/LogAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Received late report from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/snmp4j/CommandResponderEvent;->getPeerAddress()Lorg/snmp4j/smi/Address;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " with request ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getRequestID()Lorg/snmp4j/smi/Integer32;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/snmp4j/log/LogAdapter;->info(Ljava/lang/Object;)V

    goto/16 :goto_50

    .line 1315
    nop

    :pswitch_data_196
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_123
    .end packed-switch
.end method
