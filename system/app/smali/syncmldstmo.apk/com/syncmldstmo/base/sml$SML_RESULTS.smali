.class public Lcom/syncmldstmo/base/sml$SML_RESULTS;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_RESULTS"
.end annotation


# instance fields
.field public cmdid:I

.field public cmdref:Ljava/lang/String;

.field public itemlist:Lcom/syncmldstmo/base/smlList;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public msgref:Ljava/lang/String;

.field public sourceref:Ljava/lang/String;

.field public targetref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 990
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseResults(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 1002
    const/4 v1, -0x1

    .line 1003
    .local v1, id:I
    const/4 v2, 0x0

    .line 1005
    .local v2, res:I
    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 1006
    if-eqz v2, :cond_c

    move v3, v2

    .line 1078
    :goto_b
    return v3

    .line 1015
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_19

    move-result v1

    .line 1023
    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    .line 1025
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1078
    :goto_17
    const/4 v3, 0x0

    goto :goto_b

    .line 1017
    :catch_19
    move-exception v0

    .line 1019
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 1029
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    sparse-switch v1, :sswitch_data_86

    .line 1068
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1069
    const/4 v2, 0x2

    .line 1073
    :goto_3a
    if-eqz v2, :cond_c

    move v3, v2

    .line 1075
    goto :goto_b

    .line 1032
    :sswitch_3e
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdid:I

    goto :goto_3a

    .line 1036
    :sswitch_49
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->msgref:Ljava/lang/String;

    goto :goto_3a

    .line 1040
    :sswitch_50
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->cmdref:Ljava/lang/String;

    goto :goto_3a

    .line 1044
    :sswitch_57
    new-instance v3, Lcom/syncmldstmo/base/sml$SML_META;

    invoke-direct {v3}, Lcom/syncmldstmo/base/sml$SML_META;-><init>()V

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    .line 1045
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->meta:Lcom/syncmldstmo/base/sml$SML_META;

    invoke-virtual {v3, p1}, Lcom/syncmldstmo/base/sml$SML_META;->__smlparParseMeta(Lcom/syncmldstmo/base/smlParser;)Lcom/syncmldstmo/base/sml$SML_META;

    goto :goto_3a

    .line 1049
    :sswitch_64
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->targetref:Ljava/lang/String;

    goto :goto_3a

    .line 1053
    :sswitch_6b
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->sourceref:Ljava/lang/String;

    goto :goto_3a

    .line 1057
    :sswitch_72
    iget-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->itemlist:Lcom/syncmldstmo/base/smlList;

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseItemlist(Lcom/syncmldstmo/base/smlList;)Lcom/syncmldstmo/base/smlList;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_RESULTS;->itemlist:Lcom/syncmldstmo/base/smlList;

    goto :goto_3a

    .line 1061
    :sswitch_7b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1062
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 1064
    iput v1, p1, Lcom/syncmldstmo/base/smlParser;->_codePage:I

    goto :goto_3a

    .line 1029
    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_7b
        0xb -> :sswitch_3e
        0xc -> :sswitch_50
        0x14 -> :sswitch_72
        0x1a -> :sswitch_57
        0x1c -> :sswitch_49
        0x28 -> :sswitch_6b
        0x2f -> :sswitch_64
    .end sparse-switch
.end method
