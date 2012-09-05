.class public Lcom/syncmldstmo/base/sml$SML_STATUS;
.super Ljava/lang/Object;
.source "sml.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_STATUS"
.end annotation


# instance fields
.field public chal:Lcom/syncmldstmo/base/sml$SML_META;

.field public cmd:Ljava/lang/String;

.field public cmdid:I

.field public cmdref:Ljava/lang/String;

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public data:Ljava/lang/String;

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public msgref:Ljava/lang/String;

.field public sourceref:Lcom/syncmldstmo/base/smlList;

.field public targetref:Lcom/syncmldstmo/base/smlList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 255
    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    .line 246
    return-void
.end method


# virtual methods
.method public __smlparParseStatus(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    const/16 v6, 0x29

    .line 261
    const/4 v1, -0x1

    .line 262
    .local v1, id:I
    const/4 v2, 0x0

    .line 264
    .local v2, res:I
    invoke-virtual {p1, v6}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 265
    if-eqz v2, :cond_11

    move v3, v2

    .line 365
    :goto_b
    return v3

    .line 288
    :cond_c
    if-ne v1, v6, :cond_2d

    .line 290
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 274
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_24

    move-result v1

    .line 281
    :goto_15
    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    .line 283
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 364
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdStatus(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_STATUS;)V

    .line 365
    const/4 v3, 0x0

    goto :goto_b

    .line 276
    :catch_24
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_15

    .line 294
    .end local v0           #e:Ljava/io/IOException;
    :cond_2d
    sparse-switch v1, :sswitch_data_a6

    .line 346
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 347
    const/4 v2, 0x2

    .line 350
    :goto_45
    if-eqz v2, :cond_11

    move v3, v2

    .line 352
    goto :goto_b

    .line 297
    :sswitch_49
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdid:I

    goto :goto_45

    .line 301
    :sswitch_54
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->msgref:Ljava/lang/String;

    goto :goto_45

    .line 305
    :sswitch_5b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmdref:Ljava/lang/String;

    goto :goto_45

    .line 309
    :sswitch_62
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cmd:Ljava/lang/String;

    goto :goto_45

    .line 313
    :sswitch_69
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->targetref:Lcom/syncmldstmo/base/smlList;

    goto :goto_45

    .line 317
    :sswitch_70
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElelist(I)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->sourceref:Lcom/syncmldstmo/base/smlList;

    goto :goto_45

    .line 321
    :sswitch_77
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 322
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_45

    .line 327
    :sswitch_84
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseChal()Lcom/syncmldstmo/base/sml$SML_META;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->chal:Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_45

    .line 331
    :sswitch_8b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->data:Ljava/lang/String;

    goto :goto_45

    .line 335
    :sswitch_92
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_STATUS;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_45

    .line 339
    :sswitch_9b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 340
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 342
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_45

    .line 294
    :sswitch_data_a6
    .sparse-switch
        0x0 -> :sswitch_9b
        0x9 -> :sswitch_84
        0xa -> :sswitch_62
        0xb -> :sswitch_49
        0xc -> :sswitch_5b
        0xe -> :sswitch_77
        0xf -> :sswitch_8b
        0x14 -> :sswitch_92
        0x1c -> :sswitch_54
        0x28 -> :sswitch_70
        0x2f -> :sswitch_69
    .end sparse-switch
.end method
