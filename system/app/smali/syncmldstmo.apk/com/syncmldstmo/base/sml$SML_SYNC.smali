.class public Lcom/syncmldstmo/base/sml$SML_SYNC;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_SYNC"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_noresp:Z

.field public is_noresults:Z

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public numofchanges:I

.field public source:Ljava/lang/String;

.field public target:Lcom/syncmldstmo/base/sml$SML_TARGET;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 562
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseSync(Lcom/syncmldstmo/base/smlParser;)I
    .registers 18
    .parameter "p"

    .prologue
    .line 575
    const/4 v7, -0x1

    .line 576
    .local v7, id:I
    const/4 v11, 0x0

    .line 578
    .local v11, res:I
    const/4 v3, 0x1

    .line 580
    .local v3, call_start_sync:Z
    const/16 v13, 0x2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v11

    .line 581
    if-eqz v11, :cond_f

    move v13, v11

    .line 736
    :goto_e
    return v13

    .line 590
    :cond_f
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_39

    move-result v7

    .line 597
    :goto_13
    const/4 v13, 0x1

    if-ne v7, v13, :cond_42

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v7

    .line 730
    if-eqz v3, :cond_2a

    .line 732
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 733
    const/4 v3, 0x0

    .line 735
    :cond_2a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdEndSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 736
    const/4 v13, 0x0

    goto :goto_e

    .line 592
    :catch_39
    move-exception v6

    .line 594
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_13

    .line 603
    .end local v6           #e:Ljava/io/IOException;
    :cond_42
    sparse-switch v7, :sswitch_data_19c

    .line 720
    const/high16 v13, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 721
    const/4 v11, 0x2

    .line 724
    :goto_5a
    if-eqz v11, :cond_f

    move v13, v11

    .line 726
    goto :goto_e

    .line 607
    :sswitch_5e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->cmdid:I

    goto :goto_5a

    .line 611
    :sswitch_6d
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v8

    .line 613
    .local v8, noresp:I
    const/4 v13, 0x1

    if-ne v8, v13, :cond_7c

    .line 614
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresp:Z

    goto :goto_5a

    .line 616
    :cond_7c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresp:Z

    goto :goto_5a

    .line 620
    .end local v8           #noresp:I
    :sswitch_82
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v9

    .line 621
    .local v9, noresults:I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_91

    .line 622
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresults:Z

    goto :goto_5a

    .line 624
    :cond_91
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->is_noresults:Z

    goto :goto_5a

    .line 628
    .end local v9           #noresults:I
    :sswitch_97
    new-instance v13, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v13}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_5a

    .line 633
    :sswitch_aa
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    goto :goto_5a

    .line 637
    :sswitch_b3
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSource()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->source:Ljava/lang/String;

    goto :goto_5a

    .line 641
    :sswitch_bc
    new-instance v13, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v13}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_5a

    .line 646
    :sswitch_cf
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/syncmldstmo/base/sml$SML_SYNC;->numofchanges:I

    goto/16 :goto_5a

    .line 650
    :sswitch_df
    if-eqz v3, :cond_ef

    .line 652
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 654
    const/4 v3, 0x0

    .line 656
    :cond_ef
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_COPY;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_COPY;-><init>()V

    .line 657
    .local v4, copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/syncmldstmo/base/sml$SML_COPY;->__smlparParseCopy(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 658
    goto/16 :goto_5a

    .line 661
    .end local v4           #copy:Lcom/syncmldstmo/base/sml$SML_COPY;
    :sswitch_fc
    if-eqz v3, :cond_10c

    .line 663
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 664
    const/4 v3, 0x0

    .line 666
    :cond_10c
    new-instance v12, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;

    invoke-direct {v12}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;-><init>()V

    .line 667
    .local v12, sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/syncmldstmo/base/sml$SML_SEQUENCE;->__smlparParseSequence(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 668
    goto/16 :goto_5a

    .line 671
    .end local v12           #sequence:Lcom/syncmldstmo/base/sml$SML_SEQUENCE;
    :sswitch_119
    if-eqz v3, :cond_129

    .line 673
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 674
    const/4 v3, 0x0

    .line 676
    :cond_129
    new-instance v2, Lcom/syncmldstmo/base/sml$SML_ATOMIC;

    invoke-direct {v2}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;-><init>()V

    .line 677
    .local v2, atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/syncmldstmo/base/sml$SML_ATOMIC;->__smlparParseAtomic(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 678
    goto/16 :goto_5a

    .line 682
    .end local v2           #atomic:Lcom/syncmldstmo/base/sml$SML_ATOMIC;
    :sswitch_136
    if-eqz v3, :cond_146

    .line 684
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 686
    const/4 v3, 0x0

    .line 688
    :cond_146
    new-instance v1, Lcom/syncmldstmo/base/sml$SML_ADD;

    invoke-direct {v1}, Lcom/syncmldstmo/base/sml$SML_ADD;-><init>()V

    .line 689
    .local v1, add:Lcom/syncmldstmo/base/sml$SML_ADD;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/syncmldstmo/base/sml$SML_ADD;->__smlparParseAdd(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 690
    goto/16 :goto_5a

    .line 693
    .end local v1           #add:Lcom/syncmldstmo/base/sml$SML_ADD;
    :sswitch_153
    if-eqz v3, :cond_163

    .line 695
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 697
    const/4 v3, 0x0

    .line 699
    :cond_163
    new-instance v10, Lcom/syncmldstmo/base/sml$SML_REPLACE;

    invoke-direct {v10}, Lcom/syncmldstmo/base/sml$SML_REPLACE;-><init>()V

    .line 700
    .local v10, replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/syncmldstmo/base/sml$SML_REPLACE;->__smlparParseReplace(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 701
    goto/16 :goto_5a

    .line 704
    .end local v10           #replace:Lcom/syncmldstmo/base/sml$SML_REPLACE;
    :sswitch_170
    if-eqz v3, :cond_180

    .line 706
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v14, v0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V

    .line 707
    const/4 v3, 0x0

    .line 709
    :cond_180
    new-instance v5, Lcom/syncmldstmo/base/sml$SML_DELETE;

    invoke-direct {v5}, Lcom/syncmldstmo/base/sml$SML_DELETE;-><init>()V

    .line 710
    .local v5, delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/syncmldstmo/base/sml$SML_DELETE;->__smlparParseDelete(Lcom/syncmldstmo/base/smlParser;)I

    move-result v11

    .line 711
    goto/16 :goto_5a

    .line 714
    .end local v5           #delete:Lcom/syncmldstmo/base/sml$SML_DELETE;
    :sswitch_18d
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v7

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v7

    .line 716
    move-object/from16 v0, p1

    iput v7, v0, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto/16 :goto_5a

    .line 603
    nop

    :sswitch_data_19c
    .sparse-switch
        0x0 -> :sswitch_18d
        0x5 -> :sswitch_136
        0x8 -> :sswitch_119
        0xb -> :sswitch_5e
        0xd -> :sswitch_df
        0xe -> :sswitch_97
        0x10 -> :sswitch_170
        0x1a -> :sswitch_bc
        0x1d -> :sswitch_6d
        0x1e -> :sswitch_82
        0x20 -> :sswitch_153
        0x24 -> :sswitch_fc
        0x27 -> :sswitch_b3
        0x2e -> :sswitch_aa
        0x33 -> :sswitch_cf
    .end sparse-switch
.end method
