.class public Lcom/syncmldstmo/base/sml$SML_MAP;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_MAP"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public source:Ljava/lang/String;

.field public target:Lcom/syncmldstmo/base/sml$SML_TARGET;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 369
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseMap(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 380
    const/4 v1, -0x1

    .line 381
    .local v1, id:I
    const/4 v2, 0x0

    .line 383
    .local v2, res:I
    const/16 v3, 0x18

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 385
    if-eqz v2, :cond_c

    move v3, v2

    .line 461
    :goto_b
    return v3

    .line 394
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1c

    move-result v1

    .line 401
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_25

    .line 403
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 460
    invoke-virtual {p0}, Lcom/syncmldstmo/base/sml$SML_MAP;->smlBCmdMap()V

    .line 461
    const/4 v3, 0x0

    goto :goto_b

    .line 396
    :catch_1c
    move-exception v0

    .line 398
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 407
    .end local v0           #e:Ljava/io/IOException;
    :cond_25
    sparse-switch v1, :sswitch_data_96

    .line 449
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 450
    const/4 v2, 0x2

    .line 454
    :goto_3d
    if-eqz v2, :cond_c

    move v3, v2

    .line 456
    goto :goto_b

    .line 410
    :sswitch_41
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->cmdid:I

    goto :goto_3d

    .line 414
    :sswitch_4c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    goto :goto_3d

    .line 418
    :sswitch_53
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSource()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->source:Ljava/lang/String;

    goto :goto_3d

    .line 422
    :sswitch_5a
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    if-nez v3, :cond_65

    .line 423
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 424
    :cond_65
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    move-result v2

    .line 425
    goto :goto_3d

    .line 428
    :sswitch_6c
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-nez v3, :cond_77

    .line 429
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 430
    :cond_77
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3d

    .line 434
    :sswitch_7d
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseMapitemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_MAP;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_3d

    .line 438
    :sswitch_86
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 439
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 440
    if-eqz v2, :cond_93

    move v3, v2

    .line 442
    goto/16 :goto_b

    .line 445
    :cond_93
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3d

    .line 407
    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_86
        0xb -> :sswitch_41
        0xe -> :sswitch_5a
        0x19 -> :sswitch_7d
        0x1a -> :sswitch_6c
        0x27 -> :sswitch_53
        0x2e -> :sswitch_4c
    .end sparse-switch
.end method

.method public smlBCmdMap()V
    .registers 1

    .prologue
    .line 466
    return-void
.end method
