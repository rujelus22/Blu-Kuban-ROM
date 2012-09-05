.class public Lnm;
.super Lez;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnm$1;,
        Lnm$b;,
        Lnm$a;
    }
.end annotation


# static fields
.field protected static final b:I


# instance fields
.field protected c:Lfh;

.field protected d:I

.field protected e:Z

.field protected f:Lnm$b;

.field protected g:Lnm$b;

.field protected h:I

.field protected i:Lgm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lfd$a;->collectDefaults()I

    move-result v0

    sput v0, Lnm;->b:I

    return-void
.end method

.method public constructor <init>(Lfh;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lez;-><init>()V

    .line 98
    iput-object p1, p0, Lnm;->c:Lfh;

    .line 99
    sget v0, Lnm;->b:I

    iput v0, p0, Lnm;->d:I

    .line 100
    new-instance v0, Lgr;

    invoke-direct {v0}, Lgr;-><init>()V

    iput-object v0, p0, Lnm;->i:Lgm;

    .line 102
    new-instance v0, Lnm$b;

    invoke-direct {v0}, Lnm$b;-><init>()V

    iput-object v0, p0, Lnm;->g:Lnm$b;

    iput-object v0, p0, Lnm;->f:Lnm$b;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lnm;->h:I

    .line 104
    return-void
.end method

.method private a(Lfg;)V
    .registers 4
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lnm;->g:Lnm$b;

    iget v1, p0, Lnm;->h:I

    invoke-virtual {v0, v1, p1}, Lnm$b;->a(ILfg;)Lnm$b;

    move-result-object v0

    .line 669
    if-nez v0, :cond_11

    .line 670
    iget v0, p0, Lnm;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnm;->h:I

    .line 675
    :goto_10
    return-void

    .line 672
    :cond_11
    iput-object v0, p0, Lnm;->g:Lnm$b;

    .line 673
    const/4 v0, 0x1

    iput v0, p0, Lnm;->h:I

    goto :goto_10
.end method

.method private a(Lfg;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lnm;->g:Lnm$b;

    iget v1, p0, Lnm;->h:I

    invoke-virtual {v0, v1, p1, p2}, Lnm$b;->a(ILfg;Ljava/lang/Object;)Lnm$b;

    move-result-object v0

    .line 679
    if-nez v0, :cond_11

    .line 680
    iget v0, p0, Lnm;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnm;->h:I

    .line 685
    :goto_10
    return-void

    .line 682
    :cond_11
    iput-object v0, p0, Lnm;->g:Lnm$b;

    .line 683
    const/4 v0, 0x1

    iput v0, p0, Lnm;->h:I

    goto :goto_10
.end method

.method private static i()V
    .registers 2

    .prologue
    .line 688
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lez;
    .registers 1

    .prologue
    .line 306
    return-object p0
.end method

.method public final a(Lfd;)Lfd;
    .registers 5
    .parameter

    .prologue
    .line 145
    new-instance v0, Lnm$a;

    iget-object v1, p0, Lnm;->f:Lnm$b;

    invoke-virtual {p1}, Lfd;->a()Lfh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnm$a;-><init>(Lnm$b;Lfh;)V

    .line 146
    invoke-virtual {p1}, Lfd;->g()Lfa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnm$a;->a(Lfa;)V

    .line 147
    return-object v0
.end method

.method public final a(C)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lnm;->i()V

    .line 438
    return-void
.end method

.method public final a(D)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 473
    sget-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public final a(F)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 479
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 463
    sget-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public final a(J)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 469
    return-void
.end method

.method public final a(Lev;[BI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 557
    new-array v0, p3, [B

    .line 558
    invoke-static {p2, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    invoke-virtual {p0, v0}, Lnm;->a(Ljava/lang/Object;)V

    .line 560
    return-void
.end method

.method public final a(Lez;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lnm;->f:Lnm$b;

    .line 170
    const/4 v1, -0x1

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 173
    :goto_7
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_15

    .line 175
    invoke-virtual {v1}, Lnm$b;->a()Lnm$b;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_b5

    move-object v1, v0

    move v0, v4

    .line 178
    :cond_15
    invoke-virtual {v1, v0}, Lnm$b;->a(I)Lfg;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_b5

    .line 182
    sget-object v3, Lnm$1;->a:[I

    invoke-virtual {v2}, Lfg;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_b6

    .line 238
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_2e
    invoke-virtual {p1}, Lez;->d()V

    goto :goto_7

    .line 187
    :pswitch_32
    invoke-virtual {p1}, Lez;->e()V

    goto :goto_7

    .line 190
    :pswitch_36
    invoke-virtual {p1}, Lez;->b()V

    goto :goto_7

    .line 193
    :pswitch_3a
    invoke-virtual {p1}, Lez;->c()V

    goto :goto_7

    .line 196
    :pswitch_3e
    invoke-virtual {v1, v0}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lez;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 199
    :pswitch_48
    invoke-virtual {v1, v0}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lez;->b(Ljava/lang/String;)V

    goto :goto_7

    .line 203
    :pswitch_52
    invoke-virtual {v1, v0}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 204
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_62

    .line 205
    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Lez;->a(Ljava/math/BigInteger;)V

    goto :goto_7

    .line 206
    :cond_62
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_6e

    .line 207
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lez;->a(J)V

    goto :goto_7

    .line 209
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lez;->a(I)V

    goto :goto_7

    .line 215
    :pswitch_76
    invoke-virtual {v1, v0}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 216
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_86

    .line 217
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Lez;->a(Ljava/math/BigDecimal;)V

    goto :goto_7

    .line 218
    :cond_86
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_93

    .line 219
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Lez;->a(F)V

    goto/16 :goto_7

    .line 221
    :cond_93
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lez;->a(D)V

    goto/16 :goto_7

    .line 226
    :pswitch_9c
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lez;->a(Z)V

    goto/16 :goto_7

    .line 229
    :pswitch_a2
    invoke-virtual {p1, v4}, Lez;->a(Z)V

    goto/16 :goto_7

    .line 232
    :pswitch_a7
    invoke-virtual {p1}, Lez;->f()V

    goto/16 :goto_7

    .line 235
    :pswitch_ac
    invoke-virtual {v1, v0}, Lnm$b;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lez;->a(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 240
    :cond_b5
    return-void

    .line 182
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_48
        :pswitch_52
        :pswitch_76
        :pswitch_9c
        :pswitch_a2
        :pswitch_a7
        :pswitch_ac
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lfg;->VALUE_EMBEDDED_OBJECT:Lfg;

    invoke-direct {p0, v0, p1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lfg;->FIELD_NAME:Lfg;

    invoke-direct {p0, v0, p1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lnm;->i:Lgm;

    invoke-virtual {v0, p1}, Lgm;->a(Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 483
    if-nez p1, :cond_8

    .line 484
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 488
    :goto_7
    return-void

    .line 486
    :cond_8
    sget-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    invoke-direct {p0, v0, p1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 492
    if-nez p1, :cond_8

    .line 493
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 497
    :goto_7
    return-void

    .line 495
    :cond_8
    sget-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    invoke-direct {p0, v0, p1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final a(Z)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 509
    if-eqz p1, :cond_8

    sget-object v0, Lfg;->VALUE_TRUE:Lfg;

    :goto_4
    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 510
    return-void

    .line 509
    :cond_8
    sget-object v0, Lfg;->VALUE_FALSE:Lfg;

    goto :goto_4
.end method

.method public final a([CI)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lnm;->i()V

    .line 433
    return-void
.end method

.method public final a([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 417
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lnm;->b(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 348
    sget-object v0, Lfg;->START_ARRAY:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 349
    iget-object v0, p0, Lnm;->i:Lgm;

    invoke-virtual {v0}, Lgm;->h()Lgm;

    move-result-object v0

    iput-object v0, p0, Lnm;->i:Lgm;

    .line 350
    return-void
.end method

.method public final b(Lfd;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    .line 636
    sget-object v1, Lfg;->FIELD_NAME:Lfg;

    if-ne v0, v1, :cond_13

    .line 637
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm;->a(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    .line 642
    :cond_13
    sget-object v1, Lnm$1;->a:[I

    invoke-virtual {v0}, Lfg;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_f0

    .line 658
    :pswitch_1e
    sget-object v0, Lnm$1;->a:[I

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v1

    invoke-virtual {v1}, Lfg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_fa

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :pswitch_35
    invoke-virtual {p0}, Lnm;->b()V

    .line 645
    :goto_38
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->END_ARRAY:Lfg;

    if-eq v0, v1, :cond_44

    .line 646
    invoke-virtual {p0, p1}, Lnm;->b(Lfd;)V

    goto :goto_38

    .line 648
    :cond_44
    invoke-virtual {p0}, Lnm;->c()V

    .line 658
    :goto_47
    return-void

    .line 651
    :pswitch_48
    invoke-virtual {p0}, Lnm;->d()V

    .line 652
    :goto_4b
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->END_OBJECT:Lfg;

    if-eq v0, v1, :cond_57

    .line 653
    invoke-virtual {p0, p1}, Lnm;->b(Lfd;)V

    goto :goto_4b

    .line 655
    :cond_57
    invoke-virtual {p0}, Lnm;->e()V

    goto :goto_47

    .line 658
    :pswitch_5b
    invoke-virtual {p0}, Lnm;->d()V

    goto :goto_47

    :pswitch_5f
    invoke-virtual {p0}, Lnm;->e()V

    goto :goto_47

    :pswitch_63
    invoke-virtual {p0}, Lnm;->b()V

    goto :goto_47

    :pswitch_67
    invoke-virtual {p0}, Lnm;->c()V

    goto :goto_47

    :pswitch_6b
    invoke-virtual {p1}, Lfd;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm;->a(Ljava/lang/String;)V

    goto :goto_47

    :pswitch_73
    invoke-virtual {p1}, Lfd;->j()[C

    move-result-object v0

    invoke-virtual {p1}, Lfd;->l()I

    move-result v1

    invoke-virtual {p1}, Lfd;->k()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lnm;->a([CII)V

    goto :goto_47

    :pswitch_83
    sget-object v0, Lnm$1;->b:[I

    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v1

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_116

    invoke-virtual {p1}, Lfd;->r()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnm;->a(J)V

    goto :goto_47

    :pswitch_9a
    invoke-virtual {p1}, Lfd;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lnm;->a(I)V

    goto :goto_47

    :pswitch_a2
    invoke-virtual {p1}, Lfd;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm;->a(Ljava/math/BigInteger;)V

    goto :goto_47

    :pswitch_aa
    sget-object v0, Lnm$1;->b:[I

    invoke-virtual {p1}, Lfd;->n()Lfd$b;

    move-result-object v1

    invoke-virtual {v1}, Lfd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_11e

    invoke-virtual {p1}, Lfd;->u()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnm;->a(D)V

    goto :goto_47

    :pswitch_c1
    invoke-virtual {p1}, Lfd;->v()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm;->a(Ljava/math/BigDecimal;)V

    goto/16 :goto_47

    :pswitch_ca
    invoke-virtual {p1}, Lfd;->t()F

    move-result v0

    invoke-virtual {p0, v0}, Lnm;->a(F)V

    goto/16 :goto_47

    :pswitch_d3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnm;->a(Z)V

    goto/16 :goto_47

    :pswitch_d9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnm;->a(Z)V

    goto/16 :goto_47

    :pswitch_df
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    goto/16 :goto_47

    :pswitch_e6
    invoke-virtual {p1}, Lfd;->w()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnm;->a(Ljava/lang/Object;)V

    goto/16 :goto_47

    .line 642
    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_48
        :pswitch_1e
        :pswitch_35
    .end packed-switch

    .line 658
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5f
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_73
        :pswitch_83
        :pswitch_aa
        :pswitch_d3
        :pswitch_d9
        :pswitch_df
        :pswitch_e6
    .end packed-switch

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_a2
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x3
        :pswitch_c1
        :pswitch_ca
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 408
    if-nez p1, :cond_8

    .line 409
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 413
    :goto_7
    return-void

    .line 411
    :cond_8
    sget-object v0, Lfg;->VALUE_STRING:Lfg;

    invoke-direct {p0, v0, p1}, Lnm;->a(Lfg;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final c()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lfg;->END_ARRAY:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 358
    iget-object v0, p0, Lnm;->i:Lgm;

    invoke-virtual {v0}, Lgm;->j()Lgm;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_f

    .line 360
    iput-object v0, p0, Lnm;->i:Lgm;

    .line 362
    :cond_f
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Lnm;->i()V

    .line 423
    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnm;->e:Z

    .line 333
    return-void
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lfg;->START_OBJECT:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 369
    iget-object v0, p0, Lnm;->i:Lgm;

    invoke-virtual {v0}, Lgm;->i()Lgm;

    move-result-object v0

    iput-object v0, p0, Lnm;->i:Lgm;

    .line 370
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lnm;->b(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public final e()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lfg;->END_OBJECT:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 378
    iget-object v0, p0, Lnm;->i:Lgm;

    invoke-virtual {v0}, Lgm;->j()Lgm;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_f

    .line 380
    iput-object v0, p0, Lnm;->i:Lgm;

    .line 382
    :cond_f
    return-void
.end method

.method public final f()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 514
    sget-object v0, Lfg;->VALUE_NULL:Lfg;

    invoke-direct {p0, v0}, Lnm;->a(Lfg;)V

    .line 515
    return-void
.end method

.method public final g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    return-void
.end method

.method public final h()Lfd;
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lnm;->c:Lfh;

    new-instance v1, Lnm$a;

    iget-object v2, p0, Lnm;->f:Lnm$b;

    invoke-direct {v1, v2, v0}, Lnm$a;-><init>(Lnm$b;Lfh;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x64

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    const-string v1, "[TokenBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p0}, Lnm;->h()Lfd;

    move-result-object v1

    .line 252
    const/4 v2, 0x0

    .line 257
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Lfd;->b()Lfg;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2a

    move-result-object v3

    .line 261
    if-eqz v3, :cond_31

    .line 262
    if-ge v2, v5, :cond_27

    .line 263
    if-lez v2, :cond_20

    .line 264
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_20
    invoke-virtual {v3}, Lfg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 269
    goto :goto_11

    .line 258
    :catch_2a
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :cond_31
    if-lt v2, v5, :cond_43

    .line 272
    const-string v1, " ... (truncated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_43
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
