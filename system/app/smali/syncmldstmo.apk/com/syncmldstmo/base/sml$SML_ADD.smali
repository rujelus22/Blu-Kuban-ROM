.class public Lcom/syncmldstmo/base/sml$SML_ADD;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_ADD"
.end annotation


# instance fields
.field public cmdid:I

.field public cred:Lcom/syncmldstmo/base/sml$SML_CRED;

.field public is_noresp:I

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 824
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->itemlist:Lcom/syncmldstmo/base/smlList;

    .line 824
    return-void
.end method


# virtual methods
.method public __smlparParseAdd(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 834
    const/4 v1, -0x1

    .line 835
    .local v1, id:I
    const/4 v2, 0x0

    .line 837
    .local v2, res:I
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 838
    if-eqz v2, :cond_b

    move v3, v2

    .line 904
    :goto_a
    return v3

    .line 847
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1e

    move-result v1

    .line 854
    :goto_f
    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    .line 856
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    .line 902
    iget-object v3, p1, Lcom/syncmldstmo/base/smlParser;->m_cb:Lcom/syncmldstmo/base/smlHandleCmd_H;

    iget-object v4, p1, Lcom/syncmldstmo/base/smlParser;->_userdata:Ljava/lang/Object;

    invoke-virtual {v3, v4, p0}, Lcom/syncmldstmo/base/smlHandleCmd_H;->smlHCmdAdd(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ADD;)V

    .line 904
    const/4 v3, 0x0

    goto :goto_a

    .line 849
    :catch_1e
    move-exception v0

    .line 851
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f

    .line 860
    .end local v0           #e:Ljava/io/IOException;
    :cond_27
    sparse-switch v1, :sswitch_data_84

    .line 891
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 892
    const/4 v2, 0x2

    .line 896
    :goto_3f
    if-eqz v2, :cond_b

    move v3, v2

    .line 898
    goto :goto_a

    .line 863
    :sswitch_43
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->cmdid:I

    goto :goto_3f

    .line 867
    :sswitch_4e
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_CRED;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    .line 868
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->cred:Lcom/syncmldstmo/base/sml$SML_CRED;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_CRED;->__smlparParseCred(Lcom/syncmldstmo/base/smlParser;)I

    move-result v2

    .line 869
    goto :goto_3f

    .line 872
    :sswitch_5c
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 873
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3f

    .line 877
    :sswitch_69
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_3f

    .line 881
    :sswitch_72
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseBlankElement(I)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_ADD;->is_noresp:I

    goto :goto_3f

    .line 885
    :sswitch_79
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 886
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 887
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3f

    .line 860
    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_79
        0xb -> :sswitch_43
        0xe -> :sswitch_4e
        0x14 -> :sswitch_69
        0x1a -> :sswitch_5c
        0x1d -> :sswitch_72
    .end sparse-switch
.end method
