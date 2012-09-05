.class public Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_SYNCHEADER"
.end annotation


# instance fields
.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_noresp:I

.field public locname:Ljava/lang/String;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public msgid:I

.field public respuri:Ljava/lang/String;

.field public sessionid:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public target:Lcom/syncmldstmo/base/sml$SML_TARGET;

.field public verdtd:Ljava/lang/String;

.field public verproto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseSyncheader(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "parser"

    .prologue
    const/high16 v5, 0x4

    .line 55
    const/4 v1, -0x1

    .line 60
    .local v1, id:I
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 61
    .local v2, res:I
    if-eqz v2, :cond_12

    .line 63
    const-string v3, "not SML_ERR_OK"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v3, v2

    .line 159
    :goto_11
    return v3

    .line 71
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_b9

    move-result v1

    .line 78
    :goto_16
    const/4 v3, 0x1

    if-ne v1, v3, :cond_c3

    .line 80
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "verproto : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sessionid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->sessionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    if-eqz v3, :cond_5f

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "target.pLocURI : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    iget-object v4, v4, Lcom/syncmldstmo/base/sml$SML_TARGET;->pLocURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 152
    :cond_5f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msgid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "source : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "respuri : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is_noresp : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->is_noresp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 158
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdSyncHdr(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)V

    .line 159
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 73
    :catch_b9
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :cond_c3
    sparse-switch v1, :sswitch_data_146

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 137
    const/4 v2, 0x2

    .line 141
    :goto_d9
    if-eqz v2, :cond_12

    .line 143
    const-string v3, "res not  SML_ERR_OK"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    move v3, v2

    .line 144
    goto/16 :goto_11

    .line 87
    :sswitch_e3
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verdtd:Ljava/lang/String;

    goto :goto_d9

    .line 91
    :sswitch_ea
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->verproto:Ljava/lang/String;

    goto :goto_d9

    .line 95
    :sswitch_f1
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->sessionid:Ljava/lang/String;

    goto :goto_d9

    .line 99
    :sswitch_f8
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->msgid:I

    goto :goto_d9

    .line 103
    :sswitch_103
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->respuri:Ljava/lang/String;

    goto :goto_d9

    .line 107
    :sswitch_10a
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSource()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->source:Ljava/lang/String;

    goto :goto_d9

    .line 111
    :sswitch_111
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    goto :goto_d9

    .line 115
    :sswitch_118
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->is_noresp:I

    goto :goto_d9

    .line 119
    :sswitch_11f
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 120
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_d9

    .line 124
    :sswitch_12c
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 125
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    move-result v2

    .line 126
    goto :goto_d9

    .line 129
    :sswitch_13a
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 130
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 132
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_d9

    .line 84
    nop

    :sswitch_data_146
    .sparse-switch
        0x0 -> :sswitch_13a
        0xe -> :sswitch_12c
        0x1a -> :sswitch_11f
        0x1b -> :sswitch_f8
        0x1d -> :sswitch_118
        0x21 -> :sswitch_103
        0x25 -> :sswitch_f1
        0x27 -> :sswitch_10a
        0x2e -> :sswitch_111
        0x31 -> :sswitch_e3
        0x32 -> :sswitch_ea
    .end sparse-switch
.end method
