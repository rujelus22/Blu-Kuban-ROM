.class public abstract Lgi;
.super Lgj;
.source "a"


# static fields
.field static final d:Ljava/math/BigDecimal;

.field static final e:Ljava/math/BigDecimal;

.field static final f:Ljava/math/BigDecimal;

.field static final g:Ljava/math/BigDecimal;


# instance fields
.field protected h:I

.field protected i:I

.field protected j:J

.field protected k:D

.field protected l:Ljava/math/BigInteger;

.field protected m:Ljava/math/BigDecimal;

.field protected n:Z

.field protected o:I

.field protected p:I

.field protected q:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lgi;->d:Ljava/math/BigDecimal;

    .line 43
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lgi;->e:Ljava/math/BigDecimal;

    .line 45
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lgi;->f:Ljava/math/BigDecimal;

    .line 46
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lgi;->g:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lgt;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lgj;-><init>(Lgt;I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lgi;->h:I

    .line 145
    return-void
.end method

.method private G()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgi;->d(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private H()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v1, -0x8000

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgi;->d(Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private c(I)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    .line 333
    iget-object v0, p0, Lgi;->b:Lfg;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lgi;->b:Lfg;

    invoke-virtual {v0}, Lfg;->isNumeric()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 334
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgi;->b:Lfg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgi;->d(Ljava/lang/String;)V

    .line 338
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lgi;->b:Lfg;

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_de

    .line 339
    iget-object v0, p0, Lgi;->E:Lnl;

    invoke-virtual {v0}, Lnl;->d()[C

    move-result-object v0

    .line 340
    iget-object v1, p0, Lgi;->E:Lnl;

    invoke-virtual {v1}, Lnl;->c()I

    move-result v1

    .line 341
    iget v2, p0, Lgi;->o:I

    .line 342
    iget-boolean v3, p0, Lgi;->n:Z

    if-eqz v3, :cond_46

    .line 343
    add-int/lit8 v1, v1, 0x1

    .line 345
    :cond_46
    const/16 v3, 0x9

    if-gt v2, v3, :cond_59

    .line 346
    invoke-static {v0, v1, v2}, Lgu;->a([CII)I

    move-result v0

    .line 347
    iget-boolean v1, p0, Lgi;->n:Z

    if-eqz v1, :cond_53

    neg-int v0, v0

    :cond_53
    iput v0, p0, Lgi;->i:I

    .line 348
    const/4 v0, 0x1

    iput v0, p0, Lgi;->h:I

    .line 408
    :goto_58
    return-void

    .line 351
    :cond_59
    const/16 v3, 0x12

    if-gt v2, v3, :cond_ba

    .line 352
    invoke-static {v0, v1, v2}, Lgu;->b([CII)J

    move-result-wide v0

    .line 353
    iget-boolean v3, p0, Lgi;->n:Z

    if-eqz v3, :cond_66

    .line 354
    neg-long v0, v0

    .line 357
    :cond_66
    const/16 v3, 0xa

    if-ne v2, v3, :cond_b4

    .line 358
    iget-boolean v2, p0, Lgi;->n:Z

    if-eqz v2, :cond_a6

    .line 359
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_b4

    .line 360
    long-to-int v0, v0

    iput v0, p0, Lgi;->i:I

    .line 361
    const/4 v0, 0x1

    iput v0, p0, Lgi;->h:I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_7b} :catch_7c

    goto :goto_58

    .line 405
    :catch_7c
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgi;->E:Lnl;

    invoke-virtual {v2}, Lnl;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfc;

    invoke-virtual {p0}, Lgk;->h()Lfa;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lfc;-><init>(Ljava/lang/String;Lfa;Ljava/lang/Throwable;)V

    throw v2

    .line 365
    :cond_a6
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b4

    .line 366
    long-to-int v0, v0

    :try_start_ae
    iput v0, p0, Lgi;->i:I

    .line 367
    const/4 v0, 0x1

    iput v0, p0, Lgi;->h:I

    goto :goto_58

    .line 372
    :cond_b4
    iput-wide v0, p0, Lgi;->j:J

    .line 373
    const/4 v0, 0x2

    iput v0, p0, Lgi;->h:I

    goto :goto_58

    .line 376
    :cond_ba
    iget-object v3, p0, Lgi;->E:Lnl;

    invoke-virtual {v3}, Lnl;->e()Ljava/lang/String;

    move-result-object v3

    .line 378
    iget-boolean v4, p0, Lgi;->n:Z

    invoke-static {v0, v1, v2, v4}, Lgu;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 380
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lgi;->j:J

    .line 381
    const/4 v0, 0x2

    iput v0, p0, Lgi;->h:I

    goto :goto_58

    .line 385
    :cond_d2
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    .line 386
    const/4 v0, 0x4

    iput v0, p0, Lgi;->h:I

    goto/16 :goto_58

    .line 397
    :cond_de
    if-ne p1, v2, :cond_ee

    .line 398
    iget-object v0, p0, Lgi;->E:Lnl;

    invoke-virtual {v0}, Lnl;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    .line 399
    const/16 v0, 0x10

    iput v0, p0, Lgi;->h:I

    goto/16 :goto_58

    .line 402
    :cond_ee
    iget-object v0, p0, Lgi;->E:Lnl;

    invoke-virtual {v0}, Lnl;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lgi;->k:D

    .line 403
    const/16 v0, 0x8

    iput v0, p0, Lgi;->h:I
    :try_end_fa
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_fa} :catch_7c

    goto/16 :goto_58
.end method


# virtual methods
.method protected final a(ZIII)Lfg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lgi;->n:Z

    .line 150
    iput p2, p0, Lgi;->o:I

    .line 151
    iput p3, p0, Lgi;->p:I

    .line 152
    iput p4, p0, Lgi;->q:I

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lgi;->h:I

    .line 154
    if-gtz p3, :cond_12

    if-gtz p4, :cond_12

    .line 155
    sget-object v0, Lfg;->VALUE_NUMBER_INT:Lfg;

    .line 158
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lfg;->VALUE_NUMBER_FLOAT:Lfg;

    goto :goto_11
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lgi;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    if-eqz p2, :cond_36

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    :cond_36
    invoke-virtual {p0, v0}, Lgi;->d(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfc;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgi;->d(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public final m()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 170
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_8

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 174
    :cond_8
    iget-object v0, p0, Lgi;->b:Lfg;

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_34

    .line 175
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b

    .line 176
    iget v0, p0, Lgi;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    :goto_1a
    return-object v0

    .line 178
    :cond_1b
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_28

    .line 179
    iget-wide v0, p0, Lgi;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1a

    .line 181
    :cond_28
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_31

    .line 182
    iget-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    goto :goto_1a

    .line 185
    :cond_31
    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    goto :goto_1a

    .line 191
    :cond_34
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3d

    .line 192
    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    goto :goto_1a

    .line 194
    :cond_3d
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_46

    .line 195
    invoke-static {}, Lgi;->F()V

    .line 197
    :cond_46
    iget-wide v0, p0, Lgi;->k:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1a
.end method

.method public final n()Lfd$b;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_8

    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 206
    :cond_8
    iget-object v0, p0, Lgi;->b:Lfg;

    sget-object v1, Lfg;->VALUE_NUMBER_INT:Lfg;

    if-ne v0, v1, :cond_23

    .line 207
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 208
    sget-object v0, Lfd$b;->INT:Lfd$b;

    .line 225
    :goto_16
    return-object v0

    .line 210
    :cond_17
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    .line 211
    sget-object v0, Lfd$b;->LONG:Lfd$b;

    goto :goto_16

    .line 213
    :cond_20
    sget-object v0, Lfd$b;->BIG_INTEGER:Lfd$b;

    goto :goto_16

    .line 222
    :cond_23
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    .line 223
    sget-object v0, Lfd$b;->BIG_DECIMAL:Lfd$b;

    goto :goto_16

    .line 225
    :cond_2c
    sget-object v0, Lfd$b;->DOUBLE:Lfd$b;

    goto :goto_16
.end method

.method public final q()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 231
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 232
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_e

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 235
    :cond_e
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 236
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4f

    iget-wide v0, p0, Lgi;->j:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lgi;->j:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgi;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgi;->d(Ljava/lang/String;)V

    :cond_44
    iput v0, p0, Lgi;->i:I

    :goto_46
    iget v0, p0, Lgi;->h:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgi;->h:I

    .line 239
    :cond_4c
    iget v0, p0, Lgi;->i:I

    return v0

    .line 236
    :cond_4f
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lgi;->i:I

    goto :goto_46

    :cond_5e
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_80

    iget-wide v0, p0, Lgi;->k:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_77

    iget-wide v0, p0, Lgi;->k:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7a

    :cond_77
    invoke-direct {p0}, Lgi;->G()V

    :cond_7a
    iget-wide v0, p0, Lgi;->k:D

    double-to-int v0, v0

    iput v0, p0, Lgi;->i:I

    goto :goto_46

    :cond_80
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a6

    sget-object v0, Lgi;->f:Ljava/math/BigDecimal;

    iget-object v1, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_9a

    sget-object v0, Lgi;->g:Ljava/math/BigDecimal;

    iget-object v1, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9d

    :cond_9a
    invoke-direct {p0}, Lgi;->G()V

    :cond_9d
    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lgi;->i:I

    goto :goto_46

    :cond_a6
    invoke-static {}, Lgi;->F()V

    goto :goto_46
.end method

.method public final r()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 245
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 246
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_e

    .line 247
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 249
    :cond_e
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 250
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget v0, p0, Lgi;->i:I

    int-to-long v0, v0

    iput-wide v0, p0, Lgi;->j:J

    :goto_1f
    iget v0, p0, Lgi;->h:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgi;->h:I

    .line 253
    :cond_25
    iget-wide v0, p0, Lgi;->j:J

    return-wide v0

    .line 250
    :cond_28
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_37

    iget-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lgi;->j:J

    goto :goto_1f

    :cond_37
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lgi;->k:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4d

    iget-wide v0, p0, Lgi;->k:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_50

    :cond_4d
    invoke-direct {p0}, Lgi;->H()V

    :cond_50
    iget-wide v0, p0, Lgi;->k:D

    double-to-long v0, v0

    iput-wide v0, p0, Lgi;->j:J

    goto :goto_1f

    :cond_56
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7c

    sget-object v0, Lgi;->d:Ljava/math/BigDecimal;

    iget-object v1, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_70

    sget-object v0, Lgi;->e:Ljava/math/BigDecimal;

    iget-object v1, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_73

    :cond_70
    invoke-direct {p0}, Lgi;->H()V

    :cond_73
    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lgi;->j:J

    goto :goto_1f

    :cond_7c
    invoke-static {}, Lgi;->F()V

    goto :goto_1f
.end method

.method public final s()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 259
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 260
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_e

    .line 261
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 263
    :cond_e
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 264
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    :goto_22
    iget v0, p0, Lgi;->h:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgi;->h:I

    .line 267
    :cond_28
    iget-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    return-object v0

    .line 264
    :cond_2b
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3a

    iget-wide v0, p0, Lgi;->j:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    goto :goto_22

    :cond_3a
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    iget v0, p0, Lgi;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    goto :goto_22

    :cond_4a
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lgi;->k:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    goto :goto_22

    :cond_5d
    invoke-static {}, Lgi;->F()V

    goto :goto_22
.end method

.method public final t()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lgi;->u()D

    move-result-wide v0

    .line 282
    double-to-float v0, v0

    return v0
.end method

.method public final u()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 288
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 289
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_f

    .line 290
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 292
    :cond_f
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 293
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lgi;->k:D

    :goto_23
    iget v0, p0, Lgi;->h:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgi;->h:I

    .line 296
    :cond_29
    iget-wide v0, p0, Lgi;->k:D

    return-wide v0

    .line 293
    :cond_2c
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lgi;->l:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lgi;->k:D

    goto :goto_23

    :cond_3b
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lgi;->j:J

    long-to-double v0, v0

    iput-wide v0, p0, Lgi;->k:D

    goto :goto_23

    :cond_47
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    iget v0, p0, Lgi;->i:I

    int-to-double v0, v0

    iput-wide v0, p0, Lgi;->k:D

    goto :goto_23

    :cond_53
    invoke-static {}, Lgi;->F()V

    goto :goto_23
.end method

.method public final v()Ljava/math/BigDecimal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 303
    iget v0, p0, Lgi;->h:I

    if-nez v0, :cond_f

    .line 304
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lgi;->c(I)V

    .line 306
    :cond_f
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 307
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgi;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    :goto_26
    iget v0, p0, Lgi;->h:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgi;->h:I

    .line 310
    :cond_2c
    iget-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    return-object v0

    .line 307
    :cond_2f
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lgi;->l:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_3f
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4e

    iget-wide v0, p0, Lgi;->j:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_4e
    iget v0, p0, Lgi;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5e

    iget v0, p0, Lgi;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lgi;->m:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_5e
    invoke-static {}, Lgi;->F()V

    goto :goto_26
.end method
