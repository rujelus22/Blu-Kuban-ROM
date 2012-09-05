.class public Lcom/syncmldstmo/base/sml$SML_CRED;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_CRED"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1411
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    .line 1418
    const/4 v1, -0x1

    .line 1419
    .local v1, id:I
    const/4 v2, 0x0

    .line 1421
    .local v2, res:I
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1422
    if-eqz v2, :cond_c

    move v3, v2

    .line 1472
    .end local v2           #res:I
    .local v3, res:I
    :goto_b
    return v3

    .line 1431
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_19

    move-result v1

    .line 1438
    :goto_10
    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    .line 1440
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    move v3, v2

    .line 1472
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 1433
    .end local v3           #res:I
    .restart local v2       #res:I
    :catch_19
    move-exception v0

    .line 1435
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 1444
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    sparse-switch v1, :sswitch_data_5e

    .line 1462
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1463
    const/4 v2, 0x2

    .line 1467
    :goto_3a
    if-eqz v2, :cond_c

    move v3, v2

    .line 1469
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 1447
    .end local v3           #res:I
    .restart local v2       #res:I
    :sswitch_3e
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1448
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_CRED;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3a

    .line 1452
    :sswitch_4b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_CRED;->data:Ljava/lang/String;

    goto :goto_3a

    .line 1456
    :sswitch_52
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1457
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1458
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3a

    .line 1444
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_52
        0xf -> :sswitch_4b
        0x1a -> :sswitch_3e
    .end sparse-switch
.end method
