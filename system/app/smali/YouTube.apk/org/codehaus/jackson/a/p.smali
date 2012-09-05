.class public final Lorg/codehaus/jackson/a/p;
.super Lorg/codehaus/jackson/a/n;
.source "SourceFile"


# static fields
.field private static final O:[I

.field private static final P:[I


# instance fields
.field protected K:Lorg/codehaus/jackson/c;

.field protected final L:Lorg/codehaus/jackson/c/a;

.field protected M:[I

.field protected N:Z

.field private Q:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lorg/codehaus/jackson/util/b;->b()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/p;->O:[I

    .line 25
    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/p;->P:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/InputStream;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/a;[BIIZ)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 79
    invoke-direct/range {v0 .. v7}, Lorg/codehaus/jackson/a/n;-><init>(Lorg/codehaus/jackson/b/c;ILjava/io/InputStream;[BIIZ)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/p;->N:Z

    .line 80
    iput-object p4, p0, Lorg/codehaus/jackson/a/p;->K:Lorg/codehaus/jackson/c;

    .line 81
    iput-object p5, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    .line 83
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 85
    invoke-static {}, Lorg/codehaus/jackson/a/p;->v()V

    .line 87
    :cond_25
    return-void
.end method

.method private A()V
    .registers 2

    .prologue
    .line 2204
    iget v0, p0, Lorg/codehaus/jackson/a/p;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->v:I

    .line 2205
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iput v0, p0, Lorg/codehaus/jackson/a/p;->w:I

    .line 2206
    return-void
.end method

.method private B()I
    .registers 4

    .prologue
    .line 2211
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_9

    .line 2212
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2214
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private a(IZ)Lorg/codehaus/jackson/JsonToken;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const-wide/high16 v3, 0x7ff0

    const-wide/high16 v1, -0x10

    .line 1684
    const/16 v0, 0x49

    if-ne p1, v0, :cond_5d

    .line 1685
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v5, :cond_18

    .line 1686
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1687
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->u()V

    .line 1690
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte p1, v0, v5

    .line 1691
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_64

    .line 1692
    if-eqz p2, :cond_3c

    const-string v0, "-INF"

    .line 1693
    :goto_2a
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;I)Z

    .line 1694
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1695
    if-eqz p2, :cond_3f

    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1710
    :goto_3b
    return-object v0

    .line 1692
    :cond_3c
    const-string v0, "+INF"

    goto :goto_2a

    :cond_3f
    move-wide v1, v3

    .line 1695
    goto :goto_37

    .line 1697
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    .line 1709
    :cond_5d
    :goto_5d
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/p;->a(ILjava/lang/String;)V

    .line 1710
    const/4 v0, 0x0

    goto :goto_3b

    .line 1699
    :cond_64
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_5d

    .line 1700
    if-eqz p2, :cond_7e

    const-string v0, "-Infinity"

    .line 1701
    :goto_6c
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;I)Z

    .line 1702
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 1703
    if-eqz p2, :cond_81

    :goto_79
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3b

    .line 1700
    :cond_7e
    const-string v0, "+Infinity"

    goto :goto_6c

    :cond_81
    move-wide v1, v3

    .line 1703
    goto :goto_79

    .line 1705
    :cond_83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method private final a([CIIZI)Lorg/codehaus/jackson/JsonToken;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    const/4 v4, 0x0

    .line 624
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_109

    .line 625
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 629
    :goto_b
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v2, v3, :cond_c0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 630
    const/4 v4, 0x1

    .line 645
    :cond_18
    if-nez v0, :cond_1f

    .line 646
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lorg/codehaus/jackson/a/p;->a(ILjava/lang/String;)V

    :cond_1f
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 650
    :goto_22
    const/4 v3, 0x0

    .line 651
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2b

    const/16 v2, 0x45

    if-ne p3, v2, :cond_103

    .line 652
    :cond_2b
    array-length v2, v1

    if-lt v0, v2, :cond_35

    .line 653
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    .line 654
    const/4 v0, 0x0

    .line 656
    :cond_35
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 658
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v5, :cond_43

    .line 659
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 661
    :cond_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 663
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_57

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_ff

    .line 664
    :cond_57
    array-length v0, v1

    if-lt v2, v0, :cond_fc

    .line 665
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    .line 666
    const/4 v0, 0x0

    .line 668
    :goto_61
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 670
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v5, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v5, :cond_6f

    .line 671
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 673
    :cond_6f
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 677
    :goto_7e
    const/16 v3, 0x39

    if-gt v5, v3, :cond_f7

    const/16 v3, 0x30

    if-lt v5, v3, :cond_f7

    .line 678
    add-int/lit8 v2, v2, 0x1

    .line 679
    array-length v3, v1

    if-lt v0, v3, :cond_92

    .line 680
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    .line 681
    const/4 v0, 0x0

    .line 683
    :cond_92
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 684
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v7, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v7, :cond_e8

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 685
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 691
    :goto_a7
    if-nez v0, :cond_ae

    .line 692
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/a/p;->a(ILjava/lang/String;)V

    .line 697
    :cond_ae
    :goto_ae
    if-nez v1, :cond_b6

    .line 698
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 700
    :cond_b6
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    .line 703
    invoke-virtual {p0, p4, p5, v6, v0}, Lorg/codehaus/jackson/a/p;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 633
    :cond_c0
    iget-object v2, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 634
    const/16 v2, 0x30

    if-lt p3, v2, :cond_18

    const/16 v2, 0x39

    if-gt p3, v2, :cond_18

    .line 635
    add-int/lit8 v0, v0, 0x1

    .line 638
    array-length v2, p1

    if-lt v1, v2, :cond_107

    .line 639
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object p1

    .line 640
    const/4 v1, 0x0

    move v2, v1

    .line 642
    :goto_e1
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_b

    .line 688
    :cond_e8
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_7e

    :cond_f7
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_a7

    :cond_fc
    move v0, v2

    goto/16 :goto_61

    :cond_ff
    move v0, v2

    move v2, v3

    goto/16 :goto_7e

    :cond_103
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_ae

    :cond_107
    move v2, v1

    goto :goto_e1

    :cond_109
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_22
.end method

.method private final a(II)Lorg/codehaus/jackson/c/e;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/c/a;->a(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1207
    if-eqz v0, :cond_9

    .line 1212
    :goto_8
    return-object v0

    .line 1211
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1212
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_8
.end method

.method private final a(III)Lorg/codehaus/jackson/c/e;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lorg/codehaus/jackson/c/e;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 906
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lorg/codehaus/jackson/c/e;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1257
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1266
    const/4 v0, 0x4

    if-ge p3, v0, :cond_da

    .line 1267
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1269
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1275
    :goto_17
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    .line 1276
    const/4 v5, 0x0

    .line 1278
    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v6, :cond_100

    .line 1279
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1280
    and-int/lit8 v4, v3, 0x3

    .line 1281
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1282
    add-int/lit8 v3, v3, 0x1

    .line 1284
    const/16 v4, 0x7f

    if-le v2, v4, :cond_114

    .line 1286
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_dd

    .line 1287
    and-int/lit8 v4, v2, 0x1f

    .line 1288
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1299
    :goto_41
    add-int v7, v3, v4

    if-le v7, v6, :cond_4a

    .line 1300
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1304
    :cond_4a
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1305
    and-int/lit8 v8, v3, 0x3

    .line 1306
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1307
    add-int/lit8 v3, v3, 0x1

    .line 1309
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_60

    .line 1310
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 1312
    :cond_60
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1313
    const/4 v7, 0x1

    if-le v4, v7, :cond_a3

    .line 1314
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1315
    and-int/lit8 v8, v3, 0x3

    .line 1316
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1317
    add-int/lit8 v3, v3, 0x1

    .line 1319
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7e

    .line 1320
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 1322
    :cond_7e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1323
    const/4 v7, 0x2

    if-le v4, v7, :cond_a3

    .line 1324
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1325
    and-int/lit8 v8, v3, 0x3

    .line 1326
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1327
    add-int/lit8 v3, v3, 0x1

    .line 1328
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9e

    .line 1329
    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 1331
    :cond_9e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1334
    :cond_a3
    const/4 v7, 0x2

    if-le v4, v7, :cond_114

    .line 1335
    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    .line 1336
    array-length v4, v1

    if-lt v5, v4, :cond_b2

    .line 1337
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->l()[C

    move-result-object v1

    .line 1339
    :cond_b2
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 1340
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 1343
    :goto_c8
    array-length v5, v4

    if-lt v3, v5, :cond_d1

    .line 1344
    iget-object v4, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/c;->l()[C

    move-result-object v4

    .line 1346
    :cond_d1
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 1347
    goto/16 :goto_20

    .line 1271
    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 1289
    :cond_dd
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_eb

    .line 1290
    and-int/lit8 v4, v2, 0xf

    .line 1291
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 1292
    :cond_eb
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_f9

    .line 1293
    and-int/lit8 v4, v2, 0x7

    .line 1294
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 1296
    :cond_f9
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->m(I)V

    .line 1297
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_41

    .line 1350
    :cond_100
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1352
    const/4 v1, 0x4

    if-ge p3, v1, :cond_10d

    .line 1353
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 1355
    :cond_10d
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/c/a;->a(Ljava/lang/String;[II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    return-object v0

    :cond_114
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_c8
.end method

.method private final a([IIII)Lorg/codehaus/jackson/c/e;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    array-length v0, p1

    if-lt p2, v0, :cond_a

    .line 1233
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 1235
    :cond_a
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1236
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1237
    if-nez v0, :cond_1a

    .line 1238
    invoke-direct {p0, p1, v1, p4}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1240
    :cond_1a
    return-object v0
.end method

.method private a([IIIII)Lorg/codehaus/jackson/c/e;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 925
    sget-object v5, Lorg/codehaus/jackson/a/p;->P:[I

    .line 928
    :goto_4
    aget v0, v5, p4

    if-eqz v0, :cond_d6

    .line 929
    const/16 v0, 0x22

    if-eq p4, v0, :cond_ae

    .line 930
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6b

    .line 935
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lorg/codehaus/jackson/a/p;->c(ILjava/lang/String;)V

    .line 945
    :goto_15
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d6

    .line 947
    if-lt p5, v7, :cond_d2

    .line 948
    array-length v0, p1

    if-lt p2, v0, :cond_25

    .line 949
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 951
    :cond_25
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 955
    :goto_2c
    const/16 v2, 0x800

    if-ge p4, v2, :cond_70

    .line 956
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 957
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 975
    :goto_3d
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 979
    :goto_45
    if-ge p5, v7, :cond_9c

    .line 980
    add-int/lit8 p5, p5, 0x1

    .line 981
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 990
    :goto_4d
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v2, :cond_5e

    .line 991
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 992
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 995
    :cond_5e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_4

    .line 938
    :cond_6b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->y()C

    move-result p4

    goto :goto_15

    .line 960
    :cond_70
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 961
    add-int/lit8 v2, p5, 0x1

    .line 963
    if-lt v2, v7, :cond_cc

    .line 964
    array-length v2, v0

    if-lt v4, v2, :cond_85

    .line 965
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 967
    :cond_85
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 971
    :goto_8d
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 972
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3d

    .line 983
    :cond_9c
    array-length v2, v0

    if-lt p2, v2, :cond_a6

    .line 984
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 986
    :cond_a6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 988
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_4d

    .line 998
    :cond_ae
    if-lez p5, :cond_bf

    .line 999
    array-length v0, p1

    if-lt p2, v0, :cond_ba

    .line 1000
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 1002
    :cond_ba
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1004
    :cond_bf
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1005
    if-nez v0, :cond_cb

    .line 1006
    invoke-direct {p0, p1, p2, p5}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1008
    :cond_cb
    return-object v0

    :cond_cc
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_8d

    :cond_d2
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2c

    :cond_d6
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto/16 :goto_45
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1776
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1777
    :cond_11
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 1780
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->g(I)I

    move-result v1

    int-to-char v1, v1

    .line 1781
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1782
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 1785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1787
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .registers 8
    .parameter

    .prologue
    .line 1717
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asByteArray()[B

    move-result-object v1

    .line 1718
    const/4 v0, 0x1

    .line 1720
    array-length v2, v1

    :goto_6
    if-ge v0, v2, :cond_32

    .line 1721
    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v3, v4, :cond_11

    .line 1722
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 1724
    :cond_11
    aget-byte v3, v1, v0

    iget-object v4, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_29

    .line 1725
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'null\', \'true\' or \'false\'"

    invoke-direct {p0, v3, v4}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_29
    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 1720
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1733
    :cond_32
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1738
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1741
    :cond_6
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_17

    .line 1742
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1743
    const-string v1, " in a value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1746
    :cond_17
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2c

    .line 1747
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_2c
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 1750
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_6

    .line 1753
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_43

    .line 1754
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_43

    .line 1764
    :cond_42
    :goto_42
    return v4

    .line 1758
    :cond_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->g(I)I

    move-result v0

    int-to-char v0, v0

    .line 1760
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1761
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 1762
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private static a([II)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2254
    if-nez p0, :cond_6

    .line 2255
    new-array v0, p1, [I

    .line 2261
    :goto_5
    return-object v0

    .line 2258
    :cond_6
    array-length v1, p0

    .line 2259
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 2260
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method private final b(III)Lorg/codehaus/jackson/c/e;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1219
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/c/a;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1220
    if-eqz v0, :cond_9

    .line 1226
    :goto_8
    return-object v0

    .line 1224
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1225
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1226
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_8
.end method

.method private b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2248
    iput p2, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 2249
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 2250
    return-void
.end method

.method private c(I)Lorg/codehaus/jackson/JsonToken;
    .registers 13
    .parameter

    .prologue
    const/16 v2, 0x2d

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v10, 0x39

    const/16 v6, 0x30

    .line 486
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    .line 488
    if-ne p1, v2, :cond_33

    move v4, v5

    .line 491
    :goto_11
    if-eqz v4, :cond_13b

    .line 492
    aput-char v2, v1, v8

    .line 494
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v2, :cond_1e

    .line 495
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 497
    :cond_1e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 499
    if-lt v0, v6, :cond_2e

    if-le v0, v10, :cond_35

    .line 500
    :cond_2e
    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/a/p;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 540
    :goto_32
    return-object v0

    :cond_33
    move v4, v8

    .line 488
    goto :goto_11

    :cond_35
    move v3, v5

    .line 505
    :goto_36
    if-ne v0, v6, :cond_45

    .line 506
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v2, :cond_6e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_6e

    move v0, v6

    .line 510
    :cond_45
    :goto_45
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 514
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 515
    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-le v0, v3, :cond_54

    .line 516
    iget v0, p0, Lorg/codehaus/jackson/a/p;->t:I

    .line 521
    :cond_54
    :goto_54
    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-lt v3, v0, :cond_fb

    .line 523
    :goto_58
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v3, :cond_b4

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/p;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_32

    .line 506
    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v6, :cond_7a

    if-le v0, v10, :cond_7c

    :cond_7a
    move v0, v6

    goto :goto_45

    :cond_7c
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_89

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/p;->b(Ljava/lang/String;)V

    :cond_89
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-ne v0, v6, :cond_45

    :cond_91
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v7, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v2, v7, :cond_9d

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_9d
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v6, :cond_a9

    if-le v0, v10, :cond_ab

    :cond_a9
    move v0, v6

    goto :goto_45

    :cond_ab
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-eq v0, v6, :cond_91

    goto :goto_45

    .line 523
    :cond_b4
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    if-gt v3, v10, :cond_c4

    if-ge v3, v6, :cond_d7

    :cond_c4
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_d0

    const/16 v0, 0x65

    if-eq v3, v0, :cond_d0

    const/16 v0, 0x45

    if-ne v3, v0, :cond_ea

    :cond_d0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    :cond_d7
    array-length v0, v1

    if-lt v2, v0, :cond_139

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v0, v8

    :goto_e1
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_58

    :cond_ea
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/p;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    .line 525
    :cond_fb
    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    .line 526
    if-lt v3, v6, :cond_115

    if-gt v3, v10, :cond_115

    .line 527
    add-int/lit8 v5, v5, 0x1

    .line 530
    add-int/lit8 v7, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v7

    goto/16 :goto_54

    .line 532
    :cond_115
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_121

    const/16 v0, 0x65

    if-eq v3, v0, :cond_121

    const/16 v0, 0x45

    if-ne v3, v0, :cond_128

    :cond_121
    move-object v0, p0

    .line 533
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    .line 536
    :cond_128
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 537
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    .line 540
    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/p;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    :cond_139
    move v0, v2

    goto :goto_e1

    :cond_13b
    move v3, v8

    move v0, p1

    goto/16 :goto_36
.end method

.method private d(I)Lorg/codehaus/jackson/c/e;
    .registers 14
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    .line 819
    sget-object v1, Lorg/codehaus/jackson/a/p;->P:[I

    move v2, v5

    move v4, p1

    .line 827
    :goto_a
    iget v0, p0, Lorg/codehaus/jackson/a/p;->t:I

    iget v6, p0, Lorg/codehaus/jackson/a/p;->s:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_1a

    .line 828
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 864
    :goto_19
    return-object v0

    .line 832
    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v6, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 833
    aget v0, v1, v9

    if-eqz v0, :cond_3d

    .line 834
    if-ne v9, v8, :cond_33

    .line 835
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lorg/codehaus/jackson/a/p;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 837
    :cond_33
    iget-object v6, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 840
    :cond_3d
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 841
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 842
    aget v0, v1, v4

    if-eqz v0, :cond_63

    .line 843
    if-ne v4, v8, :cond_5a

    .line 844
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lorg/codehaus/jackson/a/p;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 846
    :cond_5a
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 849
    :cond_63
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 850
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 851
    aget v0, v1, v4

    if-eqz v0, :cond_8b

    .line 852
    if-ne v4, v8, :cond_81

    .line 853
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lorg/codehaus/jackson/a/p;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 855
    :cond_81
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 858
    :cond_8b
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 859
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 860
    aget v0, v1, v4

    if-eqz v0, :cond_b4

    .line 861
    if-ne v4, v8, :cond_a9

    .line 862
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lorg/codehaus/jackson/a/p;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_19

    .line 864
    :cond_a9
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_19

    .line 868
    :cond_b4
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    array-length v0, v0

    if-lt v2, v0, :cond_c1

    .line 869
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 871
    :cond_c1
    iget-object v7, p0, Lorg/codehaus/jackson/a/p;->M:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 873
    goto/16 :goto_a
.end method

.method private e(I)Lorg/codehaus/jackson/c/e;
    .registers 15
    .parameter

    .prologue
    const/4 v5, 0x1

    const/16 v11, 0x27

    const/4 v10, 0x4

    const/4 v1, 0x0

    .line 1021
    if-ne p1, v11, :cond_113

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1022
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v2, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 v6, v0, 0xff

    if-ne v6, v11, :cond_33

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1082
    :goto_32
    return-object v0

    .line 1022
    :cond_33
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    sget-object v7, Lorg/codehaus/jackson/a/p;->P:[I

    move v3, v1

    move v4, v1

    move v2, v1

    :goto_3a
    if-eq v6, v11, :cond_f2

    const/16 v8, 0x22

    if-eq v6, v8, :cond_1b1

    aget v8, v7, v6

    if-eqz v8, :cond_1b1

    const/16 v8, 0x5c

    if-eq v6, v8, :cond_ad

    const-string v8, "name"

    invoke-virtual {p0, v6, v8}, Lorg/codehaus/jackson/a/p;->c(ILjava/lang/String;)V

    :goto_4d
    const/16 v8, 0x7f

    if-le v6, v8, :cond_1b1

    if-lt v3, v10, :cond_1ab

    array-length v3, v0

    if-lt v2, v3, :cond_5d

    array-length v3, v0

    invoke-static {v0, v3}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    :cond_5d
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    :goto_64
    const/16 v8, 0x800

    if-ge v6, v8, :cond_b2

    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    or-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move-object v3, v0

    move v0, v12

    :goto_75
    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    move v12, v0

    move-object v0, v3

    move v3, v6

    move v6, v2

    move v2, v12

    :goto_7e
    if-ge v2, v10, :cond_de

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    move v12, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v12

    :goto_8a
    iget v6, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v8, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v6, v8, :cond_9b

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, " in field name"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    :cond_9b
    iget-object v6, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v8, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    move v12, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v12

    goto :goto_3a

    :cond_ad
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->y()C

    move-result v6

    goto :goto_4d

    :cond_b2
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    or-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v10, :cond_1a4

    array-length v2, v0

    if-lt v4, v2, :cond_c7

    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    :cond_c7
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_cf
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    or-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    move v12, v3

    move-object v3, v4

    move v4, v12

    goto :goto_75

    :cond_de
    array-length v2, v0

    if-lt v4, v2, :cond_e8

    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    :cond_e8
    add-int/lit8 v2, v4, 0x1

    aput v6, v0, v4

    move-object v4, v0

    move v0, v5

    move v12, v2

    move v2, v3

    move v3, v12

    goto :goto_8a

    :cond_f2
    if-lez v3, :cond_1a0

    array-length v1, v0

    if-lt v2, v1, :cond_fe

    array-length v1, v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    :cond_fe
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_105
    iget-object v2, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v2

    if-nez v2, :cond_19d

    invoke-direct {p0, v1, v0, v3}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_32

    .line 1025
    :cond_113
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_120

    .line 1026
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 1032
    :cond_120
    invoke-static {}, Lorg/codehaus/jackson/util/b;->d()[I

    move-result-object v6

    .line 1034
    aget v0, v6, p1

    if-eqz v0, :cond_12d

    .line 1035
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 1042
    :cond_12d
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move v4, v1

    move v3, v1

    move v2, p1

    .line 1049
    :goto_132
    if-ge v1, v10, :cond_167

    .line 1050
    add-int/lit8 v1, v1, 0x1

    .line 1051
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    move v12, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v12

    .line 1060
    :goto_13e
    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v7, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v4, v7, :cond_14f

    .line 1061
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v4

    if-nez v4, :cond_14f

    .line 1062
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1065
    :cond_14f
    iget-object v4, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v7, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v4, v7

    and-int/lit16 p1, v4, 0xff

    .line 1066
    aget v4, v6, p1

    if-nez v4, :cond_17b

    .line 1067
    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    move v4, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_132

    .line 1053
    :cond_167
    array-length v1, v0

    if-lt v3, v1, :cond_171

    .line 1054
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 1056
    :cond_171
    add-int/lit8 v1, v3, 0x1

    aput v4, v0, v3

    move-object v3, v0

    move v0, v5

    move v12, v1

    move v1, v2

    move v2, v12

    .line 1058
    goto :goto_13e

    .line 1072
    :cond_17b
    if-lez v0, :cond_18c

    .line 1073
    array-length v4, v3

    if-lt v2, v4, :cond_187

    .line 1074
    array-length v4, v3

    invoke-static {v3, v4}, Lorg/codehaus/jackson/a/p;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/a/p;->M:[I

    .line 1076
    :cond_187
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1078
    :cond_18c
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v1, v3, v2}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v1

    .line 1079
    if-nez v1, :cond_19a

    .line 1080
    invoke-direct {p0, v3, v2, v0}, Lorg/codehaus/jackson/a/p;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_32

    :cond_19a
    move-object v0, v1

    goto/16 :goto_32

    :cond_19d
    move-object v0, v2

    goto/16 :goto_32

    :cond_1a0
    move-object v1, v0

    move v0, v2

    goto/16 :goto_105

    :cond_1a4
    move v12, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v12

    goto/16 :goto_cf

    :cond_1ab
    move v12, v3

    move v3, v4

    move v4, v2

    move v2, v12

    goto/16 :goto_64

    :cond_1b1
    move v12, v3

    move v3, v6

    move v6, v4

    move v4, v2

    move v2, v12

    goto/16 :goto_7e
.end method

.method private f(I)Lorg/codehaus/jackson/JsonToken;
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0x27

    const/4 v2, 0x0

    .line 1557
    sparse-switch p1, :sswitch_data_11e

    .line 1581
    :cond_6
    :goto_6
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 1582
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 1559
    :sswitch_d
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1560
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v0

    sget-object v6, Lorg/codehaus/jackson/a/p;->O:[I

    iget-object v7, p0, Lorg/codehaus/jackson/a/p;->I:[B

    move v1, v2

    :cond_20
    :goto_20
    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v3, v4, :cond_29

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_29
    array-length v3, v0

    if-lt v1, v3, :cond_33

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v1, v2

    :cond_33
    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_11a

    :goto_3c
    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-ge v4, v3, :cond_20

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    if-eq v5, v9, :cond_57

    aget v4, v6, v5

    if-nez v4, :cond_57

    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_3c

    :cond_57
    if-eq v5, v9, :cond_bb

    aget v3, v6, v5

    packed-switch v3, :pswitch_data_12c

    const/16 v3, 0x20

    if-ge v5, v3, :cond_67

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/a/p;->c(ILjava/lang/String;)V

    :cond_67
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/p;->l(I)V

    :cond_6a
    move v3, v5

    :goto_6b
    array-length v4, v0

    if-lt v1, v4, :cond_115

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v4, v2

    :goto_75
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_20

    :pswitch_7b
    const/16 v3, 0x22

    if-eq v5, v3, :cond_6a

    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->y()C

    move-result v3

    goto :goto_6b

    :pswitch_84
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/p;->h(I)I

    move-result v3

    goto :goto_6b

    :pswitch_89
    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_96

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/p;->j(I)I

    move-result v3

    goto :goto_6b

    :cond_96
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/p;->i(I)I

    move-result v3

    goto :goto_6b

    :pswitch_9b
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/p;->k(I)I

    move-result v4

    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    array-length v1, v0

    if-lt v3, v1, :cond_118

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v1, v2

    :goto_b4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    goto :goto_6b

    :cond_bb
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/c;->a(I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_c

    .line 1564
    :sswitch_c4
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;I)Z

    .line 1565
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1566
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_c

    .line 1568
    :cond_dc
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const-string v1, "expected \'NaN\' or a valid value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 1573
    :sswitch_f4
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_103

    .line 1574
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_103

    .line 1575
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->u()V

    .line 1578
    :cond_103
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/a/p;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_c

    :cond_115
    move v4, v1

    goto/16 :goto_75

    :cond_118
    move v1, v3

    goto :goto_b4

    :cond_11a
    move v3, v4

    goto/16 :goto_3c

    .line 1557
    nop

    :sswitch_data_11e
    .sparse-switch
        0x27 -> :sswitch_d
        0x2b -> :sswitch_f4
        0x4e -> :sswitch_c4
    .end sparse-switch

    .line 1560
    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_84
        :pswitch_89
        :pswitch_9b
    .end packed-switch
.end method

.method private g(I)I
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    .line 1981
    if-gez p1, :cond_4c

    .line 1985
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4d

    .line 1986
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2000
    :goto_f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->B()I

    move-result v3

    .line 2001
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_1c

    .line 2002
    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 2004
    :cond_1c
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2006
    if-le v0, v1, :cond_4c

    .line 2007
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->B()I

    move-result v1

    .line 2008
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    .line 2009
    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 2011
    :cond_31
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2012
    if-le v0, v2, :cond_4c

    .line 2013
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->B()I

    move-result v0

    .line 2014
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_46

    .line 2015
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->n(I)V

    .line 2017
    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2021
    :cond_4c
    return p1

    .line 1988
    :cond_4d
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_57

    .line 1989
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 1990
    goto :goto_f

    .line 1991
    :cond_57
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_61

    .line 1993
    and-int/lit8 p1, p1, 0x7

    .line 1994
    const/4 v0, 0x3

    goto :goto_f

    .line 1996
    :cond_61
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->m(I)V

    move v0, v1

    .line 1997
    goto :goto_f
.end method

.method private final h(I)I
    .registers 5
    .parameter

    .prologue
    .line 2033
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_9

    .line 2034
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2036
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    .line 2037
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    .line 2038
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2040
    :cond_20
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final i(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2046
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_b

    .line 2047
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2049
    :cond_b
    and-int/lit8 v0, p1, 0xf

    .line 2050
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2051
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_22

    .line 2052
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2054
    :cond_22
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2055
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_30

    .line 2056
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2058
    :cond_30
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2059
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 2060
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2062
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2063
    return v0
.end method

.method private final j(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2069
    and-int/lit8 v0, p1, 0xf

    .line 2070
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2071
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_19

    .line 2072
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2074
    :cond_19
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2075
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2076
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_33

    .line 2077
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2079
    :cond_33
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2080
    return v0
.end method

.method private final k(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2090
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_b

    .line 2091
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2093
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    .line 2094
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    .line 2095
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2097
    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2099
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_30

    .line 2100
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2102
    :cond_30
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2103
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 2104
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2106
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2107
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_53

    .line 2108
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    .line 2110
    :cond_53
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 2111
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_68

    .line 2112
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    .line 2118
    :cond_68
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private l(I)V
    .registers 3
    .parameter

    .prologue
    .line 2227
    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    .line 2228
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/a/p;->a(I)V

    .line 2230
    :cond_7
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/p;->m(I)V

    .line 2231
    return-void
.end method

.method private m(I)V
    .registers 4
    .parameter

    .prologue
    .line 2236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    .line 2237
    return-void
.end method

.method private n(I)V
    .registers 4
    .parameter

    .prologue
    .line 2242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->d(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method private final w()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 1799
    :cond_2
    :goto_2
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1800
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1801
    if-le v0, v3, :cond_25

    .line 1802
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    .line 1803
    return v0

    .line 1805
    :cond_21
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->x()V

    goto :goto_2

    .line 1806
    :cond_25
    if-eq v0, v3, :cond_2

    .line 1807
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    .line 1808
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->A()V

    goto :goto_2

    .line 1809
    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    .line 1810
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->z()V

    goto :goto_2

    .line 1811
    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 1812
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(I)V

    goto :goto_2

    .line 1816
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final x()V
    .registers 6

    .prologue
    const/16 v4, 0x2f

    .line 1847
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1848
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 1851
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1852
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1854
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1855
    if-ne v0, v4, :cond_5d

    .line 1856
    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_32
    :goto_32
    :sswitch_32
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_3e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_3e
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_32

    sparse-switch v2, :sswitch_data_ac

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->l(I)V

    goto :goto_32

    :sswitch_55
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->A()V

    .line 1862
    :cond_58
    :goto_58
    return-void

    .line 1856
    :sswitch_59
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->z()V

    goto :goto_58

    .line 1857
    :cond_5d
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_a5

    .line 1858
    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_65
    :goto_65
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_71

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v1

    if-eqz v1, :cond_9f

    :cond_71
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_65

    sparse-switch v2, :sswitch_data_ba

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->l(I)V

    goto :goto_65

    :sswitch_88
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_65

    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    goto :goto_58

    :sswitch_97
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->A()V

    goto :goto_65

    :sswitch_9b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->z()V

    goto :goto_65

    :cond_9f
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    goto :goto_58

    .line 1860
    :cond_a5
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    goto :goto_58

    .line 1856
    nop

    :sswitch_data_ac
    .sparse-switch
        0xa -> :sswitch_55
        0xd -> :sswitch_59
        0x2a -> :sswitch_32
    .end sparse-switch

    .line 1858
    :sswitch_data_ba
    .sparse-switch
        0xa -> :sswitch_97
        0xd -> :sswitch_9b
        0x2a -> :sswitch_88
    .end sparse-switch
.end method

.method private y()C
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1926
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v2, :cond_12

    .line 1927
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1928
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1931
    :cond_12
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v1, v1, v2

    .line 1933
    sparse-switch v1, :sswitch_data_6c

    .line 1956
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(C)C

    move-result v0

    .line 1974
    :goto_28
    return v0

    .line 1936
    :sswitch_29
    const/16 v0, 0x8

    goto :goto_28

    .line 1938
    :sswitch_2c
    const/16 v0, 0x9

    goto :goto_28

    .line 1940
    :sswitch_2f
    const/16 v0, 0xa

    goto :goto_28

    .line 1942
    :sswitch_32
    const/16 v0, 0xc

    goto :goto_28

    .line 1944
    :sswitch_35
    const/16 v0, 0xd

    goto :goto_28

    .line 1950
    :sswitch_38
    int-to-char v0, v1

    goto :goto_28

    :sswitch_3a
    move v1, v0

    .line 1961
    :goto_3b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6a

    .line 1962
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v2, v3, :cond_4f

    .line 1963
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1964
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    .line 1967
    :cond_4f
    iget-object v2, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v2, v2, v3

    .line 1968
    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    .line 1969
    if-gez v3, :cond_64

    .line 1970
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 1972
    :cond_64
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1974
    :cond_6a
    int-to-char v0, v1

    goto :goto_28

    .line 1933
    :sswitch_data_6c
    .sparse-switch
        0x22 -> :sswitch_38
        0x2f -> :sswitch_38
        0x5c -> :sswitch_38
        0x62 -> :sswitch_29
        0x66 -> :sswitch_32
        0x6e -> :sswitch_2f
        0x72 -> :sswitch_35
        0x74 -> :sswitch_2c
        0x75 -> :sswitch_3a
    .end sparse-switch
.end method

.method private z()V
    .registers 3

    .prologue
    .line 2193
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2194
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 2195
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    .line 2198
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/a/p;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/p;->v:I

    .line 2199
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iput v0, p0, Lorg/codehaus/jackson/a/p;->w:I

    .line 2200
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x22

    .line 267
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_38

    .line 268
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/p;->E:Z

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->B:Lorg/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/p;->B:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_27

    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/p;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->z:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    :cond_24
    :goto_24
    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    .line 388
    :goto_26
    return-object v0

    .line 268
    :cond_27
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_24

    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/p;->y:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->z:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    goto :goto_24

    .line 270
    :cond_38
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/p;->N:Z

    if-eqz v0, :cond_12c

    .line 271
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/p;->N:Z

    sget-object v4, Lorg/codehaus/jackson/a/p;->O:[I

    iget-object v5, p0, Lorg/codehaus/jackson/a/p;->I:[B

    :cond_42
    :goto_42
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v0, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v0, :cond_4f

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v0, p0, Lorg/codehaus/jackson/a/p;->t:I

    :cond_4f
    :goto_4f
    if-ge v1, v0, :cond_6e

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v4, v1

    if-eqz v6, :cond_450

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-eq v1, v7, :cond_12c

    aget v0, v4, v1

    packed-switch v0, :pswitch_data_454

    const/16 v0, 0x20

    if-ge v1, v0, :cond_124

    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/p;->c(ILjava/lang/String;)V

    goto :goto_42

    :cond_6e
    iput v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    goto :goto_42

    :pswitch_71
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->y()C

    goto :goto_42

    :pswitch_75
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_7e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_7e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(II)V

    goto :goto_42

    :pswitch_94
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_9d

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_9d
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_b2

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(II)V

    :cond_b2
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_bb

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_bb
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(II)V

    goto/16 :goto_42

    :pswitch_d2
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_db

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_db
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_f0

    and-int/lit16 v1, v0, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v1, v3}, Lorg/codehaus/jackson/a/p;->b(II)V

    :cond_f0
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v1, v3, :cond_f9

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_f9
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_104

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(II)V

    :cond_104
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_10d

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    :cond_10d
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(II)V

    goto/16 :goto_42

    :cond_124
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/p;->l(I)V

    goto/16 :goto_42

    .line 274
    :cond_129
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->x()V

    :cond_12c
    :goto_12c
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_138

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-eqz v0, :cond_172

    :cond_138
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_156

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_129

    .line 275
    :goto_14c
    if-gez v0, :cond_177

    .line 279
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->close()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 274
    :cond_156
    const/16 v1, 0x20

    if-eq v0, v1, :cond_12c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_162

    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->A()V

    goto :goto_12c

    :cond_162
    const/16 v1, 0xd

    if-ne v0, v1, :cond_16a

    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->z()V

    goto :goto_12c

    :cond_16a
    const/16 v1, 0x9

    if-eq v0, v1, :cond_12c

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->a(I)V

    goto :goto_12c

    :cond_172
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->s()V

    const/4 v0, -0x1

    goto :goto_14c

    .line 286
    :cond_177
    iget-wide v3, p0, Lorg/codehaus/jackson/a/p;->u:J

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/codehaus/jackson/a/p;->x:J

    .line 287
    iget v1, p0, Lorg/codehaus/jackson/a/p;->v:I

    iput v1, p0, Lorg/codehaus/jackson/a/p;->y:I

    .line 288
    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->w:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/p;->z:I

    .line 291
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/p;->G:[B

    .line 294
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1b1

    .line 295
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_1a3

    .line 296
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->a(IC)V

    .line 298
    :cond_1a3
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    .line 299
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 301
    :cond_1b1
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1d0

    .line 302
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 303
    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->a(IC)V

    .line 305
    :cond_1c2
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    .line 306
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 310
    :cond_1d0
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->i()Z

    move-result v1

    if-eqz v1, :cond_202

    .line 311
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1fe

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting comma to separate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 314
    :cond_1fe
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->w()I

    move-result v0

    .line 321
    :cond_202
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_271

    .line 322
    if-ne v0, v7, :cond_214

    iput-boolean v8, p0, Lorg/codehaus/jackson/a/p;->N:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_214
    sparse-switch v0, :sswitch_data_460

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_21f
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    iget v1, p0, Lorg/codehaus/jackson/a/p;->y:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_231
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    iget v1, p0, Lorg/codehaus/jackson/a/p;->y:I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->z:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_243
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    :sswitch_248
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_253
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_25e
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_269
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 325
    :cond_271
    if-eq v0, v7, :cond_2a1

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->e(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 326
    :goto_277
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    .line 328
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->w()I

    move-result v0

    .line 329
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_291

    .line 330
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 332
    :cond_291
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->w()I

    move-result v0

    .line 335
    if-ne v0, v7, :cond_41b

    .line 336
    iput-boolean v8, p0, Lorg/codehaus/jackson/a/p;->N:Z

    .line 337
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->B:Lorg/codehaus/jackson/JsonToken;

    .line 338
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 325
    :cond_2a1
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-le v0, v1, :cond_2d7

    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_2ba

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->p()Z

    move-result v0

    if-nez v0, :cond_2ba

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/p;->c(Ljava/lang/String;)V

    :cond_2ba
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v7, :cond_2cd

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_277

    :cond_2cd
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/p;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_277

    :cond_2d7
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->I:[B

    sget-object v1, Lorg/codehaus/jackson/a/p;->P:[I

    iget v3, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_40d

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3ff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3f1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3e1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    aget v4, v1, v0

    if-nez v4, :cond_3d1

    iput v3, p0, Lorg/codehaus/jackson/a/p;->Q:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_34e

    if-ne v3, v7, :cond_346

    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    invoke-direct {p0, v1, v0, v8}, Lorg/codehaus/jackson/a/p;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_346
    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    invoke-direct {p0, v1, v0, v3, v8}, Lorg/codehaus/jackson/a/p;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_34e
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_373

    if-ne v3, v7, :cond_36b

    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    invoke-direct {p0, v1, v0, v10}, Lorg/codehaus/jackson/a/p;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_36b
    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    invoke-direct {p0, v1, v0, v3, v10}, Lorg/codehaus/jackson/a/p;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_373
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_39a

    if-ne v3, v7, :cond_391

    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/jackson/a/p;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_391
    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/codehaus/jackson/a/p;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_39a
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/p;->I:[B

    iget v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    if-eqz v1, :cond_3c1

    if-ne v3, v7, :cond_3b8

    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/jackson/a/p;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3b8
    iget v1, p0, Lorg/codehaus/jackson/a/p;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/codehaus/jackson/a/p;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3c1
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    iget v4, p0, Lorg/codehaus/jackson/a/p;->Q:I

    aput v4, v1, v2

    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->M:[I

    aput v0, v1, v8

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/a/p;->d(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3d1
    if-ne v0, v7, :cond_3da

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/a/p;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3da
    const/4 v1, 0x4

    invoke-direct {p0, v3, v0, v1}, Lorg/codehaus/jackson/a/p;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3e1
    if-ne v4, v7, :cond_3ea

    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/a/p;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3ea
    const/4 v0, 0x3

    invoke-direct {p0, v3, v4, v0}, Lorg/codehaus/jackson/a/p;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3f1
    if-ne v4, v7, :cond_3f9

    invoke-direct {p0, v3, v10}, Lorg/codehaus/jackson/a/p;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3f9
    invoke-direct {p0, v3, v4, v10}, Lorg/codehaus/jackson/a/p;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_3ff
    if-ne v4, v7, :cond_407

    invoke-direct {p0, v3, v8}, Lorg/codehaus/jackson/a/p;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_407
    invoke-direct {p0, v3, v4, v8}, Lorg/codehaus/jackson/a/p;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_40d
    if-ne v3, v7, :cond_415

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    :cond_415
    invoke-direct {p0, v2, v3, v2}, Lorg/codehaus/jackson/a/p;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_277

    .line 342
    :cond_41b
    sparse-switch v0, :sswitch_data_4aa

    .line 385
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 387
    :goto_422
    iput-object v0, p0, Lorg/codehaus/jackson/a/p;->B:Lorg/codehaus/jackson/JsonToken;

    .line 388
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    .line 344
    :sswitch_428
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_422

    .line 347
    :sswitch_42b
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_422

    .line 353
    :sswitch_42e
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/p;->b(ILjava/lang/String;)V

    .line 355
    :sswitch_433
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 356
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_422

    .line 359
    :sswitch_43b
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 360
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_422

    .line 363
    :sswitch_443
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->a(Lorg/codehaus/jackson/JsonToken;)V

    .line 364
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_422

    .line 382
    :sswitch_44b
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/p;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_422

    :cond_450
    move v1, v3

    goto/16 :goto_4f

    .line 271
    nop

    :pswitch_data_454
    .packed-switch 0x1
        :pswitch_71
        :pswitch_75
        :pswitch_94
        :pswitch_d2
    .end packed-switch

    .line 322
    :sswitch_data_460
    .sparse-switch
        0x2d -> :sswitch_269
        0x30 -> :sswitch_269
        0x31 -> :sswitch_269
        0x32 -> :sswitch_269
        0x33 -> :sswitch_269
        0x34 -> :sswitch_269
        0x35 -> :sswitch_269
        0x36 -> :sswitch_269
        0x37 -> :sswitch_269
        0x38 -> :sswitch_269
        0x39 -> :sswitch_269
        0x5b -> :sswitch_21f
        0x5d -> :sswitch_243
        0x66 -> :sswitch_253
        0x6e -> :sswitch_25e
        0x74 -> :sswitch_248
        0x7b -> :sswitch_231
        0x7d -> :sswitch_243
    .end sparse-switch

    .line 342
    :sswitch_data_4aa
    .sparse-switch
        0x2d -> :sswitch_44b
        0x30 -> :sswitch_44b
        0x31 -> :sswitch_44b
        0x32 -> :sswitch_44b
        0x33 -> :sswitch_44b
        0x34 -> :sswitch_44b
        0x35 -> :sswitch_44b
        0x36 -> :sswitch_44b
        0x37 -> :sswitch_44b
        0x38 -> :sswitch_44b
        0x39 -> :sswitch_44b
        0x5b -> :sswitch_428
        0x5d -> :sswitch_42e
        0x66 -> :sswitch_43b
        0x6e -> :sswitch_443
        0x74 -> :sswitch_433
        0x7b -> :sswitch_42b
        0x7d -> :sswitch_42e
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 456
    invoke-super {p0}, Lorg/codehaus/jackson/a/n;->close()V

    .line 458
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->L:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/a;->b()V

    .line 459
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x22

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->b:Lorg/codehaus/jackson/JsonToken;

    .line 110
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_f8

    .line 111
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/p;->N:Z

    if-eqz v0, :cond_43

    .line 112
    iput-boolean v3, p0, Lorg/codehaus/jackson/a/p;->N:Z

    .line 113
    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v1, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    iget v0, p0, Lorg/codehaus/jackson/a/p;->s:I

    :cond_1a
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    sget-object v5, Lorg/codehaus/jackson/a/p;->O:[I

    iget v2, p0, Lorg/codehaus/jackson/a/p;->t:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lorg/codehaus/jackson/a/p;->I:[B

    move v2, v0

    move v0, v3

    :goto_2e
    if-ge v2, v6, :cond_54

    aget-byte v4, v7, v2

    and-int/lit16 v8, v4, 0xff

    aget v4, v5, v8

    if-eqz v4, :cond_4a

    if-ne v8, v9, :cond_54

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    .line 115
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_49
    return-object v0

    .line 113
    :cond_4a
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v0, 0x1

    int-to-char v8, v8

    aput-char v8, v1, v0

    move v0, v2

    move v2, v4

    goto :goto_2e

    :cond_54
    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    sget-object v6, Lorg/codehaus/jackson/a/p;->O:[I

    iget-object v7, p0, Lorg/codehaus/jackson/a/p;->I:[B

    :goto_5a
    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    if-lt v2, v4, :cond_65

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/p;->o()V

    iget v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    :cond_65
    array-length v4, v1

    if-lt v0, v4, :cond_6f

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v0, v3

    :cond_6f
    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    array-length v5, v1

    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_78
    if-ge v2, v8, :cond_ae

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    aget v5, v6, v2

    if-eqz v5, :cond_a6

    iput v4, p0, Lorg/codehaus/jackson/a/p;->s:I

    if-eq v2, v9, :cond_f1

    aget v4, v6, v2

    packed-switch v4, :pswitch_data_122

    const/16 v4, 0x20

    if-ge v2, v4, :cond_ed

    const-string v4, "string value"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/p;->c(ILjava/lang/String;)V

    :goto_96
    array-length v4, v1

    if-lt v0, v4, :cond_11e

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v4, v3

    :goto_a0
    add-int/lit8 v0, v4, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v4

    goto :goto_5a

    :cond_a6
    add-int/lit8 v5, v0, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v0

    move v2, v4

    move v0, v5

    goto :goto_78

    :cond_ae
    iput v2, p0, Lorg/codehaus/jackson/a/p;->s:I

    goto :goto_5a

    :pswitch_b1
    invoke-direct {p0}, Lorg/codehaus/jackson/a/p;->y()C

    move-result v2

    goto :goto_96

    :pswitch_b6
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->h(I)I

    move-result v2

    goto :goto_96

    :pswitch_bb
    iget v4, p0, Lorg/codehaus/jackson/a/p;->t:I

    iget v5, p0, Lorg/codehaus/jackson/a/p;->s:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-lt v4, v5, :cond_c8

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->j(I)I

    move-result v2

    goto :goto_96

    :cond_c8
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->i(I)I

    move-result v2

    goto :goto_96

    :pswitch_cd
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->k(I)I

    move-result v4

    add-int/lit8 v2, v0, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_120

    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v0, v3

    :goto_e6
    const v2, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v2, v4

    goto :goto_96

    :cond_ed
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/p;->l(I)V

    goto :goto_96

    :cond_f1
    iget-object v1, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    goto/16 :goto_43

    .line 117
    :cond_f8
    if-nez v0, :cond_fd

    const/4 v0, 0x0

    goto/16 :goto_49

    :cond_fd
    sget-object v1, Lorg/codehaus/jackson/a/q;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12e

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :pswitch_10e
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->A:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :pswitch_116
    iget-object v0, p0, Lorg/codehaus/jackson/a/p;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :cond_11e
    move v4, v0

    goto :goto_a0

    :cond_120
    move v0, v2

    goto :goto_e6

    .line 113
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b6
        :pswitch_bb
        :pswitch_cd
    .end packed-switch

    .line 117
    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_10e
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch
.end method
