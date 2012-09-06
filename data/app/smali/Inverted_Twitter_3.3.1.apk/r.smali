.class public final Lr;
.super Lq;


# instance fields
.field protected H:Lorg/codehaus/jackson/c;

.field protected final I:Lag;

.field protected J:Z


# direct methods
.method public constructor <init>(Lz;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lag;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lq;-><init>(Lz;ILjava/io/Reader;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr;->J:Z

    iput-object p4, p0, Lr;->H:Lorg/codehaus/jackson/c;

    iput-object p5, p0, Lr;->I:Lag;

    return-void
.end method

.method private a(III)Ljava/lang/String;
    .registers 10

    const/16 v5, 0x5c

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Lr;->L:[C

    iget v2, p0, Lr;->s:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/c;->a([CII)V

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_18
    iget v2, p0, Lr;->s:I

    iget v3, p0, Lr;->t:I

    if-lt v2, v3, :cond_3d

    invoke-virtual {p0}, Lr;->l()Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ": was expecting closing \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr;->c(Ljava/lang/String;)V

    :cond_3d
    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lr;->s:I

    aget-char v3, v2, v3

    if-gt v3, v5, :cond_6f

    if-ne v3, v5, :cond_62

    invoke-direct {p0}, Lr;->v()C

    move-result v2

    :goto_4f
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    array-length v0, v1

    if-lt v3, v0, :cond_8b

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_18

    :cond_62
    if-gt v3, p3, :cond_6f

    if-eq v3, p3, :cond_71

    const/16 v2, 0x20

    if-ge v3, v2, :cond_6f

    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lr;->c(ILjava/lang/String;)V

    :cond_6f
    move v2, v3

    goto :goto_4f

    :cond_71
    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    iget-object v3, p0, Lr;->I:Lag;

    invoke-virtual {v3, v1, v2, v0, p2}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    move v0, v3

    goto :goto_18
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .registers 8

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_79

    iget v3, p0, Lr;->s:I

    iget v4, p0, Lr;->t:I

    if-lt v3, v4, :cond_1c

    invoke-virtual {p0}, Lr;->l()Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lr;->c(Ljava/lang/String;)V

    :cond_1c
    iget-object v3, p0, Lr;->L:[C

    iget v4, p0, Lr;->s:I

    aget-char v3, v3, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_70

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_32
    iget v3, p0, Lr;->s:I

    iget v5, p0, Lr;->t:I

    if-lt v3, v5, :cond_3e

    invoke-virtual {p0}, Lr;->l()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_3e
    iget-object v3, p0, Lr;->L:[C

    iget v5, p0, Lr;->s:I

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_54

    iget v5, p0, Lr;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lr;->s:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized token \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lr;->d(Ljava/lang/String;)V

    :cond_70
    iget v3, p0, Lr;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lr;->s:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_79
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v0, 0x0

    if-eq p1, v7, :cond_12a

    if-ne p1, v8, :cond_48

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lr;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, p0, Lr;->s:I

    iget v2, p0, Lr;->t:I

    if-ge v1, v2, :cond_3f

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_1c
    iget-object v5, p0, Lr;->L:[C

    aget-char v5, v5, v1

    if-ne v5, v8, :cond_32

    iget v2, p0, Lr;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lr;->s:I

    iget-object v3, p0, Lr;->I:Lag;

    iget-object v4, p0, Lr;->L:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    if-ge v5, v4, :cond_38

    aget v6, v3, v5

    if-nez v6, :cond_3f

    :cond_38
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_1c

    :cond_3f
    iget v2, p0, Lr;->s:I

    iput v1, p0, Lr;->s:I

    invoke-direct {p0, v2, v0, v8}, Lr;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_48
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->c:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lr;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lr;->b(ILjava/lang/String;)V

    :cond_55
    invoke-static {}, Lorg/codehaus/jackson/util/b;->c()[I

    move-result-object v5

    array-length v3, v5

    if-ge p1, v3, :cond_94

    aget v1, v5, p1

    if-nez v1, :cond_92

    const/16 v1, 0x30

    if-lt p1, v1, :cond_68

    const/16 v1, 0x39

    if-le p1, v1, :cond_92

    :cond_68
    const/4 v1, 0x1

    :goto_69
    if-nez v1, :cond_70

    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Lr;->b(ILjava/lang/String;)V

    :cond_70
    iget v1, p0, Lr;->s:I

    iget v4, p0, Lr;->t:I

    if-ge v1, v4, :cond_166

    move v2, v1

    move v1, v0

    :cond_78
    iget-object v6, p0, Lr;->L:[C

    aget-char v6, v6, v2

    if-ge v6, v3, :cond_9a

    aget v7, v5, v6

    if-eqz v7, :cond_b1

    iget v0, p0, Lr;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lr;->s:I

    iget-object v3, p0, Lr;->I:Lag;

    iget-object v4, p0, Lr;->L:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_92
    move v1, v0

    goto :goto_69

    :cond_94
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    goto :goto_69

    :cond_9a
    int-to-char v7, v6

    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-nez v7, :cond_b1

    iget v0, p0, Lr;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lr;->s:I

    iget-object v3, p0, Lr;->I:Lag;

    iget-object v4, p0, Lr;->L:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_b1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_78

    :goto_b8
    iget v3, p0, Lr;->s:I

    add-int/lit8 v3, v3, -0x1

    iput v2, p0, Lr;->s:I

    iget-object v2, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    iget-object v4, p0, Lr;->L:[C

    iget v6, p0, Lr;->s:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v6}, Lorg/codehaus/jackson/util/c;->a([CII)V

    iget-object v2, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v3

    iget-object v2, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v2

    array-length v6, v5

    move v9, v2

    move-object v2, v3

    move v3, v1

    move v1, v9

    :goto_d9
    iget v4, p0, Lr;->s:I

    iget v7, p0, Lr;->t:I

    if-lt v4, v7, :cond_e5

    invoke-virtual {p0}, Lr;->l()Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_e5
    iget-object v4, p0, Lr;->L:[C

    iget v7, p0, Lr;->s:I

    aget-char v7, v4, v7

    if-gt v7, v6, :cond_10c

    aget v4, v5, v7

    if-eqz v4, :cond_112

    :cond_f1
    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/c;->a(I)V

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    iget-object v4, p0, Lr;->I:Lag;

    invoke-virtual {v4, v1, v2, v0, v3}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    :cond_10c
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_112
    iget v4, p0, Lr;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lr;->s:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    add-int/lit8 v4, v1, 0x1

    aput-char v7, v2, v1

    array-length v1, v2

    if-lt v4, v1, :cond_163

    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    move v1, v0

    goto :goto_d9

    :cond_12a
    iget v1, p0, Lr;->s:I

    iget v2, p0, Lr;->t:I

    if-ge v1, v2, :cond_159

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_135
    iget-object v5, p0, Lr;->L:[C

    aget-char v5, v5, v1

    if-ge v5, v4, :cond_152

    aget v6, v3, v5

    if-eqz v6, :cond_152

    if-ne v5, v7, :cond_159

    iget v2, p0, Lr;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lr;->s:I

    iget-object v3, p0, Lr;->I:Lag;

    iget-object v4, p0, Lr;->L:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lag;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    :cond_152
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_135

    :cond_159
    iget v2, p0, Lr;->s:I

    iput v1, p0, Lr;->s:I

    invoke-direct {p0, v2, v0, v7}, Lr;->a(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    :cond_163
    move v1, v4

    goto/16 :goto_d9

    :cond_166
    move v2, v1

    move v1, v0

    goto/16 :goto_b8
.end method

.method private e(I)Lorg/codehaus/jackson/JsonToken;
    .registers 9

    const/16 v6, 0x5c

    const/16 v5, 0x27

    if-ne p1, v5, :cond_e

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lr;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_e
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lr;->b(ILjava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_1f
    iget v2, p0, Lr;->s:I

    iget v3, p0, Lr;->t:I

    if-lt v2, v3, :cond_30

    invoke-virtual {p0}, Lr;->l()Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lr;->c(Ljava/lang/String;)V

    :cond_30
    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lr;->s:I

    aget-char v2, v2, v3

    if-gt v2, v6, :cond_42

    if-ne v2, v6, :cond_52

    invoke-direct {p0}, Lr;->v()C

    move-result v2

    :cond_42
    :goto_42
    array-length v3, v1

    if-lt v0, v3, :cond_68

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_4d
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_1f

    :cond_52
    if-gt v2, v5, :cond_42

    if-eq v2, v5, :cond_60

    const/16 v3, 0x20

    if-ge v2, v3, :cond_42

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lr;->c(ILjava/lang/String;)V

    goto :goto_42

    :cond_60
    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_68
    move v3, v0

    goto :goto_4d
.end method

.method private r()V
    .registers 3

    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lr;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->s:I

    :cond_1c
    iget v0, p0, Lr;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->v:I

    iget v0, p0, Lr;->s:I

    iput v0, p0, Lr;->w:I

    return-void
.end method

.method private s()V
    .registers 2

    iget v0, p0, Lr;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->v:I

    iget v0, p0, Lr;->s:I

    iput v0, p0, Lr;->w:I

    return-void
.end method

.method private final t()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_e
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr;->s:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_23

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    return v0

    :cond_1f
    invoke-direct {p0}, Lr;->u()V

    goto :goto_2

    :cond_23
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    invoke-direct {p0}, Lr;->s()V

    goto :goto_2

    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lr;->r()V

    goto :goto_2

    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lr;->a(I)V

    goto :goto_2

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr;->A:Lo;

    invoke-virtual {v1}, Lo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final u()V
    .registers 9

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x2f

    const/16 v3, 0x2a

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->b:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lr;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lr;->b(ILjava/lang/String;)V

    :cond_17
    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lr;->c(Ljava/lang/String;)V

    :cond_28
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr;->s:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_60

    :cond_34
    :goto_34
    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_40
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_34

    if-ne v0, v6, :cond_54

    invoke-direct {p0}, Lr;->s()V

    :cond_53
    :goto_53
    return-void

    :cond_54
    if-ne v0, v7, :cond_5a

    invoke-direct {p0}, Lr;->r()V

    goto :goto_53

    :cond_5a
    if-eq v0, v5, :cond_34

    invoke-virtual {p0, v0}, Lr;->a(I)V

    goto :goto_34

    :cond_60
    if-ne v0, v3, :cond_b3

    :cond_62
    :goto_62
    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_6e

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_6e
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr;->s:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_62

    if-ne v0, v3, :cond_97

    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_88

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_88
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_62

    iget v0, p0, Lr;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->s:I

    goto :goto_53

    :cond_97
    const/16 v1, 0x20

    if-ge v0, v1, :cond_62

    if-ne v0, v6, :cond_a1

    invoke-direct {p0}, Lr;->s()V

    goto :goto_62

    :cond_a1
    if-ne v0, v7, :cond_a7

    invoke-direct {p0}, Lr;->r()V

    goto :goto_62

    :cond_a7
    if-eq v0, v5, :cond_62

    invoke-virtual {p0, v0}, Lr;->a(I)V

    goto :goto_62

    :cond_ad
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lr;->c(Ljava/lang/String;)V

    goto :goto_53

    :cond_b3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lr;->b(ILjava/lang/String;)V

    goto :goto_53
.end method

.method private v()C
    .registers 6

    const/4 v1, 0x0

    iget v0, p0, Lr;->s:I

    iget v2, p0, Lr;->t:I

    if-lt v0, v2, :cond_12

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lr;->c(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lr;->L:[C

    iget v2, p0, Lr;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lr;->s:I

    aget-char v0, v0, v2

    sparse-switch v0, :sswitch_data_66

    invoke-virtual {p0, v0}, Lr;->a(C)C

    move-result v0

    :goto_23
    :sswitch_23
    return v0

    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    :sswitch_33
    move v0, v1

    :goto_34
    const/4 v2, 0x4

    if-ge v0, v2, :cond_63

    iget v2, p0, Lr;->s:I

    iget v3, p0, Lr;->t:I

    if-lt v2, v3, :cond_48

    invoke-virtual {p0}, Lr;->l()Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lr;->c(Ljava/lang/String;)V

    :cond_48
    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lr;->s:I

    aget-char v2, v2, v3

    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    if-gez v3, :cond_5d

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lr;->b(ILjava/lang/String;)V

    :cond_5d
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_63
    int-to-char v0, v1

    goto :goto_23

    nop

    :sswitch_data_66
    .sparse-switch
        0x22 -> :sswitch_23
        0x2f -> :sswitch_23
        0x5c -> :sswitch_23
        0x62 -> :sswitch_24
        0x66 -> :sswitch_2d
        0x6e -> :sswitch_2a
        0x72 -> :sswitch_30
        0x74 -> :sswitch_27
        0x75 -> :sswitch_33
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 10

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x20

    iget-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->f:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_38

    iput-boolean v3, p0, Lr;->E:Z

    iget-object v0, p0, Lr;->B:Lorg/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lr;->B:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_27

    iget-object v1, p0, Lr;->A:Lo;

    iget v2, p0, Lr;->y:I

    iget v3, p0, Lr;->z:I

    invoke-virtual {v1, v2, v3}, Lo;->a(II)Lo;

    move-result-object v1

    iput-object v1, p0, Lr;->A:Lo;

    :cond_24
    :goto_24
    iput-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    :goto_26
    return-object v0

    :cond_27
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_24

    iget-object v1, p0, Lr;->A:Lo;

    iget v2, p0, Lr;->y:I

    iget v3, p0, Lr;->z:I

    invoke-virtual {v1, v2, v3}, Lo;->b(II)Lo;

    move-result-object v1

    iput-object v1, p0, Lr;->A:Lo;

    goto :goto_24

    :cond_38
    iget-boolean v0, p0, Lr;->J:Z

    if-eqz v0, :cond_6f

    iput-boolean v3, p0, Lr;->J:Z

    iget v1, p0, Lr;->s:I

    iget v0, p0, Lr;->t:I

    iget-object v4, p0, Lr;->L:[C

    :goto_44
    if-lt v1, v0, :cond_57

    iput v1, p0, Lr;->s:I

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lr;->c(Ljava/lang/String;)V

    :cond_53
    iget v1, p0, Lr;->s:I

    iget v0, p0, Lr;->t:I

    :cond_57
    add-int/lit8 v3, v1, 0x1

    aget-char v1, v4, v1

    if-gt v1, v8, :cond_9d

    if-ne v1, v8, :cond_69

    iput v3, p0, Lr;->s:I

    invoke-direct {p0}, Lr;->v()C

    iget v1, p0, Lr;->s:I

    iget v0, p0, Lr;->t:I

    goto :goto_44

    :cond_69
    if-gt v1, v7, :cond_9d

    if-ne v1, v7, :cond_94

    iput v3, p0, Lr;->s:I

    :cond_6f
    :goto_6f
    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-lt v0, v1, :cond_7b

    invoke-virtual {p0}, Lr;->l()Z

    move-result v0

    if-eqz v0, :cond_bd

    :cond_7b
    iget-object v0, p0, Lr;->L:[C

    iget v1, p0, Lr;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lr;->s:I

    aget-char v0, v0, v1

    if-le v0, v6, :cond_a3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_9f

    :goto_8b
    if-gez v0, :cond_c2

    invoke-virtual {p0}, Lr;->close()V

    iput-object v2, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v2

    goto :goto_26

    :cond_94
    if-ge v1, v6, :cond_9d

    iput v3, p0, Lr;->s:I

    const-string v5, "string value"

    invoke-virtual {p0, v1, v5}, Lr;->c(ILjava/lang/String;)V

    :cond_9d
    move v1, v3

    goto :goto_44

    :cond_9f
    invoke-direct {p0}, Lr;->u()V

    goto :goto_6f

    :cond_a3
    if-eq v0, v6, :cond_6f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_ad

    invoke-direct {p0}, Lr;->s()V

    goto :goto_6f

    :cond_ad
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b5

    invoke-direct {p0}, Lr;->r()V

    goto :goto_6f

    :cond_b5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6f

    invoke-virtual {p0, v0}, Lr;->a(I)V

    goto :goto_6f

    :cond_bd
    invoke-virtual {p0}, Lr;->o()V

    const/4 v0, -0x1

    goto :goto_8b

    :cond_c2
    iget-wide v3, p0, Lr;->u:J

    iget v1, p0, Lr;->s:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lr;->x:J

    iget v1, p0, Lr;->v:I

    iput v1, p0, Lr;->y:I

    iget v1, p0, Lr;->s:I

    iget v3, p0, Lr;->w:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lr;->z:I

    iput-object v2, p0, Lr;->G:[B

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_fb

    iget-object v1, p0, Lr;->A:Lo;

    invoke-virtual {v1}, Lo;->a()Z

    move-result v1

    if-nez v1, :cond_ed

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lr;->a(IC)V

    :cond_ed
    iget-object v0, p0, Lr;->A:Lo;

    invoke-virtual {v0}, Lo;->h()Lo;

    move-result-object v0

    iput-object v0, p0, Lr;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_fb
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_11a

    iget-object v1, p0, Lr;->A:Lo;

    invoke-virtual {v1}, Lo;->c()Z

    move-result v1

    if-nez v1, :cond_10c

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lr;->a(IC)V

    :cond_10c
    iget-object v0, p0, Lr;->A:Lo;

    invoke-virtual {v0}, Lo;->h()Lo;

    move-result-object v0

    iput-object v0, p0, Lr;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_11a
    iget-object v1, p0, Lr;->A:Lo;

    invoke-virtual {v1}, Lo;->i()Z

    move-result v1

    if-eqz v1, :cond_148

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_144

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "was expecting comma to separate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lr;->A:Lo;

    invoke-virtual {v2}, Lo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lr;->b(ILjava/lang/String;)V

    :cond_144
    invoke-direct {p0}, Lr;->t()I

    move-result v0

    :cond_148
    iget-object v1, p0, Lr;->A:Lo;

    invoke-virtual {v1}, Lo;->c()Z

    move-result v1

    if-eqz v1, :cond_16e

    invoke-direct {p0, v0}, Lr;->d(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lr;->A:Lo;

    invoke-virtual {v2, v0}, Lo;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->f:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0}, Lr;->t()I

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_16a

    const-string v2, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v2}, Lr;->b(ILjava/lang/String;)V

    :cond_16a
    invoke-direct {p0}, Lr;->t()I

    move-result v0

    :cond_16e
    sparse-switch v0, :sswitch_data_1cc

    invoke-direct {p0, v0}, Lr;->e(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_175
    if-eqz v1, :cond_1c7

    iput-object v0, p0, Lr;->B:Lorg/codehaus/jackson/JsonToken;

    iget-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_17d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr;->J:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_183
    if-nez v1, :cond_191

    iget-object v0, p0, Lr;->A:Lo;

    iget v2, p0, Lr;->y:I

    iget v3, p0, Lr;->z:I

    invoke-virtual {v0, v2, v3}, Lo;->a(II)Lo;

    move-result-object v0

    iput-object v0, p0, Lr;->A:Lo;

    :cond_191
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_194
    if-nez v1, :cond_1a2

    iget-object v0, p0, Lr;->A:Lo;

    iget v2, p0, Lr;->y:I

    iget v3, p0, Lr;->z:I

    invoke-virtual {v0, v2, v3}, Lo;->b(II)Lo;

    move-result-object v0

    iput-object v0, p0, Lr;->A:Lo;

    :cond_1a2
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_1a5
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lr;->b(ILjava/lang/String;)V

    :sswitch_1aa
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lr;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_1b2
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lr;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_1ba
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lr;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    goto :goto_175

    :sswitch_1c2
    invoke-virtual {p0, v0}, Lr;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_175

    :cond_1c7
    iput-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    nop

    :sswitch_data_1cc
    .sparse-switch
        0x22 -> :sswitch_17d
        0x2d -> :sswitch_1c2
        0x30 -> :sswitch_1c2
        0x31 -> :sswitch_1c2
        0x32 -> :sswitch_1c2
        0x33 -> :sswitch_1c2
        0x34 -> :sswitch_1c2
        0x35 -> :sswitch_1c2
        0x36 -> :sswitch_1c2
        0x37 -> :sswitch_1c2
        0x38 -> :sswitch_1c2
        0x39 -> :sswitch_1c2
        0x5b -> :sswitch_183
        0x5d -> :sswitch_1a5
        0x66 -> :sswitch_1b2
        0x6e -> :sswitch_1ba
        0x74 -> :sswitch_1aa
        0x7b -> :sswitch_194
        0x7d -> :sswitch_1a5
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    invoke-super {p0}, Lq;->close()V

    iget-object v0, p0, Lr;->I:Lag;

    invoke-virtual {v0}, Lag;->b()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 10

    const/16 v8, 0x5c

    const/4 v4, 0x0

    const/16 v7, 0x22

    iget-object v0, p0, Lr;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a5

    iget-boolean v0, p0, Lr;->J:Z

    if-eqz v0, :cond_39

    iput-boolean v4, p0, Lr;->J:Z

    iget v0, p0, Lr;->s:I

    iget v1, p0, Lr;->t:I

    if-ge v0, v1, :cond_44

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v2

    array-length v3, v2

    :cond_1c
    iget-object v5, p0, Lr;->L:[C

    aget-char v5, v5, v0

    if-ge v5, v3, :cond_40

    aget v6, v2, v5

    if-eqz v6, :cond_40

    if-ne v5, v7, :cond_44

    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    iget v4, p0, Lr;->s:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/c;->a([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr;->s:I

    :cond_39
    :goto_39
    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    return-object v0

    :cond_40
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1c

    :cond_44
    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    iget v5, p0, Lr;->s:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/codehaus/jackson/util/c;->b([CII)V

    iput v0, p0, Lr;->s:I

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_5f
    iget v2, p0, Lr;->s:I

    iget v3, p0, Lr;->t:I

    if-lt v2, v3, :cond_70

    invoke-virtual {p0}, Lr;->l()Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lr;->c(Ljava/lang/String;)V

    :cond_70
    iget-object v2, p0, Lr;->L:[C

    iget v3, p0, Lr;->s:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lr;->s:I

    aget-char v2, v2, v3

    if-gt v2, v8, :cond_82

    if-ne v2, v8, :cond_91

    invoke-direct {p0}, Lr;->v()C

    move-result v2

    :cond_82
    :goto_82
    array-length v3, v1

    if-lt v0, v3, :cond_c8

    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v3, v4

    :goto_8c
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_5f

    :cond_91
    if-gt v2, v7, :cond_82

    if-eq v2, v7, :cond_9f

    const/16 v3, 0x20

    if-ge v2, v3, :cond_82

    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lr;->c(ILjava/lang/String;)V

    goto :goto_82

    :cond_9f
    iget-object v1, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    goto :goto_39

    :cond_a5
    if-nez v0, :cond_a9

    const/4 v0, 0x0

    goto :goto_3f

    :cond_a9
    sget-object v1, Ls;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ca

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_b9
    iget-object v0, p0, Lr;->A:Lo;

    invoke-virtual {v0}, Lo;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_c0
    iget-object v0, p0, Lr;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3f

    :cond_c8
    move v3, v0

    goto :goto_8c

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
    .end packed-switch
.end method
