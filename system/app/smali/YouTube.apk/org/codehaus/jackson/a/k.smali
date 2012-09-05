.class public final Lorg/codehaus/jackson/a/k;
.super Lorg/codehaus/jackson/a/j;
.source "SourceFile"


# instance fields
.field protected H:Lorg/codehaus/jackson/c;

.field protected final I:Lorg/codehaus/jackson/c/c;

.field protected J:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/a/j;-><init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/k;->J:Z

    .line 51
    iput-object p4, p0, Lorg/codehaus/jackson/a/k;->H:Lorg/codehaus/jackson/c;

    .line 52
    iput-object p5, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    .line 53
    return-void
.end method

.method private final A()V
    .registers 9

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x2f

    const/16 v3, 0x2a

    .line 960
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 961
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    .line 964
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_28

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-nez v0, :cond_28

    .line 965
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 967
    :cond_28
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    .line 968
    if-ne v0, v4, :cond_60

    .line 969
    :cond_34
    :goto_34
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_53

    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_34

    if-ne v0, v6, :cond_54

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->y()V

    .line 975
    :cond_53
    :goto_53
    return-void

    .line 969
    :cond_54
    if-ne v0, v7, :cond_5a

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->x()V

    goto :goto_53

    :cond_5a
    if-eq v0, v5, :cond_34

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(I)V

    goto :goto_34

    .line 970
    :cond_60
    if-ne v0, v3, :cond_b3

    .line 971
    :cond_62
    :goto_62
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_6e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_62

    if-ne v0, v3, :cond_97

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_88

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_88
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    if-ne v0, v4, :cond_62

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    goto :goto_53

    :cond_97
    const/16 v1, 0x20

    if-ge v0, v1, :cond_62

    if-ne v0, v6, :cond_a1

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->y()V

    goto :goto_62

    :cond_a1
    if-ne v0, v7, :cond_a7

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->x()V

    goto :goto_62

    :cond_a7
    if-eq v0, v5, :cond_62

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(I)V

    goto :goto_62

    :cond_ad
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    goto :goto_53

    .line 973
    :cond_b3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    goto :goto_53
.end method

.method private B()C
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1032
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v2, :cond_12

    .line 1033
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1034
    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 1037
    :cond_12
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v2

    .line 1039
    sparse-switch v0, :sswitch_data_66

    .line 1062
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(C)C

    move-result v0

    .line 1080
    :goto_23
    :sswitch_23
    return v0

    .line 1042
    :sswitch_24
    const/16 v0, 0x8

    goto :goto_23

    .line 1044
    :sswitch_27
    const/16 v0, 0x9

    goto :goto_23

    .line 1046
    :sswitch_2a
    const/16 v0, 0xa

    goto :goto_23

    .line 1048
    :sswitch_2d
    const/16 v0, 0xc

    goto :goto_23

    .line 1050
    :sswitch_30
    const/16 v0, 0xd

    goto :goto_23

    :sswitch_33
    move v0, v1

    .line 1067
    :goto_34
    const/4 v2, 0x4

    if-ge v0, v2, :cond_63

    .line 1068
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v2, v3, :cond_48

    .line 1069
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v2

    if-nez v2, :cond_48

    .line 1070
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 1073
    :cond_48
    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v2, v2, v3

    .line 1074
    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    .line 1075
    if-gez v3, :cond_5d

    .line 1076
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    .line 1078
    :cond_5d
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1080
    :cond_63
    int-to-char v0, v1

    goto :goto_23

    .line 1039
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

.method private a(III)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x5c

    .line 442
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lorg/codehaus/jackson/util/c;->a([CII)V

    .line 447
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    .line 448
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    .line 451
    :goto_18
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v2, v3, :cond_41

    .line 452
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v2

    if-nez v2, :cond_41

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": was expecting closing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 456
    :cond_41
    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v3, v2, v3

    .line 458
    if-gt v3, v5, :cond_73

    .line 459
    if-ne v3, v5, :cond_66

    .line 464
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->B()C

    move-result v2

    .line 474
    :goto_53
    mul-int/lit8 v4, p2, 0x1f

    add-int p2, v4, v3

    .line 476
    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    .line 479
    array-length v0, v1

    if-lt v3, v0, :cond_8f

    .line 480
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    .line 481
    const/4 v0, 0x0

    goto :goto_18

    .line 465
    :cond_66
    if-gt v3, p3, :cond_73

    .line 466
    if-eq v3, p3, :cond_75

    .line 467
    const/16 v2, 0x20

    if-ge v3, v2, :cond_73

    .line 470
    const-string v2, "name"

    invoke-virtual {p0, v3, v2}, Lorg/codehaus/jackson/a/k;->c(ILjava/lang/String;)V

    :cond_73
    move v2, v3

    goto :goto_53

    .line 484
    :cond_75
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    .line 486
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    .line 487
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    .line 488
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    .line 489
    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    .line 491
    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v3, v1, v2, v0, p2}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8f
    move v0, v3

    goto :goto_18
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .registers 7
    .parameter

    .prologue
    .line 860
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v1

    .line 861
    const/4 v0, 0x1

    .line 863
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_9
    if-ge v0, v2, :cond_39

    .line 864
    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v3, v4, :cond_1c

    .line 865
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 866
    const-string v3, " in a value"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 869
    :cond_1c
    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v3, v3, v4

    .line 870
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_30

    .line 871
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/k;->f(Ljava/lang/String;)V

    .line 873
    :cond_30
    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 879
    :cond_39
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v0, 0x0

    .line 404
    if-eq p1, v7, :cond_12a

    .line 405
    if-ne p1, v8, :cond_48

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-ge v1, v2, :cond_3f

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    array-length v4, v3

    :cond_1c
    iget-object v5, p0, Lorg/codehaus/jackson/a/k;->L:[C

    aget-char v5, v5, v1

    if-ne v5, v8, :cond_32

    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_31
    return-object v0

    .line 405
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
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iput v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    invoke-direct {p0, v2, v0, v8}, Lorg/codehaus/jackson/a/k;->a(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_48
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

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

    invoke-virtual {p0, p1, v1}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    :cond_70
    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-ge v1, v4, :cond_166

    move v2, v1

    move v1, v0

    :cond_78
    iget-object v6, p0, Lorg/codehaus/jackson/a/k;->L:[C

    aget-char v6, v6, v2

    if-ge v6, v3, :cond_9a

    aget v7, v5, v6

    if-eqz v7, :cond_b1

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

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

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

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
    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v3, -0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v6, p0, Lorg/codehaus/jackson/a/k;->s:I

    sub-int/2addr v6, v3

    invoke-virtual {v2, v4, v3, v6}, Lorg/codehaus/jackson/util/c;->a([CII)V

    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v3

    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v2}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v2

    array-length v6, v5

    move v9, v2

    move-object v2, v3

    move v3, v1

    move v1, v9

    :goto_d9
    iget v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v7, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v4, v7, :cond_e5

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_e5
    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v7, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v7, v4, v7

    if-gt v7, v6, :cond_10c

    aget v4, v5, v7

    if-eqz v4, :cond_112

    :cond_f1
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/c;->a(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->d()[C

    move-result-object v1

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->c()I

    move-result v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v4, v1, v2, v0, v3}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    :cond_10c
    invoke-static {v7}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v4

    if-eqz v4, :cond_f1

    :cond_112
    iget v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v7

    add-int/lit8 v4, v1, 0x1

    aput-char v7, v2, v1

    array-length v1, v2

    if-lt v4, v1, :cond_163

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v2

    move v1, v0

    goto :goto_d9

    .line 411
    :cond_12a
    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 413
    iget v2, p0, Lorg/codehaus/jackson/a/k;->t:I

    .line 415
    if-ge v1, v2, :cond_159

    .line 416
    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v3

    .line 417
    array-length v4, v3

    .line 420
    :cond_135
    iget-object v5, p0, Lorg/codehaus/jackson/a/k;->L:[C

    aget-char v5, v5, v1

    .line 421
    if-ge v5, v4, :cond_152

    aget v6, v3, v5

    if-eqz v6, :cond_152

    .line 422
    if-ne v5, v7, :cond_159

    .line 423
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 424
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 425
    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lorg/codehaus/jackson/c/c;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 429
    :cond_152
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v5

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    if-lt v1, v2, :cond_135

    .line 434
    :cond_159
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 435
    iput v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 436
    invoke-direct {p0, v2, v0, v7}, Lorg/codehaus/jackson/a/k;->a(III)Ljava/lang/String;

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

.method private w()Lorg/codehaus/jackson/JsonToken;
    .registers 8

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x27

    .line 638
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    .line 639
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    .line 642
    :goto_10
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v2, v3, :cond_21

    .line 643
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v2

    if-nez v2, :cond_21

    .line 644
    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    .line 647
    :cond_21
    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v2, v2, v3

    .line 649
    if-gt v2, v6, :cond_33

    .line 650
    if-ne v2, v6, :cond_43

    .line 655
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->B()C

    move-result v2

    .line 666
    :cond_33
    :goto_33
    array-length v3, v1

    if-lt v0, v3, :cond_59

    .line 667
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    .line 668
    const/4 v0, 0x0

    move v3, v0

    .line 671
    :goto_3e
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_10

    .line 656
    :cond_43
    if-gt v2, v5, :cond_33

    .line 657
    if-eq v2, v5, :cond_51

    .line 658
    const/16 v3, 0x20

    if-ge v2, v3, :cond_33

    .line 661
    const-string v3, "string value"

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/a/k;->c(ILjava/lang/String;)V

    goto :goto_33

    .line 673
    :cond_51
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    .line 674
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_59
    move v3, v0

    goto :goto_3e
.end method

.method private x()V
    .registers 3

    .prologue
    .line 894
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 895
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 896
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 899
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/a/k;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/k;->v:I

    .line 900
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iput v0, p0, Lorg/codehaus/jackson/a/k;->w:I

    .line 901
    return-void
.end method

.method private y()V
    .registers 2

    .prologue
    .line 905
    iget v0, p0, Lorg/codehaus/jackson/a/k;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/k;->v:I

    .line 906
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iput v0, p0, Lorg/codehaus/jackson/a/k;->w:I

    .line 907
    return-void
.end method

.method private final z()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 912
    :cond_2
    :goto_2
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 913
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    .line 914
    if-le v0, v3, :cond_23

    .line 915
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1f

    .line 916
    return v0

    .line 918
    :cond_1f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->A()V

    goto :goto_2

    .line 919
    :cond_23
    if-eq v0, v3, :cond_2

    .line 920
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2d

    .line 921
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->y()V

    goto :goto_2

    .line 922
    :cond_2d
    const/16 v1, 0xd

    if-ne v0, v1, :cond_35

    .line 923
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->x()V

    goto :goto_2

    .line 924
    :cond_35
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 925
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(I)V

    goto :goto_2

    .line 929
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 11

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x1

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_37

    .line 240
    iput-boolean v7, p0, Lorg/codehaus/jackson/a/k;->E:Z

    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->B:Lorg/codehaus/jackson/JsonToken;

    iput-object v2, p0, Lorg/codehaus/jackson/a/k;->B:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_26

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/k;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->z:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    :cond_23
    :goto_23
    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    .line 371
    :goto_25
    return-object v0

    .line 240
    :cond_26
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_23

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/k;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->z:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    goto :goto_23

    .line 242
    :cond_37
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/k;->J:Z

    if-eqz v0, :cond_72

    .line 243
    iput-boolean v7, p0, Lorg/codehaus/jackson/a/k;->J:Z

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    iget-object v4, p0, Lorg/codehaus/jackson/a/k;->L:[C

    :goto_43
    if-lt v0, v1, :cond_56

    iput v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-nez v0, :cond_52

    const-string v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    :cond_52
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    :cond_56
    add-int/lit8 v3, v0, 0x1

    aget-char v0, v4, v0

    const/16 v5, 0x5c

    if-gt v0, v5, :cond_a0

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_6c

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->B()C

    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    goto :goto_43

    :cond_6c
    if-gt v0, v9, :cond_a0

    if-ne v0, v9, :cond_97

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 245
    :cond_72
    :goto_72
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v1, :cond_7e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-eqz v0, :cond_c0

    :cond_7e
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v1

    if-le v0, v6, :cond_a6

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a2

    .line 246
    :goto_8e
    if-gez v0, :cond_c5

    .line 250
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->close()V

    .line 251
    iput-object v2, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    move-object v0, v2

    goto :goto_25

    .line 243
    :cond_97
    if-ge v0, v6, :cond_a0

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    const-string v5, "string value"

    invoke-virtual {p0, v0, v5}, Lorg/codehaus/jackson/a/k;->c(ILjava/lang/String;)V

    :cond_a0
    move v0, v3

    goto :goto_43

    .line 245
    :cond_a2
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->A()V

    goto :goto_72

    :cond_a6
    if-eq v0, v6, :cond_72

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b0

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->y()V

    goto :goto_72

    :cond_b0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_b8

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->x()V

    goto :goto_72

    :cond_b8
    const/16 v1, 0x9

    if-eq v0, v1, :cond_72

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->a(I)V

    goto :goto_72

    :cond_c0
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->s()V

    const/4 v0, -0x1

    goto :goto_8e

    .line 257
    :cond_c5
    iget-wide v3, p0, Lorg/codehaus/jackson/a/k;->u:J

    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/codehaus/jackson/a/k;->x:J

    .line 258
    iget v1, p0, Lorg/codehaus/jackson/a/k;->v:I

    iput v1, p0, Lorg/codehaus/jackson/a/k;->y:I

    .line 259
    iget v1, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->w:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/k;->z:I

    .line 262
    iput-object v2, p0, Lorg/codehaus/jackson/a/k;->G:[B

    .line 265
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_fe

    .line 266
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_f0

    .line 267
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/k;->a(IC)V

    .line 269
    :cond_f0
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    .line 270
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_25

    .line 272
    :cond_fe
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_11d

    .line 273
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_10f

    .line 274
    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/k;->a(IC)V

    .line 276
    :cond_10f
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    .line 277
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_25

    .line 281
    :cond_11d
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->i()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 282
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_14b

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting comma to separate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    .line 285
    :cond_14b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->z()I

    move-result v0

    .line 292
    :cond_14f
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    .line 293
    if-eqz v1, :cond_175

    .line 295
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/k;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/String;)V

    .line 297
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    .line 298
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->z()I

    move-result v0

    .line 299
    const/16 v3, 0x3a

    if-eq v0, v3, :cond_171

    .line 300
    const-string v3, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    .line 302
    :cond_171
    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->z()I

    move-result v0

    .line 309
    :cond_175
    sparse-switch v0, :sswitch_data_22e

    .line 362
    sparse-switch v0, :sswitch_data_27c

    :cond_17b
    :goto_17b
    const-string v3, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    move-object v0, v2

    .line 366
    :goto_181
    if-eqz v1, :cond_22a

    .line 367
    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->B:Lorg/codehaus/jackson/JsonToken;

    .line 368
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_25

    .line 311
    :sswitch_189
    iput-boolean v8, p0, Lorg/codehaus/jackson/a/k;->J:Z

    .line 312
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 315
    :sswitch_18e
    if-nez v1, :cond_19c

    .line 316
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/k;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->z:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    .line 318
    :cond_19c
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 321
    :sswitch_19f
    if-nez v1, :cond_1ad

    .line 322
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/k;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->z:I

    invoke-virtual {v0, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    .line 324
    :cond_1ad
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 330
    :sswitch_1b0
    const-string v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    .line 332
    :sswitch_1b5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 333
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 336
    :sswitch_1bd
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 337
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 340
    :sswitch_1c5
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 341
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_181

    .line 359
    :sswitch_1cd
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/k;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_181

    .line 362
    :sswitch_1d2
    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_17b

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->w()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_181

    :sswitch_1df
    const-string v3, "NaN"

    invoke-virtual {p0, v3, v8}, Lorg/codehaus/jackson/a/k;->a(Ljava/lang/String;I)Z

    sget-object v3, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/k;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1f5

    const-string v0, "NaN"

    const-wide/high16 v2, 0x7ff8

    invoke-virtual {p0, v0, v2, v3}, Lorg/codehaus/jackson/a/k;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_181

    :cond_1f5
    const-string v3, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/a/k;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v3, v3, v4

    const-string v4, "expected \'NaN\' or a valid value"

    invoke-virtual {p0, v3, v4}, Lorg/codehaus/jackson/a/k;->b(ILjava/lang/String;)V

    goto/16 :goto_17b

    :sswitch_20b
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v0, v2, :cond_21a

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v0

    if-nez v0, :cond_21a

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->u()V

    :cond_21a
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v0, v0, v2

    invoke-virtual {p0, v0, v7}, Lorg/codehaus/jackson/a/k;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_181

    .line 370
    :cond_22a
    iput-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_25

    .line 309
    :sswitch_data_22e
    .sparse-switch
        0x22 -> :sswitch_189
        0x2d -> :sswitch_1cd
        0x30 -> :sswitch_1cd
        0x31 -> :sswitch_1cd
        0x32 -> :sswitch_1cd
        0x33 -> :sswitch_1cd
        0x34 -> :sswitch_1cd
        0x35 -> :sswitch_1cd
        0x36 -> :sswitch_1cd
        0x37 -> :sswitch_1cd
        0x38 -> :sswitch_1cd
        0x39 -> :sswitch_1cd
        0x5b -> :sswitch_18e
        0x5d -> :sswitch_1b0
        0x66 -> :sswitch_1bd
        0x6e -> :sswitch_1c5
        0x74 -> :sswitch_1b5
        0x7b -> :sswitch_19f
        0x7d -> :sswitch_1b0
    .end sparse-switch

    .line 362
    :sswitch_data_27c
    .sparse-switch
        0x27 -> :sswitch_1d2
        0x2b -> :sswitch_20b
        0x4e -> :sswitch_1df
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 391
    invoke-super {p0}, Lorg/codehaus/jackson/a/j;->close()V

    .line 392
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->I:Lorg/codehaus/jackson/c/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/c;->b()V

    .line 393
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x5c

    const/4 v4, 0x0

    const/16 v7, 0x22

    .line 81
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->b:Lorg/codehaus/jackson/JsonToken;

    .line 82
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_a5

    .line 83
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/k;->J:Z

    if-eqz v0, :cond_39

    .line 84
    iput-boolean v4, p0, Lorg/codehaus/jackson/a/k;->J:Z

    .line 85
    iget v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-ge v0, v1, :cond_44

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v2

    array-length v3, v2

    :cond_1c
    iget-object v5, p0, Lorg/codehaus/jackson/a/k;->L:[C

    aget-char v5, v5, v0

    if-ge v5, v3, :cond_40

    aget v6, v2, v5

    if-eqz v6, :cond_40

    if-ne v5, v7, :cond_44

    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/k;->s:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/util/c;->a([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    .line 87
    :cond_39
    :goto_39
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_3f
    return-object v0

    .line 85
    :cond_40
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1c

    :cond_44
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/k;->s:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v3, v5}, Lorg/codehaus/jackson/util/c;->b([CII)V

    iput v0, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->h()[C

    move-result-object v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->j()I

    move-result v0

    :goto_5f
    iget v2, p0, Lorg/codehaus/jackson/a/k;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/k;->t:I

    if-lt v2, v3, :cond_70

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/k;->p()Z

    move-result v2

    if-nez v2, :cond_70

    const-string v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/k;->c(Ljava/lang/String;)V

    :cond_70
    iget-object v2, p0, Lorg/codehaus/jackson/a/k;->L:[C

    iget v3, p0, Lorg/codehaus/jackson/a/k;->s:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/k;->s:I

    aget-char v2, v2, v3

    if-gt v2, v8, :cond_82

    if-ne v2, v8, :cond_91

    invoke-direct {p0}, Lorg/codehaus/jackson/a/k;->B()C

    move-result v2

    :cond_82
    :goto_82
    array-length v3, v1

    if-lt v0, v3, :cond_c8

    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

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

    invoke-virtual {p0, v2, v3}, Lorg/codehaus/jackson/a/k;->c(ILjava/lang/String;)V

    goto :goto_82

    :cond_9f
    iget-object v1, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    goto :goto_39

    .line 89
    :cond_a5
    if-nez v0, :cond_a9

    const/4 v0, 0x0

    goto :goto_3f

    :cond_a9
    sget-object v1, Lorg/codehaus/jackson/a/l;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_ca

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_b9
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :pswitch_c0
    iget-object v0, p0, Lorg/codehaus/jackson/a/k;->C:Lorg/codehaus/jackson/util/c;

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
