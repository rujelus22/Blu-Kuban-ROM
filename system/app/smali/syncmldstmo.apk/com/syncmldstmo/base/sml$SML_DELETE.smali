.class public Lcom/syncmldstmo/base/sml$SML_DELETE;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_DELETE"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_archive:I

.field public is_noresp:I

.field public is_sftdel:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 469
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseDelete(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 481
    const/4 v1, -0x1

    .line 482
    .local v1, id:I
    const/4 v2, 0x0

    .line 484
    .local v2, res:I
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 485
    if-eqz v2, :cond_c

    move v3, v2

    .line 558
    :goto_b
    return v3

    .line 494
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_20

    move-result v1

    .line 501
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    .line 503
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 557
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdDelete(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_DELETE;)V

    .line 558
    const/4 v3, 0x0

    goto :goto_b

    .line 496
    :catch_20
    move-exception v0

    .line 498
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 507
    .end local v0           #e:Ljava/io/IOException;
    :cond_29
    sparse-switch v1, :sswitch_data_94

    .line 547
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 548
    const/4 v2, 0x2

    .line 552
    :goto_41
    if-eqz v2, :cond_c

    move v3, v2

    .line 554
    goto :goto_b

    .line 510
    :sswitch_45
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cmdid:I

    goto :goto_41

    .line 514
    :sswitch_50
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 515
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    move-result v2

    .line 516
    goto :goto_41

    .line 519
    :sswitch_5e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 520
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_41

    .line 524
    :sswitch_6b
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_41

    .line 528
    :sswitch_74
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_noresp:I

    goto :goto_41

    .line 532
    :sswitch_7b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_archive:I

    goto :goto_41

    .line 536
    :sswitch_82
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_DELETE;->is_sftdel:I

    goto :goto_41

    .line 540
    :sswitch_89
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 541
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 543
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_41

    .line 507
    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_89
        0x7 -> :sswitch_7b
        0xb -> :sswitch_45
        0xe -> :sswitch_50
        0x14 -> :sswitch_6b
        0x1a -> :sswitch_5e
        0x1d -> :sswitch_74
        0x26 -> :sswitch_82
    .end sparse-switch
.end method
