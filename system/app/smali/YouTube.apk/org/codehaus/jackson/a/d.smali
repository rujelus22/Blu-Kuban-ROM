.class public abstract Lorg/codehaus/jackson/a/d;
.super Lorg/codehaus/jackson/a/e;
.source "SourceFile"


# static fields
.field static final c:Ljava/math/BigDecimal;

.field static final d:Ljava/math/BigDecimal;

.field static final e:Ljava/math/BigDecimal;

.field static final f:Ljava/math/BigDecimal;


# instance fields
.field protected g:I

.field protected h:I

.field protected i:J

.field protected j:D

.field protected k:Ljava/math/BigInteger;

.field protected l:Ljava/math/BigDecimal;

.field protected m:Z

.field protected n:I

.field protected o:I

.field protected p:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 41
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/d;->c:Ljava/math/BigDecimal;

    .line 42
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/d;->d:Ljava/math/BigDecimal;

    .line 44
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/d;->e:Ljava/math/BigDecimal;

    .line 45
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/d;->f:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/b/c;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/a/e;-><init>(Lorg/codehaus/jackson/b/c;I)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 144
    return-void
.end method

.method private c(I)V
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 354
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a5

    .line 355
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v0

    .line 357
    iget v2, p0, Lorg/codehaus/jackson/a/d;->n:I

    .line 358
    iget-boolean v3, p0, Lorg/codehaus/jackson/a/d;->m:Z

    if-eqz v3, :cond_1e

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 361
    :cond_1e
    const/16 v3, 0x9

    if-gt v2, v3, :cond_30

    .line 362
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/b/f;->a([CII)I

    move-result v0

    .line 363
    iget-boolean v1, p0, Lorg/codehaus/jackson/a/d;->m:Z

    if-eqz v1, :cond_2b

    neg-int v0, v0

    :cond_2b
    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    .line 364
    iput v4, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 400
    :goto_2f
    return-void

    .line 367
    :cond_30
    const/16 v3, 0x12

    if-gt v2, v3, :cond_64

    .line 368
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/b/f;->b([CII)J

    move-result-wide v0

    .line 369
    iget-boolean v3, p0, Lorg/codehaus/jackson/a/d;->m:Z

    if-eqz v3, :cond_3d

    .line 370
    neg-long v0, v0

    .line 373
    :cond_3d
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5f

    .line 374
    iget-boolean v2, p0, Lorg/codehaus/jackson/a/d;->m:Z

    if-eqz v2, :cond_52

    .line 375
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5f

    .line 376
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    .line 377
    iput v4, p0, Lorg/codehaus/jackson/a/d;->g:I

    goto :goto_2f

    .line 381
    :cond_52
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5f

    .line 382
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    .line 383
    iput v4, p0, Lorg/codehaus/jackson/a/d;->g:I

    goto :goto_2f

    .line 388
    :cond_5f
    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    .line 389
    iput v5, p0, Lorg/codehaus/jackson/a/d;->g:I

    goto :goto_2f

    .line 392
    :cond_64
    iget-object v3, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v3

    :try_start_6a
    iget-boolean v4, p0, Lorg/codehaus/jackson/a/d;->m:Z

    invoke-static {v1, v0, v2, v4}, Lorg/codehaus/jackson/b/f;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_7b} :catch_7c

    goto :goto_2f

    :catch_7c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_9a
    :try_start_9a
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_9a .. :try_end_a4} :catch_7c

    goto :goto_2f

    .line 395
    :cond_a5
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_ee

    .line 396
    if-ne p1, v2, :cond_e0

    :try_start_ad
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b9} :catch_bb

    goto/16 :goto_2f

    :catch_bb
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    :cond_e0
    :try_start_e0
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I
    :try_end_ec
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_ec} :catch_bb

    goto/16 :goto_2f

    .line 399
    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    goto/16 :goto_2f
.end method

.method private w()V
    .registers 3

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/d;->f()Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method private x()V
    .registers 4

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/d;->f()Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    .line 616
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/c;->a(Ljava/lang/String;)V

    .line 177
    iput-wide p2, p0, Lorg/codehaus/jackson/a/d;->j:D

    .line 178
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 179
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZI)Lorg/codehaus/jackson/JsonToken;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    iput-boolean p1, p0, Lorg/codehaus/jackson/a/d;->m:Z

    .line 157
    iput p2, p0, Lorg/codehaus/jackson/a/d;->n:I

    .line 158
    iput v0, p0, Lorg/codehaus/jackson/a/d;->o:I

    .line 159
    iput v0, p0, Lorg/codehaus/jackson/a/d;->p:I

    .line 160
    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 161
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    if-gtz p3, :cond_9

    if-gtz p4, :cond_9

    .line 149
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/a/d;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 151
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/a/d;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_8
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/codehaus/jackson/a/d;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 593
    if-eqz p2, :cond_36

    .line 594
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

    .line 596
    :cond_36
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method protected final b(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/codehaus/jackson/a/d;->m:Z

    .line 167
    iput p2, p0, Lorg/codehaus/jackson/a/d;->n:I

    .line 168
    iput p3, p0, Lorg/codehaus/jackson/a/d;->o:I

    .line 169
    iput p4, p0, Lorg/codehaus/jackson/a/d;->p:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 171
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public final i()I
    .registers 6

    .prologue
    .line 252
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 253
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    if-nez v0, :cond_e

    .line 254
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/d;->c(I)V

    .line 256
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4c

    .line 257
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4f

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/a/d;->i:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/d;->d(Ljava/lang/String;)V

    :cond_44
    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    :goto_46
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 260
    :cond_4c
    iget v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    return v0

    .line 257
    :cond_4f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    goto :goto_46

    :cond_5e
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_80

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_77

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_7a

    :cond_77
    invoke-direct {p0}, Lorg/codehaus/jackson/a/d;->w()V

    :cond_7a
    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    double-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    goto :goto_46

    :cond_80
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a6

    sget-object v0, Lorg/codehaus/jackson/a/d;->e:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_9a

    sget-object v0, Lorg/codehaus/jackson/a/d;->f:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_9d

    :cond_9a
    invoke-direct {p0}, Lorg/codehaus/jackson/a/d;->w()V

    :cond_9d
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    goto :goto_46

    :cond_a6
    invoke-static {}, Lorg/codehaus/jackson/a/d;->v()V

    goto :goto_46
.end method

.method public final j()J
    .registers 5

    .prologue
    .line 266
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 267
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    if-nez v0, :cond_e

    .line 268
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/d;->c(I)V

    .line 270
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 271
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    :goto_1f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 274
    :cond_25
    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    return-wide v0

    .line 271
    :cond_28
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    goto :goto_1f

    :cond_37
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4d

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_50

    :cond_4d
    invoke-direct {p0}, Lorg/codehaus/jackson/a/d;->x()V

    :cond_50
    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    goto :goto_1f

    :cond_56
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7c

    sget-object v0, Lorg/codehaus/jackson/a/d;->c:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_70

    sget-object v0, Lorg/codehaus/jackson/a/d;->d:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_73

    :cond_70
    invoke-direct {p0}, Lorg/codehaus/jackson/a/d;->x()V

    :cond_73
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    goto :goto_1f

    :cond_7c
    invoke-static {}, Lorg/codehaus/jackson/a/d;->v()V

    goto :goto_1f
.end method

.method public final k()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 280
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 281
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    if-nez v0, :cond_e

    .line 282
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/d;->c(I)V

    .line 284
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 285
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    :goto_22
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 288
    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    return-object v0

    .line 285
    :cond_2b
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3a

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    goto :goto_22

    :cond_3a
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    iget v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    goto :goto_22

    :cond_4a
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    goto :goto_22

    :cond_5d
    invoke-static {}, Lorg/codehaus/jackson/a/d;->v()V

    goto :goto_22
.end method

.method public final l()F
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/d;->m()D

    move-result-wide v0

    .line 303
    double-to-float v0, v0

    return v0
.end method

.method public final m()D
    .registers 3

    .prologue
    .line 309
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 310
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    if-nez v0, :cond_f

    .line 311
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/d;->c(I)V

    .line 313
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 314
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    :goto_23
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 317
    :cond_29
    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    return-wide v0

    .line 314
    :cond_2c
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    goto :goto_23

    :cond_3b
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    goto :goto_23

    :cond_47
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    iget v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/d;->j:D

    goto :goto_23

    :cond_53
    invoke-static {}, Lorg/codehaus/jackson/a/d;->v()V

    goto :goto_23
.end method

.method public final n()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 323
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 324
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    if-nez v0, :cond_f

    .line 325
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/d;->c(I)V

    .line 327
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 328
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    :goto_26
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    .line 331
    :cond_2c
    iget-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    return-object v0

    .line 328
    :cond_2f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/d;->k:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_3f
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4e

    iget-wide v0, p0, Lorg/codehaus/jackson/a/d;->i:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_4e
    iget v0, p0, Lorg/codehaus/jackson/a/d;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5e

    iget v0, p0, Lorg/codehaus/jackson/a/d;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/d;->l:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_5e
    invoke-static {}, Lorg/codehaus/jackson/a/d;->v()V

    goto :goto_26
.end method
