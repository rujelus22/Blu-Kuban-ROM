.class public abstract Lorg/codehaus/jackson/a/e;
.super Lorg/codehaus/jackson/a/f;
.source "SourceFile"


# static fields
.field static final t:Ljava/math/BigDecimal;

.field static final u:Ljava/math/BigDecimal;

.field static final v:Ljava/math/BigDecimal;

.field static final w:Ljava/math/BigDecimal;


# instance fields
.field protected A:D

.field protected B:Ljava/math/BigInteger;

.field protected C:Ljava/math/BigDecimal;

.field protected D:Z

.field protected E:I

.field protected F:I

.field protected G:I

.field protected final c:Lorg/codehaus/jackson/b/c;

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:J

.field protected h:I

.field protected i:I

.field protected j:J

.field protected k:I

.field protected l:I

.field protected m:Lorg/codehaus/jackson/a/h;

.field protected n:Lorg/codehaus/jackson/JsonToken;

.field protected final o:Lorg/codehaus/jackson/util/f;

.field protected p:[C

.field protected q:Z

.field protected r:Lorg/codehaus/jackson/util/a;

.field protected s:[B

.field protected x:I

.field protected y:I

.field protected z:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    .line 195
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/e;->t:Ljava/math/BigDecimal;

    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/e;->u:Ljava/math/BigDecimal;

    .line 198
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/e;->v:Ljava/math/BigDecimal;

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lorg/codehaus/jackson/a/e;->w:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/b/c;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Lorg/codehaus/jackson/a/f;-><init>()V

    .line 54
    iput v1, p0, Lorg/codehaus/jackson/a/e;->e:I

    .line 59
    iput v1, p0, Lorg/codehaus/jackson/a/e;->f:I

    .line 71
    iput-wide v4, p0, Lorg/codehaus/jackson/a/e;->g:J

    .line 77
    iput v2, p0, Lorg/codehaus/jackson/a/e;->h:I

    .line 85
    iput v1, p0, Lorg/codehaus/jackson/a/e;->i:I

    .line 101
    iput-wide v4, p0, Lorg/codehaus/jackson/a/e;->j:J

    .line 106
    iput v2, p0, Lorg/codehaus/jackson/a/e;->k:I

    .line 112
    iput v1, p0, Lorg/codehaus/jackson/a/e;->l:I

    .line 151
    iput-object v3, p0, Lorg/codehaus/jackson/a/e;->p:[C

    .line 158
    iput-boolean v1, p0, Lorg/codehaus/jackson/a/e;->q:Z

    .line 164
    iput-object v3, p0, Lorg/codehaus/jackson/a/e;->r:Lorg/codehaus/jackson/util/a;

    .line 241
    iput v1, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 294
    iput p2, p0, Lorg/codehaus/jackson/a/e;->a:I

    .line 295
    iput-object p1, p0, Lorg/codehaus/jackson/a/e;->c:Lorg/codehaus/jackson/b/c;

    .line 296
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->d()Lorg/codehaus/jackson/util/f;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    .line 297
    new-instance v0, Lorg/codehaus/jackson/a/h;

    invoke-direct {v0, v3, v1, v2, v1}, Lorg/codehaus/jackson/a/h;-><init>(Lorg/codehaus/jackson/a/h;III)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    .line 298
    return-void
.end method

.method private c(I)V
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 718
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a1

    .line 719
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->d()[C

    move-result-object v1

    .line 720
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->c()I

    move-result v0

    .line 721
    iget v2, p0, Lorg/codehaus/jackson/a/e;->E:I

    .line 722
    iget-boolean v3, p0, Lorg/codehaus/jackson/a/e;->D:Z

    if-eqz v3, :cond_1e

    .line 723
    add-int/lit8 v0, v0, 0x1

    .line 725
    :cond_1e
    const/16 v3, 0x9

    if-gt v2, v3, :cond_30

    .line 726
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/b/f;->a([CII)I

    move-result v0

    .line 727
    iget-boolean v1, p0, Lorg/codehaus/jackson/a/e;->D:Z

    if-eqz v1, :cond_2b

    neg-int v0, v0

    :cond_2b
    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    .line 728
    iput v4, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 764
    :goto_2f
    return-void

    .line 731
    :cond_30
    const/16 v3, 0x12

    if-gt v2, v3, :cond_64

    .line 732
    invoke-static {v1, v0, v2}, Lorg/codehaus/jackson/b/f;->b([CII)J

    move-result-wide v0

    .line 733
    iget-boolean v3, p0, Lorg/codehaus/jackson/a/e;->D:Z

    if-eqz v3, :cond_3d

    .line 734
    neg-long v0, v0

    .line 737
    :cond_3d
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5f

    .line 738
    iget-boolean v2, p0, Lorg/codehaus/jackson/a/e;->D:Z

    if-eqz v2, :cond_52

    .line 739
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5f

    .line 740
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    .line 741
    iput v4, p0, Lorg/codehaus/jackson/a/e;->x:I

    goto :goto_2f

    .line 745
    :cond_52
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5f

    .line 746
    long-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    .line 747
    iput v4, p0, Lorg/codehaus/jackson/a/e;->x:I

    goto :goto_2f

    .line 752
    :cond_5f
    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    .line 753
    iput v5, p0, Lorg/codehaus/jackson/a/e;->x:I

    goto :goto_2f

    .line 756
    :cond_64
    iget-object v3, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v3

    :try_start_6a
    iget-boolean v4, p0, Lorg/codehaus/jackson/a/e;->D:Z

    invoke-static {v1, v0, v2, v4}, Lorg/codehaus/jackson/b/f;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_6a .. :try_end_7b} :catch_7c

    goto :goto_2f

    :catch_7c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_96
    :try_start_96
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_a0} :catch_7c

    goto :goto_2f

    .line 759
    :cond_a1
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_e6

    .line 760
    if-ne p1, v2, :cond_d8

    :try_start_a9
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b5} :catch_b7

    goto/16 :goto_2f

    :catch_b7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    :cond_d8
    :try_start_d8
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_e4} :catch_b7

    goto/16 :goto_2f

    .line 763
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    goto/16 :goto_2f
.end method

.method private x()V
    .registers 3

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int (-2147483648"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 2147483647"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method private y()V
    .registers 3

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long (-9223372036854775808"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - 9223372036854775807"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 980
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/util/f;->a(Ljava/lang/String;)V

    .line 541
    iput-wide p2, p0, Lorg/codehaus/jackson/a/e;->A:D

    .line 542
    const/16 v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 543
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZI)Lorg/codehaus/jackson/JsonToken;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 520
    iput-boolean p1, p0, Lorg/codehaus/jackson/a/e;->D:Z

    .line 521
    iput p2, p0, Lorg/codehaus/jackson/a/e;->E:I

    .line 522
    iput v0, p0, Lorg/codehaus/jackson/a/e;->F:I

    .line 523
    iput v0, p0, Lorg/codehaus/jackson/a/e;->G:I

    .line 524
    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 525
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
    .line 512
    if-gtz p3, :cond_9

    if-gtz p4, :cond_9

    .line 513
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/a/e;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 515
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/a/e;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_8
.end method

.method protected final a(IC)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected close marker \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v2}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/codehaus/jackson/a/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    if-eqz p2, :cond_32

    .line 958
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

    .line 960
    :cond_32
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method protected final b(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    iput-boolean p1, p0, Lorg/codehaus/jackson/a/e;->D:Z

    .line 531
    iput p2, p0, Lorg/codehaus/jackson/a/e;->E:I

    .line 532
    iput p3, p0, Lorg/codehaus/jackson/a/e;->F:I

    .line 533
    iput p4, p0, Lorg/codehaus/jackson/a/e;->G:I

    .line 534
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 535
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/e;->d:Z

    if-nez v0, :cond_d

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/e;->d:Z

    .line 333
    :try_start_7
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->q()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_e

    .line 337
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->r()V

    .line 340
    :cond_d
    return-void

    .line 337
    :catchall_e
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->r()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_17

    .line 321
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public final e()Lorg/codehaus/jackson/JsonLocation;
    .registers 9

    .prologue
    .line 372
    iget v0, p0, Lorg/codehaus/jackson/a/e;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/e;->i:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 373
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lorg/codehaus/jackson/a/e;->g:J

    iget v4, p0, Lorg/codehaus/jackson/a/e;->e:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lorg/codehaus/jackson/a/e;->h:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final i()I
    .registers 6

    .prologue
    .line 616
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_48

    .line 617
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    if-nez v0, :cond_e

    .line 618
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/e;->c(I)V

    .line 620
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_48

    .line 621
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4b

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lorg/codehaus/jackson/a/e;->z:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/e;->d(Ljava/lang/String;)V

    :cond_40
    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    :goto_42
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 624
    :cond_48
    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    return v0

    .line 621
    :cond_4b
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    goto :goto_42

    :cond_5a
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7c

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_73

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_76

    :cond_73
    invoke-direct {p0}, Lorg/codehaus/jackson/a/e;->x()V

    :cond_76
    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    double-to-int v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    goto :goto_42

    :cond_7c
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a2

    sget-object v0, Lorg/codehaus/jackson/a/e;->v:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_96

    sget-object v0, Lorg/codehaus/jackson/a/e;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_99

    :cond_96
    invoke-direct {p0}, Lorg/codehaus/jackson/a/e;->x()V

    :cond_99
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    goto :goto_42

    :cond_a2
    invoke-static {}, Lorg/codehaus/jackson/a/e;->w()V

    goto :goto_42
.end method

.method public final j()J
    .registers 5

    .prologue
    .line 630
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 631
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    if-nez v0, :cond_e

    .line 632
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/e;->c(I)V

    .line 634
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    .line 635
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    :goto_1f
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 638
    :cond_25
    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    return-wide v0

    .line 635
    :cond_28
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    goto :goto_1f

    :cond_37
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4d

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_50

    :cond_4d
    invoke-direct {p0}, Lorg/codehaus/jackson/a/e;->y()V

    :cond_50
    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    goto :goto_1f

    :cond_56
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7c

    sget-object v0, Lorg/codehaus/jackson/a/e;->t:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_70

    sget-object v0, Lorg/codehaus/jackson/a/e;->u:Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_73

    :cond_70
    invoke-direct {p0}, Lorg/codehaus/jackson/a/e;->y()V

    :cond_73
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    goto :goto_1f

    :cond_7c
    invoke-static {}, Lorg/codehaus/jackson/a/e;->w()V

    goto :goto_1f
.end method

.method public final k()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 644
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 645
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    if-nez v0, :cond_e

    .line 646
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/e;->c(I)V

    .line 648
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_28

    .line 649
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    :goto_22
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 652
    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    return-object v0

    .line 649
    :cond_2b
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3a

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    goto :goto_22

    :cond_3a
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4a

    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    goto :goto_22

    :cond_4a
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5d

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    goto :goto_22

    :cond_5d
    invoke-static {}, Lorg/codehaus/jackson/a/e;->w()V

    goto :goto_22
.end method

.method public final l()F
    .registers 3

    .prologue
    .line 658
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->m()D

    move-result-wide v0

    .line 667
    double-to-float v0, v0

    return v0
.end method

.method public final m()D
    .registers 3

    .prologue
    .line 673
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 674
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    if-nez v0, :cond_f

    .line 675
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/e;->c(I)V

    .line 677
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    .line 678
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    :goto_23
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 681
    :cond_29
    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    return-wide v0

    .line 678
    :cond_2c
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    goto :goto_23

    :cond_3b
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    goto :goto_23

    :cond_47
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    int-to-double v0, v0

    iput-wide v0, p0, Lorg/codehaus/jackson/a/e;->A:D

    goto :goto_23

    :cond_53
    invoke-static {}, Lorg/codehaus/jackson/a/e;->w()V

    goto :goto_23
.end method

.method public final n()Ljava/math/BigDecimal;
    .registers 3

    .prologue
    .line 687
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 688
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    if-nez v0, :cond_f

    .line 689
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/e;->c(I)V

    .line 691
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2c

    .line 692
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    :goto_26
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    .line 695
    :cond_2c
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    return-object v0

    .line 692
    :cond_2f
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->B:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_3f
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4e

    iget-wide v0, p0, Lorg/codehaus/jackson/a/e;->z:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_4e
    iget v0, p0, Lorg/codehaus/jackson/a/e;->x:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5e

    iget v0, p0, Lorg/codehaus/jackson/a/e;->y:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/e;->C:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_5e
    invoke-static {}, Lorg/codehaus/jackson/a/e;->w()V

    goto :goto_26
.end method

.method protected final o()V
    .registers 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->p()Z

    move-result v0

    if-nez v0, :cond_9

    .line 420
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/e;->u()V

    .line 422
    :cond_9
    return-void
.end method

.method protected abstract p()Z
.end method

.method protected abstract q()V
.end method

.method protected r()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->a()V

    .line 453
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->p:[C

    .line 454
    if-eqz v0, :cond_11

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/e;->p:[C

    .line 456
    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->c([C)V

    .line 458
    :cond_11
    return-void
.end method

.method protected final s()V
    .registers 4

    .prologue
    .line 468
    iget-object v0, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ": expected close marker for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/e;->m:Lorg/codehaus/jackson/a/h;

    iget-object v2, p0, Lorg/codehaus/jackson/a/e;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/b/c;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/e;->c(Ljava/lang/String;)V

    .line 471
    :cond_3c
    return-void
.end method

.method protected t()C
    .registers 2

    .prologue
    .line 995
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
