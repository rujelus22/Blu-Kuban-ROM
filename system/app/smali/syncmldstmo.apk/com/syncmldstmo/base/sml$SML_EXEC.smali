.class public Lcom/syncmldstmo/base/sml$SML_EXEC;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_EXEC"
.end annotation


# instance fields
.field public cmdid:I

.field public correlator:I

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 163
    return-void
.end method


# virtual methods
.method public __smlparParseExec(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 174
    const/4 v1, -0x1

    .line 175
    .local v1, id:I
    const/4 v2, 0x0

    .line 177
    .local v2, res:I
    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 178
    if-eqz v2, :cond_c

    move v3, v2

    .line 242
    :goto_b
    return v3

    .line 187
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1f

    move-result v1

    .line 194
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    .line 196
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 241
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdExec(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_EXEC;)V

    .line 242
    const/4 v3, 0x0

    goto :goto_b

    .line 189
    :catch_1f
    move-exception v0

    .line 191
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 200
    .end local v0           #e:Ljava/io/IOException;
    :cond_28
    sparse-switch v1, :sswitch_data_82

    .line 230
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 231
    const/4 v2, 0x2

    .line 235
    :goto_40
    if-eqz v2, :cond_c

    move v3, v2

    .line 237
    goto :goto_b

    .line 203
    :sswitch_44
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->cmdid:I

    goto :goto_40

    .line 207
    :sswitch_4f
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->is_noresp:I

    goto :goto_40

    .line 211
    :sswitch_56
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 212
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_40

    .line 216
    :sswitch_63
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_40

    .line 220
    :sswitch_6c
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_EXEC;->correlator:I

    goto :goto_40

    .line 224
    :sswitch_77
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 225
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 226
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_40

    .line 200
    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_77
        0xb -> :sswitch_44
        0x14 -> :sswitch_63
        0x1a -> :sswitch_56
        0x1d -> :sswitch_4f
        0x3c -> :sswitch_6c
    .end sparse-switch
.end method
