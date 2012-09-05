.class public Lcom/syncmldstmo/base/sml$SML_METINF_MEM;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_METINF_MEM"
.end annotation


# instance fields
.field public free:J

.field public freeid:J

.field public shared:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseMem(Lcom/syncmldstmo/base/smlParser;)I
    .registers 8
    .parameter "p"

    .prologue
    .line 2480
    const/4 v1, -0x1

    .line 2483
    .local v1, id:I
    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 2485
    .local v2, res:I
    if-eqz v2, :cond_b

    move v3, v2

    .line 2540
    :goto_a
    return v3

    .line 2490
    :cond_b
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSkipLiteralElement()I

    move-result v2

    .line 2492
    if-eqz v2, :cond_13

    move v3, v2

    .line 2494
    goto :goto_a

    .line 2501
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_20

    move-result v1

    .line 2508
    :goto_17
    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    .line 2510
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    .line 2540
    const/4 v3, 0x0

    goto :goto_a

    .line 2503
    :catch_20
    move-exception v0

    .line 2505
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_17

    .line 2514
    .end local v0           #e:Ljava/io/IOException;
    :cond_29
    sparse-switch v1, :sswitch_data_64

    .line 2529
    const/high16 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2530
    const/4 v2, 0x2

    .line 2534
    :goto_41
    if-eqz v2, :cond_13

    move v3, v2

    .line 2536
    goto :goto_a

    .line 2517
    :sswitch_45
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->shared:Ljava/lang/String;

    goto :goto_41

    .line 2521
    :sswitch_4c
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->free:J

    goto :goto_41

    .line 2525
    :sswitch_58
    invoke-virtual {p1, v1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseElement(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/syncmldstmo/base/sml$SML_METINF_MEM;->freeid:J

    goto :goto_41

    .line 2514
    :sswitch_data_64
    .sparse-switch
        0x8 -> :sswitch_58
        0x9 -> :sswitch_4c
        0x11 -> :sswitch_45
    .end sparse-switch
.end method
