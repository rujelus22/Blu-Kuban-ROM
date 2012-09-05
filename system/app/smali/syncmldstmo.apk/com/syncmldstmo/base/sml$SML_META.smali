.class public Lcom/syncmldstmo/base/sml$SML_META;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_META"
.end annotation


# instance fields
.field public anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

.field public emi:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public is_fieldlevel:Z

.field public mark:Ljava/lang/String;

.field public maxmsgsize:I

.field public maxobjsize:J

.field public mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

.field public nextnonce:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1267
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syncmldstmo/base/sml$SML_META;->is_fieldlevel:Z

    .line 1267
    return-void
.end method


# virtual methods
.method public __smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;
    .registers 10
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1285
    const/4 v1, -0x1

    .line 1286
    .local v1, id:I
    const/4 v2, 0x0

    .line 1288
    .local v2, res:I
    const/16 v4, 0x1a

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1289
    if-eqz v2, :cond_e

    move-object p0, v3

    .line 1407
    .end local p0
    :goto_d
    return-object p0

    .line 1296
    .restart local p0
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_1a

    move-result v1

    .line 1303
    :goto_12
    if-ne v1, v7, :cond_23

    .line 1305
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    move-object p0, v3

    .line 1306
    goto :goto_d

    .line 1298
    :catch_1a
    move-exception v0

    .line 1300
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_12

    .line 1310
    .end local v0           #e:Ljava/io/IOException;
    :cond_23
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1311
    if-eqz v2, :cond_2c

    move-object p0, v3

    .line 1313
    goto :goto_d

    .line 1316
    :cond_2c
    invoke-virtual {p1, v7}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1317
    if-eqz v2, :cond_34

    move-object p0, v3

    .line 1319
    goto :goto_d

    .line 1322
    :cond_34
    iput v7, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    .line 1328
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_41

    move-result v1

    .line 1335
    :goto_3a
    if-ne v1, v7, :cond_4a

    .line 1337
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1338
    goto :goto_d

    .line 1330
    :catch_41
    move-exception v0

    .line 1332
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_3a

    .line 1342
    .end local v0           #e:Ljava/io/IOException;
    :cond_4a
    packed-switch v1, :pswitch_data_d4

    .line 1397
    :pswitch_4d
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1398
    const/4 v2, 0x2

    .line 1402
    :goto_62
    if-eqz v2, :cond_36

    move-object p0, v3

    .line 1404
    goto :goto_d

    .line 1345
    :pswitch_66
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1346
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1347
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_62

    .line 1351
    :pswitch_71
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->type:Ljava/lang/String;

    goto :goto_62

    .line 1355
    :pswitch_78
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->format:Ljava/lang/String;

    goto :goto_62

    .line 1359
    :pswitch_7f
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->mark:Ljava/lang/String;

    goto :goto_62

    .line 1363
    :pswitch_86
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->size:Ljava/lang/String;

    goto :goto_62

    .line 1367
    :pswitch_8d
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->nextnonce:Ljava/lang/String;

    goto :goto_62

    .line 1371
    :pswitch_94
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->version:Ljava/lang/String;

    goto :goto_62

    .line 1375
    :pswitch_9b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->maxmsgsize:I

    goto :goto_62

    .line 1379
    :pswitch_a6
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->maxobjsize:J

    goto :goto_62

    .line 1383
    :pswitch_b2
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->emi:Ljava/lang/String;

    goto :goto_62

    .line 1387
    :pswitch_b9
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    .line 1388
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->mem:Lcom/syncmldstmo/base/sml$SML_METINF_MEM;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->__smlparParseMem(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_62

    .line 1392
    :pswitch_c6
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    .line 1393
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_META;->anchor:Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->__smlparParseAnchor(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_62

    .line 1342
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_66
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_c6
        :pswitch_b2
        :pswitch_78
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_7f
        :pswitch_9b
        :pswitch_b9
        :pswitch_4d
        :pswitch_4d
        :pswitch_8d
        :pswitch_4d
        :pswitch_86
        :pswitch_71
        :pswitch_94
        :pswitch_a6
    .end packed-switch
.end method
