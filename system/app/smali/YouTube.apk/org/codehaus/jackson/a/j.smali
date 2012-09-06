.class public final Lorg/codehaus/jackson/a/j;
.super Lorg/codehaus/jackson/a/e;
.source "SourceFile"


# instance fields
.field protected H:Ljava/io/Reader;

.field protected I:[C

.field protected J:Lorg/codehaus/jackson/c;

.field protected final K:Lorg/codehaus/jackson/c/c;

.field protected L:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/a/e;-><init>(Lorg/codehaus/jackson/b/c;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/j;->L:Z

    .line 70
    iput-object p3, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    .line 71
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->g()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    .line 72
    iput-object p4, p0, Lorg/codehaus/jackson/a/j;->J:Lorg/codehaus/jackson/c;

    .line 73
    iput-object p5, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    .line 74
    return-void
.end method

.method private final A()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 1447
    :cond_2
    :goto_2
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1448
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    .line 1449
    if-le v0, v3, :cond_23

    .line 1450
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 1451
    return v0

    .line 1453
    :cond_1f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->B()V

    goto :goto_2

    .line 1454
    :cond_23
    if-eq v0, v3, :cond_2

    .line 1455
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 1456
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->z()V

    goto :goto_2

    .line 1457
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 1458
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->y()V

    goto :goto_2

    .line 1459
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1460
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(I)V

    goto :goto_2

    .line 1464
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final B()V
    .registers 9

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x2f

    const/16 v3, 0x2a

    .line 1497
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1498
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    .line 1501
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1502
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 1504
    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    .line 1505
    if-ne v0, v4, :cond_60

    .line 1506
    :cond_34
    :goto_34
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_34

    if-ne v0, v6, :cond_54

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->z()V

    .line 1512
    :cond_53
    :goto_53
    return-void

    .line 1506
    :cond_54
    if-ne v0, v7, :cond_5a

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->y()V

    goto :goto_53

    :cond_5a
    if-eq v0, v5, :cond_34

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(I)V

    goto :goto_34

    .line 1507
    :cond_60
    if-ne v0, v3, :cond_b3

    .line 1508
    :cond_62
    :goto_62
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_6e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_62

    if-ne v0, v3, :cond_97

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_88
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_62

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    goto :goto_53

    :cond_97
    const/16 v1, 0x20

    if-ge v0, v1, :cond_62

    if-ne v0, v6, :cond_a1

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->z()V

    goto :goto_62

    :cond_a1
    if-ne v0, v7, :cond_a7

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->y()V

    goto :goto_62

    :cond_a7
    if-eq v0, v5, :cond_62

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(I)V

    goto :goto_62

    :cond_ad
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    goto :goto_53

    .line 1510
    :cond_b3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    goto :goto_53
.end method

.method private a(III)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 1008
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/f;->a([CII)V

    .line 1013
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->h()[C

    move-result-object v1

    .line 1014
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->j()I

    move-result v0

    .line 1017
    :goto_18
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v2, v3, :cond_3d

    .line 1018
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 1019
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

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 1022
    :cond_3d
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v3, v2, v3

    .line 1024
    if-gt v3, v5, :cond_6f

    .line 1025
    if-ne v3, v5, :cond_62

    .line 1030
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->t()C

    move-result v2

    .line 1040
    :goto_4f
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    .line 1042
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 1045
    array-length v0, v1

    if-lt v3, v0, :cond_8b

    .line 1046
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    .line 1047
    const/4 v0, 0x0

    goto :goto_18

    .line 1031
    :cond_62
    if-gt v3, p3, :cond_6f

    .line 1032
    if-eq v3, p3, :cond_71

    .line 1033
    const/16 v2, 0x20

    if-ge v3, v2, :cond_6f

    .line 1036
    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/a/j;->c(ILjava/lang/String;)V

    :cond_6f
    move v2, v3

    goto :goto_4f

    .line 1050
    :cond_71
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/f;->a(I)V

    .line 1052
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    .line 1053
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->d()[C

    move-result-object v1

    .line 1054
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->c()I

    move-result v2

    .line 1055
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->b()I

    move-result v0

    .line 1057
    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    move v0, v3

    goto :goto_18
.end method

.method private a(IZ)Lorg/codehaus/jackson/JsonToken;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 934
    const/16 v0, 0x49

    if-ne p1, v0, :cond_59

    .line 935
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v5, :cond_18

    .line 936
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_18

    .line 937
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->v()V

    .line 940
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char p1, v0, v5

    .line 941
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_60

    .line 942
    if-eqz p2, :cond_3c

    const-string v0, "-INF"

    .line 943
    :goto_2a
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    .line 944
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 945
    if-eqz p2, :cond_3f

    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 958
    :goto_3b
    return-object v0

    .line 942
    :cond_3c
    const-string v0, "+INF"

    goto :goto_2a

    :cond_3f
    move-wide v1, v3

    .line 945
    goto :goto_37

    .line 947
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    .line 957
    :cond_59
    :goto_59
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    .line 958
    const/4 v0, 0x0

    goto :goto_3b

    .line 948
    :cond_60
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_59

    .line 949
    if-eqz p2, :cond_7a

    const-string v0, "-Infinity"

    .line 950
    :goto_68
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    .line 951
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 952
    if-eqz p2, :cond_7d

    :goto_75
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3b

    .line 949
    :cond_7a
    const-string v0, "+Infinity"

    goto :goto_68

    :cond_7d
    move-wide v1, v3

    .line 952
    goto :goto_75

    .line 954
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-standard token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    goto :goto_59
.end method

.method private a(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1629
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1632
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v1, v2, :cond_14

    .line 1633
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1634
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->v()V

    .line 1637
    :cond_14
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_27

    .line 1638
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/j;->f(Ljava/lang/String;)V

    .line 1640
    :cond_27
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1641
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    .line 1644
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_3e

    .line 1645
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1658
    :cond_3d
    :goto_3d
    return-void

    .line 1649
    :cond_3e
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    .line 1650
    const/16 v1, 0x30

    if-lt v0, v1, :cond_3d

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3d

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3d

    .line 1654
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1655
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1656
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/j;->f(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private c(I)Lorg/codehaus/jackson/JsonToken;
    .registers 13
    .parameter

    .prologue
    .line 656
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_27

    const/4 v0, 0x1

    .line 657
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 658
    add-int/lit8 v4, v1, -0x1

    .line 659
    iget v7, p0, Lorg/codehaus/jackson/a/j;->f:I

    .line 663
    if-eqz v0, :cond_29

    .line 664
    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v1, v2, :cond_b7

    .line 665
    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v2, v1, 0x1

    aget-char p1, v3, v1

    .line 669
    const/16 v1, 0x39

    if-gt p1, v1, :cond_1f

    const/16 v1, 0x30

    if-ge p1, v1, :cond_2a

    .line 670
    :cond_1f
    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/a/j;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 761
    :goto_26
    return-object v0

    .line 656
    :cond_27
    const/4 v0, 0x0

    goto :goto_5

    :cond_29
    move v2, v1

    .line 679
    :cond_2a
    const/16 v1, 0x30

    if-eq p1, v1, :cond_b7

    .line 680
    const/4 v1, 0x1

    .line 695
    :goto_2f
    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v2, v3, :cond_b7

    .line 696
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v5, v5, v2

    .line 699
    const/16 v2, 0x30

    if-lt v5, v2, :cond_45

    const/16 v2, 0x39

    if-gt v5, v2, :cond_45

    .line 700
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_2f

    .line 705
    :cond_45
    const/4 v2, 0x0

    .line 708
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_66

    move v5, v3

    .line 711
    :goto_4b
    if-ge v5, v7, :cond_b7

    .line 712
    iget-object v6, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v6, v5

    .line 715
    const/16 v6, 0x30

    if-lt v5, v6, :cond_5f

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5f

    .line 716
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    goto :goto_4b

    .line 721
    :cond_5f
    if-nez v2, :cond_66

    .line 722
    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_66
    move v6, v2

    .line 726
    const/4 v2, 0x0

    .line 727
    const/16 v8, 0x65

    if-eq v5, v8, :cond_70

    const/16 v8, 0x45

    if-ne v5, v8, :cond_a5

    .line 728
    :cond_70
    if-ge v3, v7, :cond_b7

    .line 729
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    .line 733
    const/16 v8, 0x2d

    if-eq v3, v8, :cond_80

    const/16 v8, 0x2b

    if-ne v3, v8, :cond_2c3

    .line 734
    :cond_80
    if-ge v5, v7, :cond_b7

    .line 735
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v3, v5, 0x1

    aget-char v5, v8, v5

    .line 739
    :goto_88
    const/16 v8, 0x39

    if-gt v5, v8, :cond_9e

    const/16 v8, 0x30

    if-lt v5, v8, :cond_9e

    .line 740
    add-int/lit8 v2, v2, 0x1

    .line 741
    if-ge v3, v7, :cond_b7

    .line 742
    iget-object v8, p0, Lorg/codehaus/jackson/a/j;->I:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v8, v3

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_88

    .line 747
    :cond_9e
    if-nez v2, :cond_a5

    .line 748
    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v7}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    .line 753
    :cond_a5
    add-int/lit8 v3, v3, -0x1

    .line 754
    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 755
    sub-int/2addr v3, v4

    .line 756
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    iget-object v7, p0, Lorg/codehaus/jackson/a/j;->I:[C

    invoke-virtual {v5, v7, v4, v3}, Lorg/codehaus/jackson/util/f;->a([CII)V

    .line 757
    invoke-virtual {p0, v0, v1, v6, v2}, Lorg/codehaus/jackson/a/j;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_26

    .line 760
    :cond_b7
    if-eqz v0, :cond_1f0

    add-int/lit8 v1, v4, 0x1

    :goto_bb
    iput v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 761
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v0, :cond_cc

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v4, 0x2d

    aput-char v4, v3, v2

    :cond_cc
    const/4 v4, 0x0

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v2, v5, :cond_1f3

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v5

    :goto_dd
    const/16 v5, 0x30

    if-ne v2, v5, :cond_ef

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v2, v5, :cond_1fb

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_1fb

    const/16 v2, 0x30

    :cond_ef
    :goto_ef
    const/4 v6, 0x0

    move v10, v2

    move-object v2, v3

    move v3, v10

    :goto_f3
    const/16 v5, 0x30

    if-lt v3, v5, :cond_2bd

    const/16 v5, 0x39

    if-gt v3, v5, :cond_2bd

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    if-lt v1, v5, :cond_107

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :cond_107
    add-int/lit8 v5, v1, 0x1

    aput-char v3, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v1, v3, :cond_24e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-nez v1, :cond_24e

    const/4 v1, 0x0

    const/4 v6, 0x1

    move v8, v4

    move-object v4, v2

    move v2, v1

    :goto_11c
    if-nez v8, :cond_13a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Missing integer part (next char "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/codehaus/jackson/a/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->b(Ljava/lang/String;)V

    :cond_13a
    const/4 v1, 0x0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2b6

    add-int/lit8 v3, v5, 0x1

    aput-char v2, v4, v5

    :goto_143
    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v7, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v5, v7, :cond_25b

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v5

    if-nez v5, :cond_25b

    const/4 v6, 0x1

    move v5, v6

    :goto_151
    if-nez v1, :cond_158

    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v6}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_158
    move v7, v1

    move v6, v2

    move v1, v3

    move-object v2, v4

    :goto_15c
    const/4 v4, 0x0

    const/16 v3, 0x65

    if-eq v6, v3, :cond_165

    const/16 v3, 0x45

    if-ne v6, v3, :cond_2ad

    :cond_165
    array-length v3, v2

    if-lt v1, v3, :cond_16f

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :cond_16f
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v1, v6, :cond_280

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v6, v1, v6

    :goto_183
    const/16 v1, 0x2d

    if-eq v6, v1, :cond_18b

    const/16 v1, 0x2b

    if-ne v6, v1, :cond_2a7

    :cond_18b
    array-length v1, v2

    if-lt v3, v1, :cond_2a4

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v2

    const/4 v1, 0x0

    :goto_195
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v2, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v1, v6, :cond_288

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v1, v1, v6

    move v10, v4

    move-object v4, v2

    move v2, v10

    :goto_1ac
    move v6, v1

    move v1, v3

    :goto_1ae
    const/16 v3, 0x39

    if-gt v6, v3, :cond_29f

    const/16 v3, 0x30

    if-lt v6, v3, :cond_29f

    add-int/lit8 v2, v2, 0x1

    array-length v3, v4

    if-lt v1, v3, :cond_1c2

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v4

    const/4 v1, 0x0

    :cond_1c2
    add-int/lit8 v3, v1, 0x1

    aput-char v6, v4, v1

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v9, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v1, v9, :cond_293

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-nez v1, :cond_293

    const/4 v5, 0x1

    move v4, v2

    move v1, v5

    move v2, v3

    :goto_1d6
    if-nez v4, :cond_1dd

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v6, v3}, Lorg/codehaus/jackson/a/j;->a(ILjava/lang/String;)V

    :cond_1dd
    :goto_1dd
    if-nez v1, :cond_1e5

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    :cond_1e5
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/f;->a(I)V

    invoke-virtual {p0, v0, v8, v7, v4}, Lorg/codehaus/jackson/a/j;->a(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_26

    :cond_1f0
    move v1, v4

    .line 760
    goto/16 :goto_bb

    .line 761
    :cond_1f3
    const-string v2, "No digit following minus sign"

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v2

    goto/16 :goto_dd

    :cond_1fb
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_209

    const/16 v5, 0x39

    if-le v2, v5, :cond_20d

    :cond_209
    const/16 v2, 0x30

    goto/16 :goto_ef

    :cond_20d
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-nez v5, :cond_21a

    const-string v5, "Leading zeroes not allowed"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/j;->b(Ljava/lang/String;)V

    :cond_21a
    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    const/16 v5, 0x30

    if-ne v2, v5, :cond_ef

    :cond_224
    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v6, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v5, v6, :cond_230

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v5

    if-eqz v5, :cond_ef

    :cond_230
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_23e

    const/16 v5, 0x39

    if-le v2, v5, :cond_242

    :cond_23e
    const/16 v2, 0x30

    goto/16 :goto_ef

    :cond_242
    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    const/16 v5, 0x30

    if-eq v2, v5, :cond_224

    goto/16 :goto_ef

    :cond_24e
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v3, v1, v3

    move v1, v5

    goto/16 :goto_f3

    :cond_25b
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v5

    const/16 v5, 0x30

    if-lt v2, v5, :cond_2b3

    const/16 v5, 0x39

    if-gt v2, v5, :cond_2b3

    add-int/lit8 v1, v1, 0x1

    array-length v5, v4

    if-lt v3, v5, :cond_2b1

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v3}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v4

    const/4 v3, 0x0

    move v5, v3

    :goto_27a
    add-int/lit8 v3, v5, 0x1

    aput-char v2, v4, v5

    goto/16 :goto_143

    :cond_280
    const-string v1, "expected a digit for number exponent"

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v6

    goto/16 :goto_183

    :cond_288
    const-string v1, "expected a digit for number exponent"

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/j;->e(Ljava/lang/String;)C

    move-result v1

    move v10, v4

    move-object v4, v2

    move v2, v10

    goto/16 :goto_1ac

    :cond_293
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v1, v1, v6

    goto/16 :goto_1ac

    :cond_29f
    move v4, v2

    move v2, v1

    move v1, v5

    goto/16 :goto_1d6

    :cond_2a4
    move v1, v3

    goto/16 :goto_195

    :cond_2a7
    move v1, v3

    move v10, v4

    move-object v4, v2

    move v2, v10

    goto/16 :goto_1ae

    :cond_2ad
    move v2, v1

    move v1, v5

    goto/16 :goto_1dd

    :cond_2b1
    move v5, v3

    goto :goto_27a

    :cond_2b3
    move v5, v6

    goto/16 :goto_151

    :cond_2b6
    move v7, v1

    move v1, v5

    move v5, v6

    move v6, v2

    move-object v2, v4

    goto/16 :goto_15c

    :cond_2bd
    move v8, v4

    move v5, v1

    move-object v4, v2

    move v2, v3

    goto/16 :goto_11c

    :cond_2c3
    move v10, v5

    move v5, v3

    move v3, v10

    goto/16 :goto_88
.end method

.method private d(I)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v0, 0x0

    .line 970
    if-eq p1, v7, :cond_12a

    .line 971
    if-ne p1, v8, :cond_48

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v1, v2, :cond_3f

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_1c
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->I:[C

    aget-char v5, v5, v1

    if-ne v5, v8, :cond_32

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1002
    :goto_31
    return-object v0

    .line 971
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
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iput v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    invoke-direct {p0, v2, v0, v8}, Lorg/codehaus/jackson/a/j;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_48
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

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

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    :cond_70
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v4, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v1, v4, :cond_166

    move v2, v1

    move v1, v0

    :cond_78
    iget-object v6, p0, Lorg/codehaus/jackson/a/j;->I:[C

    aget-char v6, v6, v2

    if-ge v6, v3, :cond_9a

    aget v7, v5, v6

    if-eqz v7, :cond_b1

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

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

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    sub-int/2addr v2, v0

    invoke-virtual {v3, v4, v0, v2, v1}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_b1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_78

    :goto_b8
    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v3, v3, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v6, p0, Lorg/codehaus/jackson/a/j;->e:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v6}, Lorg/codehaus/jackson/util/f;->a([CII)V

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/f;->h()[C

    move-result-object v3

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/f;->j()I

    move-result v2

    array-length v6, v5

    move v9, v2

    move-object v2, v3

    move v3, v1

    move v1, v9

    :goto_d9
    iget v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v7, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v4, v7, :cond_e5

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_e5
    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v7, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v7, v4, v7

    if-gt v7, v6, :cond_10c

    aget v4, v5, v7

    if-eqz v4, :cond_112

    :cond_f1
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/f;->a(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->b()I

    move-result v0

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v4, v1, v2, v0, v3}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    :cond_10c
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_112
    iget v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    add-int/lit8 v4, v1, 0x1

    aput-char v7, v2, v1

    array-length v1, v2

    if-lt v4, v1, :cond_163

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v2

    move v1, v0

    goto :goto_d9

    .line 977
    :cond_12a
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 979
    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    .line 981
    if-ge v1, v2, :cond_159

    .line 982
    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    .line 983
    array-length v4, v3

    .line 986
    :cond_135
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->I:[C

    aget-char v5, v5, v1

    .line 987
    if-ge v5, v4, :cond_152

    aget v6, v3, v5

    if-eqz v6, :cond_152

    .line 988
    if-ne v5, v7, :cond_159

    .line 989
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 990
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 991
    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 995
    :cond_152
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 996
    add-int/lit8 v1, v1, 0x1

    .line 997
    if-lt v1, v2, :cond_135

    .line 1000
    :cond_159
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1001
    iput v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1002
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/a/j;->a(III)Ljava/lang/String;

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

.method private e(Ljava/lang/String;)C
    .registers 5
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_f

    .line 137
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_f

    .line 138
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 141
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    return v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1793
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v1, v2, :cond_11

    .line 1794
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1795
    :cond_11
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v1, v1, v2

    .line 1799
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1800
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1805
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized token \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    .line 1806
    return-void
.end method

.method private x()Lorg/codehaus/jackson/JsonToken;
    .registers 8

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 1202
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v1

    .line 1203
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->j()I

    move-result v0

    .line 1206
    :goto_10
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v2, v3, :cond_21

    .line 1207
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_21

    .line 1208
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 1211
    :cond_21
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v3

    .line 1213
    if-gt v2, v6, :cond_33

    .line 1214
    if-ne v2, v6, :cond_43

    .line 1219
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->t()C

    move-result v2

    .line 1230
    :cond_33
    :goto_33
    array-length v3, v1

    if-lt v0, v3, :cond_59

    .line 1231
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    .line 1232
    const/4 v0, 0x0

    move v3, v0

    .line 1235
    :goto_3e
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_10

    .line 1220
    :cond_43
    if-gt v2, v5, :cond_33

    .line 1221
    if-eq v2, v5, :cond_51

    .line 1222
    const/16 v3, 0x20

    if-ge v2, v3, :cond_33

    .line 1225
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/a/j;->c(ILjava/lang/String;)V

    goto :goto_33

    .line 1237
    :cond_51
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/f;->a(I)V

    .line 1238
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_59
    move v3, v0

    goto :goto_3e
.end method

.method private y()V
    .registers 3

    .prologue
    .line 1429
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1430
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 1431
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 1434
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/a/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->h:I

    .line 1435
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iput v0, p0, Lorg/codehaus/jackson/a/j;->i:I

    .line 1436
    return-void
.end method

.method private z()V
    .registers 2

    .prologue
    .line 1440
    iget v0, p0, Lorg/codehaus/jackson/a/j;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->h:I

    .line 1441
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iput v0, p0, Lorg/codehaus/jackson/a/j;->i:I

    .line 1442
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 11

    .prologue
    const/16 v9, 0x22

    const/16 v6, 0x20

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 350
    iput v8, p0, Lorg/codehaus/jackson/a/j;->x:I

    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_39

    .line 357
    iput-boolean v8, p0, Lorg/codehaus/jackson/a/j;->q:Z

    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->n:Lorg/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lorg/codehaus/jackson/a/j;->n:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_28

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/j;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    :cond_25
    :goto_25
    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    .line 488
    :goto_27
    return-object v0

    .line 357
    :cond_28
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_25

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/j;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    goto :goto_25

    .line 359
    :cond_39
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/j;->L:Z

    if-eqz v0, :cond_74

    .line 360
    iput-boolean v8, p0, Lorg/codehaus/jackson/a/j;->L:Z

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    iget-object v4, p0, Lorg/codehaus/jackson/a/j;->I:[C

    :goto_45
    if-lt v0, v1, :cond_58

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    :cond_54
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    :cond_58
    add-int/lit8 v3, v0, 0x1

    aget-char v0, v4, v0

    const/16 v5, 0x5c

    if-gt v0, v5, :cond_9d

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_6e

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->t()C

    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    goto :goto_45

    :cond_6e
    if-gt v0, v9, :cond_9d

    if-ne v0, v9, :cond_94

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 362
    :cond_74
    :goto_74
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v1, :cond_80

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-eqz v0, :cond_b9

    :cond_80
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v1

    if-le v0, v6, :cond_9f

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_bd

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->B()V

    goto :goto_74

    .line 360
    :cond_94
    if-ge v0, v6, :cond_9d

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    const-string v5, "string value"

    invoke-virtual {p0, v0, v5}, Lorg/codehaus/jackson/a/j;->c(ILjava/lang/String;)V

    :cond_9d
    move v0, v3

    goto :goto_45

    .line 362
    :cond_9f
    if-eq v0, v6, :cond_74

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a9

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->z()V

    goto :goto_74

    :cond_a9
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b1

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->y()V

    goto :goto_74

    :cond_b1
    const/16 v1, 0x9

    if-eq v0, v1, :cond_74

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(I)V

    goto :goto_74

    :cond_b9
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->s()V

    const/4 v0, -0x1

    .line 363
    :cond_bd
    if-gez v0, :cond_c7

    .line 367
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->close()V

    .line 368
    iput-object v2, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v2

    goto/16 :goto_27

    .line 374
    :cond_c7
    iget-wide v3, p0, Lorg/codehaus/jackson/a/j;->g:J

    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/codehaus/jackson/a/j;->j:J

    .line 375
    iget v1, p0, Lorg/codehaus/jackson/a/j;->h:I

    iput v1, p0, Lorg/codehaus/jackson/a/j;->k:I

    .line 376
    iget v1, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->i:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/j;->l:I

    .line 379
    iput-object v2, p0, Lorg/codehaus/jackson/a/j;->s:[B

    .line 382
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_100

    .line 383
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 384
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/j;->a(IC)V

    .line 386
    :cond_f2
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    .line 387
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_27

    .line 389
    :cond_100
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_11f

    .line 390
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_111

    .line 391
    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/j;->a(IC)V

    .line 393
    :cond_111
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    .line 394
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_27

    .line 398
    :cond_11f
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->i()Z

    move-result v1

    if-eqz v1, :cond_14d

    .line 399
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_149

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "was expecting comma to separate "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    .line 402
    :cond_149
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->A()I

    move-result v0

    .line 409
    :cond_14d
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    .line 410
    if-eqz v1, :cond_173

    .line 412
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/j;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/String;)V

    .line 414
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    .line 415
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->A()I

    move-result v0

    .line 416
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_16f

    .line 417
    const-string v3, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    .line 419
    :cond_16f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->A()I

    move-result v0

    .line 426
    :cond_173
    sparse-switch v0, :sswitch_data_21c

    .line 479
    sparse-switch v0, :sswitch_data_26a

    :cond_179
    :goto_179
    const-string v3, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    move-object v0, v2

    .line 483
    :goto_17f
    if-eqz v1, :cond_218

    .line 484
    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->n:Lorg/codehaus/jackson/JsonToken;

    .line 485
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_27

    .line 428
    :sswitch_187
    iput-boolean v7, p0, Lorg/codehaus/jackson/a/j;->L:Z

    .line 429
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 432
    :sswitch_18c
    if-nez v1, :cond_19a

    .line 433
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/j;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->l:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    .line 435
    :cond_19a
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 438
    :sswitch_19d
    if-nez v1, :cond_1ab

    .line 439
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/j;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->l:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    .line 441
    :cond_1ab
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 447
    :sswitch_1ae
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    .line 449
    :sswitch_1b3
    const-string v0, "true"

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    .line 450
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 453
    :sswitch_1bb
    const-string v0, "false"

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    .line 454
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 457
    :sswitch_1c3
    const-string v0, "null"

    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    .line 458
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_17f

    .line 476
    :sswitch_1cb
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/j;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_17f

    .line 479
    :sswitch_1d0
    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_179

    invoke-direct {p0}, Lorg/codehaus/jackson/a/j;->x()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_17f

    :sswitch_1dd
    const-string v3, "NaN"

    invoke-direct {p0, v3, v7}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;I)V

    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1f3

    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8

    invoke-virtual {p0, v0, v2, v3}, Lorg/codehaus/jackson/a/j;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_17f

    :cond_1f3
    const-string v3, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/j;->d(Ljava/lang/String;)V

    goto :goto_179

    :sswitch_1f9
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v2, :cond_208

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_208

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->v()V

    :cond_208
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v2

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/j;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_17f

    .line 487
    :cond_218
    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_27

    .line 426
    :sswitch_data_21c
    .sparse-switch
        0x22 -> :sswitch_187
        0x2d -> :sswitch_1cb
        0x30 -> :sswitch_1cb
        0x31 -> :sswitch_1cb
        0x32 -> :sswitch_1cb
        0x33 -> :sswitch_1cb
        0x34 -> :sswitch_1cb
        0x35 -> :sswitch_1cb
        0x36 -> :sswitch_1cb
        0x37 -> :sswitch_1cb
        0x38 -> :sswitch_1cb
        0x39 -> :sswitch_1cb
        0x5b -> :sswitch_18c
        0x5d -> :sswitch_1ae
        0x66 -> :sswitch_1bb
        0x6e -> :sswitch_1c3
        0x74 -> :sswitch_1b3
        0x7b -> :sswitch_19d
        0x7d -> :sswitch_1ae
    .end sparse-switch

    .line 479
    :sswitch_data_26a
    .sparse-switch
        0x27 -> :sswitch_1d0
        0x2b -> :sswitch_1f9
        0x4e -> :sswitch_1dd
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 622
    invoke-super {p0}, Lorg/codehaus/jackson/a/e;->close()V

    .line 623
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->K:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/c;->b()V

    .line 624
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x5c

    const/4 v4, 0x0

    const/16 v7, 0x22

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->b:Lorg/codehaus/jackson/JsonToken;

    .line 197
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a5

    .line 198
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/j;->L:Z

    if-eqz v0, :cond_39

    .line 199
    iput-boolean v4, p0, Lorg/codehaus/jackson/a/j;->L:Z

    .line 200
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-ge v0, v1, :cond_44

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v2

    array-length v3, v2

    :cond_1c
    iget-object v5, p0, Lorg/codehaus/jackson/a/j;->I:[C

    aget-char v5, v5, v0

    if-ge v5, v3, :cond_40

    aget v6, v2, v5

    if-eqz v6, :cond_40

    if-ne v5, v7, :cond_44

    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/f;->a([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 202
    :cond_39
    :goto_39
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_3f
    return-object v0

    .line 200
    :cond_40
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1c

    :cond_44
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/codehaus/jackson/util/f;->b([CII)V

    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->h()[C

    move-result-object v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->j()I

    move-result v0

    :goto_5f
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v2, v3, :cond_70

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    :cond_70
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v3

    if-gt v2, v8, :cond_82

    if-ne v2, v8, :cond_91

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->t()C

    move-result v2

    :cond_82
    :goto_82
    array-length v3, v1

    if-lt v0, v3, :cond_c8

    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

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

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/a/j;->c(ILjava/lang/String;)V

    goto :goto_82

    :cond_9f
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/f;->a(I)V

    goto :goto_39

    .line 204
    :cond_a5
    if-nez v0, :cond_a9

    const/4 v0, 0x0

    goto :goto_3f

    :cond_a9
    sget-object v1, Lorg/codehaus/jackson/a/k;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ca

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_b9
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_c0
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

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

.method protected final p()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-wide v1, p0, Lorg/codehaus/jackson/a/j;->g:J

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/a/j;->g:J

    .line 114
    iget v1, p0, Lorg/codehaus/jackson/a/j;->i:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/a/j;->i:I

    .line 116
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    if-eqz v1, :cond_26

    .line 117
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget-object v3, p0, Lorg/codehaus/jackson/a/j;->I:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 118
    if-lez v1, :cond_27

    .line 119
    iput v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    .line 120
    iput v1, p0, Lorg/codehaus/jackson/a/j;->f:I

    .line 121
    const/4 v0, 0x1

    .line 130
    :cond_26
    return v0

    .line 124
    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->q()V

    .line 126
    if-nez v1, :cond_26

    .line 127
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final q()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    if-eqz v0, :cond_1c

    .line 155
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 156
    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 158
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/j;->H:Ljava/io/Reader;

    .line 160
    :cond_1c
    return-void
.end method

.method protected final r()V
    .registers 3

    .prologue
    .line 172
    invoke-super {p0}, Lorg/codehaus/jackson/a/e;->r()V

    .line 173
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    .line 174
    if-eqz v0, :cond_f

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/j;->I:[C

    .line 176
    iget-object v1, p0, Lorg/codehaus/jackson/a/j;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a([C)V

    .line 178
    :cond_f
    return-void
.end method

.method protected final t()C
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1570
    iget v0, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v0, v2, :cond_12

    .line 1571
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1572
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 1575
    :cond_12
    iget-object v0, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v0, v0, v2

    .line 1577
    sparse-switch v0, :sswitch_data_66

    .line 1600
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/j;->a(C)C

    move-result v0

    .line 1618
    :goto_23
    :sswitch_23
    return v0

    .line 1580
    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    .line 1582
    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    .line 1584
    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    .line 1586
    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    .line 1588
    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    :sswitch_33
    move v0, v1

    .line 1605
    :goto_34
    const/4 v2, 0x4

    if-ge v0, v2, :cond_63

    .line 1606
    iget v2, p0, Lorg/codehaus/jackson/a/j;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/j;->f:I

    if-lt v2, v3, :cond_48

    .line 1607
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/j;->p()Z

    move-result v2

    if-nez v2, :cond_48

    .line 1608
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/j;->c(Ljava/lang/String;)V

    .line 1611
    :cond_48
    iget-object v2, p0, Lorg/codehaus/jackson/a/j;->I:[C

    iget v3, p0, Lorg/codehaus/jackson/a/j;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/j;->e:I

    aget-char v2, v2, v3

    .line 1612
    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    .line 1613
    if-gez v3, :cond_5d

    .line 1614
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/j;->b(ILjava/lang/String;)V

    .line 1616
    :cond_5d
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1605
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1618
    :cond_63
    int-to-char v0, v1

    goto :goto_23

    .line 1577
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
