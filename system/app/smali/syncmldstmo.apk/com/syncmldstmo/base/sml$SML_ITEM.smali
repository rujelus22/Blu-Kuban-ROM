.class public Lcom/syncmldstmo/base/sml$SML_ITEM;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_ITEM"
.end annotation


# instance fields
.field public data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public moredata:I

.field public source:Ljava/lang/String;

.field public sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

.field public target:Lcom/syncmldstmo/base/sml$SML_TARGET;

.field public targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1834
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseItem(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    const/high16 v6, 0x4

    .line 1846
    const/4 v1, -0x1

    .line 1847
    .local v1, id:I
    const/4 v2, 0x0

    .line 1849
    .local v2, res:I
    const/16 v4, 0x14

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1851
    if-eqz v2, :cond_13

    .line 1853
    const-string v4, "smlItem res is not ok!!"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v3, v2

    .line 1930
    .end local v2           #res:I
    .local v3, res:I
    :goto_12
    return v3

    .line 1861
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1f

    move-result v1

    .line 1868
    :goto_17
    const/4 v4, 0x1

    if-ne v1, v4, :cond_28

    .line 1870
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move v3, v2

    .line 1930
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_12

    .line 1863
    .end local v3           #res:I
    .restart local v2       #res:I
    :catch_1f
    move-exception v0

    .line 1865
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 1874
    .end local v0           #e:Ljava/io/IOException;
    :cond_28
    sparse-switch v1, :sswitch_data_8c

    .line 1914
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1915
    const/4 v2, 0x2

    .line 1919
    :goto_3e
    if-eqz v2, :cond_13

    move v3, v2

    .line 1921
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_12

    .line 1877
    .end local v3           #res:I
    .restart local v2       #res:I
    :sswitch_42
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    goto :goto_3e

    .line 1881
    :sswitch_49
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->source:Ljava/lang/String;

    goto :goto_3e

    .line 1885
    :sswitch_50
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTargetparent()Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->targetparent:Lcom/syncmldstmo/base/sml$SML_TARGETPARENT;

    goto :goto_3e

    .line 1889
    :sswitch_57
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSouceparent()Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->sourceparent:Lcom/syncmldstmo/base/sml$SML_SOURCEPARENT;

    goto :goto_3e

    .line 1893
    :sswitch_5e
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1894
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v4, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3e

    .line 1898
    :sswitch_6b
    new-instance v4, Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-direct {v4}, Lcom/syncmldstmo/base/sml$SML_PCDATA;-><init>()V

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    .line 1899
    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->data:Lcom/syncmldstmo/base/sml$SML_PCDATA;

    invoke-virtual {v4, p1, v1}, Lcom/syncmldstmo/base/sml$SML_PCDATA;->__smlparParsePcdata(Lcom/syncmldstmo/base/smlParser;I)I

    move-result v2

    .line 1900
    goto :goto_3e

    .line 1903
    :sswitch_79
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v4

    iput v4, p0, Lcom/syncmldstmo/base/sml$SML_ITEM;->moredata:I

    goto :goto_3e

    .line 1907
    :sswitch_80
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1908
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1910
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3e

    .line 1874
    nop

    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_80
        0xf -> :sswitch_6b
        0x1a -> :sswitch_5e
        0x27 -> :sswitch_49
        0x2e -> :sswitch_42
        0x34 -> :sswitch_79
        0x39 -> :sswitch_57
        0x3a -> :sswitch_50
    .end sparse-switch
.end method
