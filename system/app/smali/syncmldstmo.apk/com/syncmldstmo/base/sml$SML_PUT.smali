.class public Lcom/syncmldstmo/base/sml$SML_PUT;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_PUT"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field i:I

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public lang:I

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1082
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    const/4 v0, 0x1

    iput v0, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->i:I

    .line 1082
    return-void
.end method


# virtual methods
.method public __smlparParsePut(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 1094
    const/4 v1, -0x1

    .line 1095
    .local v1, id:I
    const/4 v2, 0x0

    .line 1097
    .local v2, res:I
    const/16 v3, 0x1f

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1098
    if-eqz v2, :cond_c

    move v3, v2

    .line 1171
    :goto_b
    return v3

    .line 1107
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_19

    move-result v1

    .line 1114
    :goto_10
    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    .line 1116
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1171
    const/4 v3, 0x0

    goto :goto_b

    .line 1109
    :catch_19
    move-exception v0

    .line 1111
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 1120
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    sparse-switch v1, :sswitch_data_92

    .line 1161
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1162
    const/4 v2, 0x2

    .line 1166
    :goto_3a
    if-eqz v2, :cond_c

    move v3, v2

    .line 1168
    goto :goto_b

    .line 1123
    :sswitch_3e
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->cmdid:I

    goto :goto_3a

    .line 1127
    :sswitch_49
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->is_noresp:I

    goto :goto_3a

    .line 1131
    :sswitch_50
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->lang:I

    goto :goto_3a

    .line 1135
    :sswitch_5b
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 1136
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_3a

    .line 1140
    :sswitch_68
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    if-nez v3, :cond_73

    .line 1141
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1142
    :cond_73
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3a

    .line 1146
    :sswitch_79
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_PUT;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_3a

    .line 1150
    :sswitch_82
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1151
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1153
    if-eqz v2, :cond_8f

    move v3, v2

    .line 1155
    goto/16 :goto_b

    .line 1157
    :cond_8f
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3a

    .line 1120
    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_82
        0xb -> :sswitch_3e
        0xe -> :sswitch_5b
        0x14 -> :sswitch_79
        0x15 -> :sswitch_50
        0x1a -> :sswitch_68
        0x1d -> :sswitch_49
    .end sparse-switch
.end method
