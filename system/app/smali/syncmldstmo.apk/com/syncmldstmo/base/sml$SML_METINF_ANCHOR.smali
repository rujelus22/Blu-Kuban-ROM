.class public Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_METINF_ANCHOR"
.end annotation


# instance fields
.field public last:Ljava/lang/String;

.field public next:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1666
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseAnchor(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    .line 1673
    const/4 v1, -0x1

    .line 1674
    .local v1, id:I
    const/4 v2, 0x0

    .line 1676
    .local v2, res:I
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1677
    if-eqz v2, :cond_b

    move v3, v2

    .line 1726
    .end local v2           #res:I
    .local v3, res:I
    :goto_a
    return v3

    .line 1682
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipLiteralElement()I

    move-result v2

    .line 1683
    if-eqz v2, :cond_13

    move v3, v2

    .line 1685
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_a

    .line 1692
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_20

    move-result v1

    .line 1699
    :goto_17
    const/4 v4, 0x1

    if-ne v1, v4, :cond_29

    .line 1701
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    move v3, v2

    .line 1726
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_a

    .line 1694
    .end local v3           #res:I
    .restart local v2       #res:I
    :catch_20
    move-exception v0

    .line 1696
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 1705
    .end local v0           #e:Ljava/io/IOException;
    :cond_29
    sparse-switch v1, :sswitch_data_54

    .line 1716
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1717
    const/4 v2, 0x2

    .line 1721
    :goto_41
    if-eqz v2, :cond_13

    move v3, v2

    .line 1723
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_a

    .line 1708
    .end local v3           #res:I
    .restart local v2       #res:I
    :sswitch_45
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->last:Ljava/lang/String;

    goto :goto_41

    .line 1712
    :sswitch_4c
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_METINF_ANCHOR;->next:Ljava/lang/String;

    goto :goto_41

    .line 1705
    nop

    :sswitch_data_54
    .sparse-switch
        0xa -> :sswitch_45
        0xf -> :sswitch_4c
    .end sparse-switch
.end method
