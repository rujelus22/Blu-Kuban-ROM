.class public Lcom/syncmldstmo/base/sml$SML_ALERT;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_ALERT"
.end annotation


# instance fields
.field public cmdid:I

.field public correlator:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public data:Ljava/lang/String;

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 908
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput v0, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->is_noresp:I

    .line 912
    iput v0, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->correlator:I

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 908
    return-void
.end method


# virtual methods
.method public __smlparParseAlert(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 919
    const/4 v1, -0x1

    .line 920
    .local v1, id:I
    const/4 v2, 0x0

    .line 922
    .local v2, res:I
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 923
    if-eqz v2, :cond_b

    move v3, v2

    .line 986
    :goto_a
    return v3

    .line 930
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1f

    move-result v1

    .line 937
    :goto_f
    const/4 v3, 0x1

    if-ne v1, v3, :cond_28

    .line 939
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 984
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAlert(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ALERT;)V

    .line 986
    const/4 v3, 0x0

    goto :goto_a

    .line 932
    :catch_1f
    move-exception v0

    .line 934
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f

    .line 943
    .end local v0           #e:Ljava/io/IOException;
    :cond_28
    sparse-switch v1, :sswitch_data_7e

    .line 973
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 974
    const/4 v2, 0x2

    .line 978
    :goto_40
    if-eqz v2, :cond_b

    move v3, v2

    .line 980
    goto :goto_a

    .line 946
    :sswitch_44
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cmdid:I

    goto :goto_40

    .line 950
    :sswitch_4f
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 951
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    goto :goto_40

    .line 955
    :sswitch_5c
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->data:Ljava/lang/String;

    goto :goto_40

    .line 959
    :sswitch_63
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_40

    .line 963
    :sswitch_6c
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_ALERT;->is_noresp:I

    goto :goto_40

    .line 967
    :sswitch_73
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 968
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 969
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_40

    .line 943
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_73
        0xb -> :sswitch_44
        0xe -> :sswitch_4f
        0xf -> :sswitch_5c
        0x14 -> :sswitch_63
        0x1d -> :sswitch_6c
    .end sparse-switch
.end method
