.class public Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_SEQUENCE"
.end annotation


# instance fields
.field public add:Lcom/syncmldstmo/base/sml$SML_ADD;

.field public alert:Lcom/syncmldstmo/base/sml$SML_ALERT;

.field public atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;

.field public cmdid:I

.field public copy:Lcom/syncmldstmo/base/sml$SML_COPY;

.field public delete:Lcom/syncmldstmo/base/sml$SML_DELETE;

.field public exec:Lcom/syncmldstmo/base/sml$SML_EXEC;

.field public get:Lcom/syncmldstmo/base/sml$SML_GET;

.field public is_noresp:I

.field public map:Lcom/syncmldstmo/base/sml$SML_MAP;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;

.field public sync:Lcom/syncmldstmo/base/sml$SML_SYNC;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1476
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseSequence(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    .line 1495
    const/4 v2, -0x1

    .line 1496
    .local v2, id:I
    const/4 v3, 0x0

    .line 1497
    .local v3, res:I
    const/4 v0, 0x1

    .line 1499
    .local v0, call_start_seq:Z
    const/16 v4, 0x24

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v3

    .line 1500
    if-eqz v3, :cond_d

    move v4, v3

    .line 1662
    :goto_c
    return v4

    .line 1509
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_2b

    move-result v2

    .line 1516
    :goto_11
    const/4 v4, 0x1

    if-ne v2, v4, :cond_34

    .line 1518
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v2

    .line 1655
    if-eqz v0, :cond_22

    .line 1657
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1658
    const/4 v0, 0x0

    .line 1661
    :cond_22
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceEnd(Ljava/lang/Object;)V

    .line 1662
    const/4 v4, 0x0

    goto :goto_c

    .line 1511
    :catch_2b
    move-exception v1

    .line 1513
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_11

    .line 1522
    .end local v1           #e:Ljava/io/IOException;
    :cond_34
    sparse-switch v2, :sswitch_data_168

    .line 1644
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1645
    const/4 v3, 0x2

    .line 1649
    :goto_4c
    if-eqz v3, :cond_d

    move v4, v3

    .line 1651
    goto :goto_c

    .line 1525
    :sswitch_50
    invoke-virtual {p1, v2}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->cmdid:I

    goto :goto_4c

    .line 1529
    :sswitch_5b
    invoke-virtual {p1, v2}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->is_noresp:I

    goto :goto_4c

    .line 1533
    :sswitch_62
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1534
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_4c

    .line 1538
    :sswitch_6f
    if-eqz v0, :cond_79

    .line 1540
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1541
    const/4 v0, 0x0

    .line 1543
    :cond_79
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_ALERT;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_ALERT;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->alert:Lcom/syncmldstmo/base/sml$SML_ALERT;

    .line 1544
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->alert:Lcom/syncmldstmo/base/sml$SML_ALERT;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_ALERT;->__smlparParseAlert(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_4c

    .line 1548
    :sswitch_86
    if-eqz v0, :cond_90

    .line 1550
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1551
    const/4 v0, 0x0

    .line 1553
    :cond_90
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_ADD;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->add:Lcom/syncmldstmo/base/sml$SML_ADD;

    .line 1554
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->add:Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_ADD;->__smlparParseAdd(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_4c

    .line 1558
    :sswitch_9d
    if-eqz v0, :cond_a7

    .line 1560
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1561
    const/4 v0, 0x0

    .line 1563
    :cond_a7
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_REPLACE;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_REPLACE;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;

    .line 1564
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_REPLACE;->__smlparParseReplace(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_4c

    .line 1568
    :sswitch_b4
    if-eqz v0, :cond_be

    .line 1570
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1571
    const/4 v0, 0x0

    .line 1573
    :cond_be
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_DELETE;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->delete:Lcom/syncmldstmo/base/sml$SML_DELETE;

    .line 1574
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->delete:Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_DELETE;->__smlparParseDelete(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_4c

    .line 1578
    :sswitch_cb
    if-eqz v0, :cond_d5

    .line 1580
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1581
    const/4 v0, 0x0

    .line 1583
    :cond_d5
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_COPY;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_COPY;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->copy:Lcom/syncmldstmo/base/sml$SML_COPY;

    .line 1584
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->copy:Lcom/syncmldstmo/base/sml$SML_COPY;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_COPY;->__smlparParseCopy(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1588
    :sswitch_e3
    if-eqz v0, :cond_ed

    .line 1590
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1591
    const/4 v0, 0x0

    .line 1593
    :cond_ed
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_ATOMIC;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;

    .line 1594
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->__smlparParseAtomic(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1598
    :sswitch_fb
    if-eqz v0, :cond_105

    .line 1600
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1601
    const/4 v0, 0x0

    .line 1603
    :cond_105
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_MAP;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_MAP;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->map:Lcom/syncmldstmo/base/sml$SML_MAP;

    .line 1604
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->map:Lcom/syncmldstmo/base/sml$SML_MAP;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_MAP;->__smlparParseMap(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1608
    :sswitch_113
    if-eqz v0, :cond_11d

    .line 1610
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1611
    const/4 v0, 0x0

    .line 1613
    :cond_11d
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_GET;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_GET;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->get:Lcom/syncmldstmo/base/sml$SML_GET;

    .line 1614
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->get:Lcom/syncmldstmo/base/sml$SML_GET;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_GET;->__smlparParseGet(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1618
    :sswitch_12b
    if-eqz v0, :cond_135

    .line 1620
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1621
    const/4 v0, 0x0

    .line 1623
    :cond_135
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_SYNC;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_SYNC;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->sync:Lcom/syncmldstmo/base/sml$SML_SYNC;

    .line 1624
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->sync:Lcom/syncmldstmo/base/sml$SML_SYNC;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_SYNC;->__smlparParseSync(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1628
    :sswitch_143
    if-eqz v0, :cond_14d

    .line 1630
    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v5, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v4, v5, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V

    .line 1631
    const/4 v0, 0x0

    .line 1633
    :cond_14d
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_EXEC;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_EXEC;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->exec:Lcom/syncmldstmo/base/sml$SML_EXEC;

    .line 1634
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->exec:Lcom/syncmldstmo/base/sml$SML_EXEC;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_EXEC;->__smlparParseExec(Lcom/syncmldstmo/base/smlParser;)I

    goto/16 :goto_4c

    .line 1638
    :sswitch_15b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v2

    .line 1639
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v2

    .line 1640
    iput v2, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto/16 :goto_4c

    .line 1522
    nop

    :sswitch_data_168
    .sparse-switch
        0x0 -> :sswitch_15b
        0x5 -> :sswitch_86
        0x6 -> :sswitch_6f
        0x8 -> :sswitch_e3
        0xb -> :sswitch_50
        0xd -> :sswitch_cb
        0x10 -> :sswitch_b4
        0x11 -> :sswitch_143
        0x13 -> :sswitch_113
        0x18 -> :sswitch_fb
        0x1a -> :sswitch_62
        0x1d -> :sswitch_5b
        0x20 -> :sswitch_9d
        0x2a -> :sswitch_12b
    .end sparse-switch
.end method
