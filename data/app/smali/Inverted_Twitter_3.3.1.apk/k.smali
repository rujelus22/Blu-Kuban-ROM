.class public abstract Lk;
.super Ll;


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

    const-wide v3, 0x7fffffffffffffffL

    const-wide/high16 v1, -0x8000

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lk;->c:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lk;->d:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lk;->e:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lk;->f:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lz;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ll;-><init>(Lz;I)V

    const/4 v0, 0x0

    iput v0, p0, Lk;->g:I

    return-void
.end method

.method private c(I)V
    .registers 8

    const/16 v2, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lk;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a1

    iget-object v0, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    iget-object v0, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v0

    iget v2, p0, Lk;->n:I

    iget-boolean v3, p0, Lk;->m:Z

    if-eqz v3, :cond_1e

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    const/16 v3, 0x9

    if-gt v2, v3, :cond_30

    invoke-static {v1, v0, v2}, Lab;->a([CII)I

    move-result v0

    iget-boolean v1, p0, Lk;->m:Z

    if-eqz v1, :cond_2b

    neg-int v0, v0

    :cond_2b
    iput v0, p0, Lk;->h:I

    iput v4, p0, Lk;->g:I

    :goto_2f
    return-void

    :cond_30
    const/16 v3, 0x12

    if-gt v2, v3, :cond_64

    invoke-static {v1, v0, v2}, Lab;->b([CII)J

    move-result-wide v0

    iget-boolean v3, p0, Lk;->m:Z

    if-eqz v3, :cond_3d

    neg-long v0, v0

    :cond_3d
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5f

    iget-boolean v2, p0, Lk;->m:Z

    if-eqz v2, :cond_52

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5f

    long-to-int v0, v0

    iput v0, p0, Lk;->h:I

    iput v4, p0, Lk;->g:I

    goto :goto_2f

    :cond_52
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5f

    long-to-int v0, v0

    iput v0, p0, Lk;->h:I

    iput v4, p0, Lk;->g:I

    goto :goto_2f

    :cond_5f
    iput-wide v0, p0, Lk;->i:J

    iput v5, p0, Lk;->g:I

    goto :goto_2f

    :cond_64
    iget-object v3, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v3

    :try_start_6a
    iget-boolean v4, p0, Lk;->m:Z

    invoke-static {v1, v0, v2, v4}, Lab;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lk;->i:J

    const/4 v0, 0x2

    iput v0, p0, Lk;->g:I
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

    invoke-virtual {p0, v1, v0}, Lk;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_96
    :try_start_96
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk;->k:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lk;->g:I
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_a0} :catch_7c

    goto :goto_2f

    :cond_a1
    iget-object v0, p0, Lk;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_e6

    if-ne p1, v2, :cond_d8

    :try_start_a9
    iget-object v0, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lk;->l:Ljava/math/BigDecimal;

    const/16 v0, 0x10

    iput v0, p0, Lk;->g:I
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b5} :catch_b7

    goto/16 :goto_2f

    :catch_b7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lk;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    :cond_d8
    :try_start_d8
    iget-object v0, p0, Lk;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->g()D

    move-result-wide v0

    iput-wide v0, p0, Lk;->j:D

    const/16 v0, 0x8

    iput v0, p0, Lk;->g:I
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_e4} :catch_b7

    goto/16 :goto_2f

    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk;->d(Ljava/lang/String;)V

    goto/16 :goto_2f
.end method

.method private r()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int (-2147483648 - 2147483647)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk;->d(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Numeric value ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lk;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long (-9223372036854775808 - 9223372036854775807)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ZI)Lorg/codehaus/jackson/JsonToken;
    .registers 4

    const/4 v0, 0x0

    iput-boolean p1, p0, Lk;->m:Z

    iput p2, p0, Lk;->n:I

    iput v0, p0, Lk;->o:I

    iput v0, p0, Lk;->p:I

    iput v0, p0, Lk;->g:I

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->i:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final a(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 6

    if-gtz p3, :cond_9

    if-gtz p4, :cond_9

    invoke-virtual {p0, p1, p2}, Lk;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lk;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_8
.end method

.method protected final a(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lk;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_32

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

    :cond_32
    invoke-virtual {p0, v0}, Lk;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected final b(ZIII)Lorg/codehaus/jackson/JsonToken;
    .registers 6

    iput-boolean p1, p0, Lk;->m:Z

    iput p2, p0, Lk;->n:I

    iput p3, p0, Lk;->o:I

    iput p4, p0, Lk;->p:I

    const/4 v0, 0x0

    iput v0, p0, Lk;->g:I

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->j:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid numeric value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final g()I
    .registers 6

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_48

    iget v0, p0, Lk;->g:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk;->c(I)V

    :cond_e
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_48

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4b

    iget-wide v0, p0, Lk;->i:J

    long-to-int v0, v0

    int-to-long v1, v0

    iget-wide v3, p0, Lk;->i:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lk;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk;->d(Ljava/lang/String;)V

    :cond_40
    iput v0, p0, Lk;->h:I

    :goto_42
    iget v0, p0, Lk;->g:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk;->g:I

    :cond_48
    iget v0, p0, Lk;->h:I

    return v0

    :cond_4b
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lk;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lk;->h:I

    goto :goto_42

    :cond_5a
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7c

    iget-wide v0, p0, Lk;->j:D

    const-wide/high16 v2, -0x3e20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_73

    iget-wide v0, p0, Lk;->j:D

    const-wide v2, 0x41dfffffffc00000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_76

    :cond_73
    invoke-direct {p0}, Lk;->r()V

    :cond_76
    iget-wide v0, p0, Lk;->j:D

    double-to-int v0, v0

    iput v0, p0, Lk;->h:I

    goto :goto_42

    :cond_7c
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a2

    sget-object v0, Lk;->e:Ljava/math/BigDecimal;

    iget-object v1, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_96

    sget-object v0, Lk;->f:Ljava/math/BigDecimal;

    iget-object v1, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_99

    :cond_96
    invoke-direct {p0}, Lk;->r()V

    :cond_99
    iget-object v0, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lk;->h:I

    goto :goto_42

    :cond_a2
    invoke-static {}, Lk;->q()V

    goto :goto_42
.end method

.method public final h()J
    .registers 5

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    iget v0, p0, Lk;->g:I

    if-nez v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lk;->c(I)V

    :cond_e
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_25

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    iget v0, p0, Lk;->h:I

    int-to-long v0, v0

    iput-wide v0, p0, Lk;->i:J

    :goto_1f
    iget v0, p0, Lk;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lk;->g:I

    :cond_25
    iget-wide v0, p0, Lk;->i:J

    return-wide v0

    :cond_28
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_37

    iget-object v0, p0, Lk;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lk;->i:J

    goto :goto_1f

    :cond_37
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lk;->j:D

    const-wide/high16 v2, -0x3c20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_4d

    iget-wide v0, p0, Lk;->j:D

    const-wide/high16 v2, 0x43e0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_50

    :cond_4d
    invoke-direct {p0}, Lk;->s()V

    :cond_50
    iget-wide v0, p0, Lk;->j:D

    double-to-long v0, v0

    iput-wide v0, p0, Lk;->i:J

    goto :goto_1f

    :cond_56
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7c

    sget-object v0, Lk;->c:Ljava/math/BigDecimal;

    iget-object v1, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_70

    sget-object v0, Lk;->d:Ljava/math/BigDecimal;

    iget-object v1, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_73

    :cond_70
    invoke-direct {p0}, Lk;->s()V

    :cond_73
    iget-object v0, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lk;->i:J

    goto :goto_1f

    :cond_7c
    invoke-static {}, Lk;->q()V

    goto :goto_1f
.end method

.method public final i()D
    .registers 3

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    iget v0, p0, Lk;->g:I

    if-nez v0, :cond_f

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lk;->c(I)V

    :cond_f
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_29

    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lk;->l:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lk;->j:D

    :goto_23
    iget v0, p0, Lk;->g:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lk;->g:I

    :cond_29
    iget-wide v0, p0, Lk;->j:D

    return-wide v0

    :cond_2c
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lk;->k:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lk;->j:D

    goto :goto_23

    :cond_3b
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lk;->i:J

    long-to-double v0, v0

    iput-wide v0, p0, Lk;->j:D

    goto :goto_23

    :cond_47
    iget v0, p0, Lk;->g:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_53

    iget v0, p0, Lk;->h:I

    int-to-double v0, v0

    iput-wide v0, p0, Lk;->j:D

    goto :goto_23

    :cond_53
    invoke-static {}, Lk;->q()V

    goto :goto_23
.end method
