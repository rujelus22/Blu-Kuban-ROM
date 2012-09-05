.class public Lcom/syncmldstmo/base/sml$SML_COPY;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_COPY"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1740
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseCopy(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 1750
    const/4 v1, -0x1

    .line 1751
    .local v1, id:I
    const/4 v2, 0x0

    .line 1753
    .local v2, res:I
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1754
    if-eqz v2, :cond_c

    move v3, v2

    .line 1820
    :goto_b
    return v3

    .line 1763
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1f

    move-result v1

    .line 1770
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    .line 1772
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 1819
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdCopy(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_COPY;)V

    .line 1820
    const/4 v3, 0x0

    goto :goto_b

    .line 1765
    :catch_1f
    move-exception v0

    .line 1767
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 1776
    .end local v0           #e:Ljava/io/IOException;
    :cond_28
    sparse-switch v1, :sswitch_data_86

    .line 1808
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1809
    const/4 v2, 0x2

    .line 1813
    :goto_40
    if-eqz v2, :cond_c

    move v3, v2

    .line 1815
    goto :goto_b

    .line 1779
    :sswitch_44
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->cmdid:I

    goto :goto_40

    .line 1783
    :sswitch_4f
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->is_noresp:I

    goto :goto_40

    .line 1787
    :sswitch_56
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 1788
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    move-result v2

    .line 1789
    goto :goto_40

    .line 1792
    :sswitch_64
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1793
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_40

    .line 1797
    :sswitch_71
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_COPY;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_40

    .line 1801
    :sswitch_7a
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1802
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1804
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_40

    .line 1776
    nop

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_7a
        0xb -> :sswitch_44
        0xe -> :sswitch_56
        0x14 -> :sswitch_71
        0x1a -> :sswitch_64
        0x1d -> :sswitch_4f
    .end sparse-switch
.end method
