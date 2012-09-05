.class public Lcom/syncmldstmo/base/sml$SML_MAPITEM;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_MAPITEM"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Lcom/syncmldstmo/base/sml$SML_TARGET;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2412
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public __smlparParseMapitem(Lcom/syncmldstmo/base/smlParser;)I
    .registers 9
    .parameter "p"

    .prologue
    .line 2419
    const/4 v1, -0x1

    .line 2420
    .local v1, id:I
    const/4 v2, 0x0

    .line 2422
    .local v2, res:I
    const/16 v4, 0x19

    invoke-virtual {p1, v4}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCheckElement(I)I

    move-result v2

    .line 2424
    if-eqz v2, :cond_c

    move v3, v2

    .line 2468
    .end local v2           #res:I
    .local v3, res:I
    :goto_b
    return v3

    .line 2433
    .end local v3           #res:I
    .restart local v2       #res:I
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseCurrentElement()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_19

    move-result v1

    .line 2440
    :goto_10
    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    .line 2442
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseReadElement()I

    move-result v1

    move v3, v2

    .line 2468
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 2435
    .end local v3           #res:I
    .restart local v2       #res:I
    :catch_19
    move-exception v0

    .line 2437
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 2446
    .end local v0           #e:Ljava/io/IOException;
    :cond_22
    sparse-switch v1, :sswitch_data_4c

    .line 2457
    const/high16 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SML_ERR_UNKNOWN_ELEMENT : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2458
    const/4 v2, 0x2

    .line 2462
    :goto_3a
    if-eqz v2, :cond_c

    move v3, v2

    .line 2464
    .end local v2           #res:I
    .restart local v3       #res:I
    goto :goto_b

    .line 2449
    .end local v3           #res:I
    .restart local v2       #res:I
    :sswitch_3e
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseTarget()Lcom/syncmldstmo/base/sml$SML_TARGET;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->target:Lcom/syncmldstmo/base/sml$SML_TARGET;

    goto :goto_3a

    .line 2453
    :sswitch_45
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlParser;->__smlparParseSource()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/syncmldstmo/base/sml$SML_MAPITEM;->source:Ljava/lang/String;

    goto :goto_3a

    .line 2446
    :sswitch_data_4c
    .sparse-switch
        0x27 -> :sswitch_45
        0x2e -> :sswitch_3e
    .end sparse-switch
.end method
