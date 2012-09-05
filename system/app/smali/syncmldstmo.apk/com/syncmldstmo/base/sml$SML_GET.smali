.class public Lcom/syncmldstmo/base/sml$SML_GET;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_GET"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public lang:I

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseGet(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 1186
    const/4 v1, -0x1

    .line 1187
    .local v1, id:I
    const/4 v2, 0x0

    .line 1189
    .local v2, res:I
    const/16 v3, 0x13

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1190
    if-eqz v2, :cond_c

    move v3, v2

    .line 1263
    :goto_b
    return v3

    .line 1199
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_20

    move-result v1

    .line 1206
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    .line 1208
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1262
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdGet(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_GET;)V

    .line 1263
    const/4 v3, 0x0

    goto :goto_b

    .line 1201
    :catch_20
    move-exception v0

    .line 1203
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 1212
    .end local v0           #e:Ljava/io/IOException;
    :cond_29
    sparse-switch v1, :sswitch_data_96

    .line 1252
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1253
    const/4 v2, 0x2

    .line 1257
    :goto_41
    if-eqz v2, :cond_c

    move v3, v2

    .line 1259
    goto :goto_b

    .line 1215
    :sswitch_45
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->cmdid:I

    goto :goto_41

    .line 1219
    :sswitch_50
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->is_noresp:I

    goto :goto_41

    .line 1223
    :sswitch_57
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->lang:I

    goto :goto_41

    .line 1227
    :sswitch_62
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 1228
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_41

    .line 1232
    :sswitch_6f
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1233
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_41

    .line 1237
    :sswitch_7c
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_GET;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_41

    .line 1241
    :sswitch_85
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1242
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1244
    if-eqz v2, :cond_92

    move v3, v2

    .line 1246
    goto/16 :goto_b

    .line 1248
    :cond_92
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_41

    .line 1212
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_85
        0xb -> :sswitch_45
        0xe -> :sswitch_62
        0x14 -> :sswitch_7c
        0x15 -> :sswitch_57
        0x1a -> :sswitch_6f
        0x1d -> :sswitch_50
    .end sparse-switch
.end method
