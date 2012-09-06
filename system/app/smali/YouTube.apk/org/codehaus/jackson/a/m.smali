.class public final Lorg/codehaus/jackson/a/m;
.super Lorg/codehaus/jackson/a/e;
.source "SourceFile"


# static fields
.field private static final O:[I

.field private static final P:[I


# instance fields
.field protected H:Lorg/codehaus/jackson/c;

.field protected final I:Lorg/codehaus/jackson/c/a;

.field protected J:[I

.field protected K:Z

.field protected L:Ljava/io/InputStream;

.field protected M:[B

.field protected N:Z

.field private Q:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    invoke-static {}, Lorg/codehaus/jackson/util/b;->b()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/m;->O:[I

    .line 25
    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/m;->P:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILjava/io/InputStream;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/a;[BIIZ)V
    .registers 11
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
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/a/e;-><init>(Lorg/codehaus/jackson/b/c;I)V

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/m;->K:Z

    .line 110
    iput-object p3, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    .line 111
    iput-object p4, p0, Lorg/codehaus/jackson/a/m;->H:Lorg/codehaus/jackson/c;

    .line 112
    iput-object p5, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    .line 113
    iput-object p6, p0, Lorg/codehaus/jackson/a/m;->M:[B

    .line 114
    iput p7, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 115
    iput p8, p0, Lorg/codehaus/jackson/a/m;->f:I

    .line 116
    iput-boolean p9, p0, Lorg/codehaus/jackson/a/m;->N:Z

    .line 118
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 120
    invoke-static {}, Lorg/codehaus/jackson/a/m;->w()V

    .line 122
    :cond_25
    return-void
.end method

.method private A()V
    .registers 2

    .prologue
    .line 2764
    iget v0, p0, Lorg/codehaus/jackson/a/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->h:I

    .line 2765
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iput v0, p0, Lorg/codehaus/jackson/a/m;->i:I

    .line 2766
    return-void
.end method

.method private B()I
    .registers 4

    .prologue
    .line 2771
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_9

    .line 2772
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2774
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

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

    .line 2187
    const/16 v0, 0x49

    if-ne p1, v0, :cond_59

    .line 2188
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v5, :cond_18

    .line 2189
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2190
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->v()V

    .line 2193
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte p1, v0, v5

    .line 2194
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_60

    .line 2195
    if-eqz p2, :cond_3c

    const-string v0, "-INF"

    .line 2196
    :goto_2a
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 2197
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2198
    if-eqz p2, :cond_3f

    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 2211
    :goto_3b
    return-object v0

    .line 2195
    :cond_3c
    const-string v0, "+INF"

    goto :goto_2a

    :cond_3f
    move-wide v1, v3

    .line 2198
    goto :goto_37

    .line 2200
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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    .line 2210
    :cond_59
    :goto_59
    const-string v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/m;->a(ILjava/lang/String;)V

    .line 2211
    const/4 v0, 0x0

    goto :goto_3b

    .line 2201
    :cond_60
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_59

    .line 2202
    if-eqz p2, :cond_7a

    const-string v0, "-Infinity"

    .line 2203
    :goto_68
    invoke-direct {p0, v0, v7}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 2204
    sget-object v5, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 2205
    if-eqz p2, :cond_7d

    :goto_75
    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_3b

    .line 2202
    :cond_7a
    const-string v0, "+Infinity"

    goto :goto_68

    :cond_7d
    move-wide v1, v3

    .line 2205
    goto :goto_75

    .line 2207
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

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    goto :goto_59
.end method

.method private final a([CIIZI)Lorg/codehaus/jackson/JsonToken;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    const/4 v0, 0x0

    .line 1126
    const/4 v4, 0x0

    .line 1129
    const/16 v1, 0x2e

    if-ne p3, v1, :cond_109

    .line 1130
    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    .line 1134
    :goto_b
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v2, v3, :cond_c0

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1135
    const/4 v4, 0x1

    .line 1150
    :cond_18
    if-nez v0, :cond_1f

    .line 1151
    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lorg/codehaus/jackson/a/m;->a(ILjava/lang/String;)V

    :cond_1f
    move v6, v0

    move v0, v1

    move-object v1, p1

    .line 1155
    :goto_22
    const/4 v3, 0x0

    .line 1156
    const/16 v2, 0x65

    if-eq p3, v2, :cond_2b

    const/16 v2, 0x45

    if-ne p3, v2, :cond_103

    .line 1157
    :cond_2b
    array-length v2, v1

    if-lt v0, v2, :cond_35

    .line 1158
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    .line 1159
    const/4 v0, 0x0

    .line 1161
    :cond_35
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    .line 1163
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v5, :cond_43

    .line 1164
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 1166
    :cond_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    .line 1168
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_57

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_ff

    .line 1169
    :cond_57
    array-length v0, v1

    if-lt v2, v0, :cond_fc

    .line 1170
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    .line 1171
    const/4 v0, 0x0

    .line 1173
    :goto_61
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    .line 1175
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v5, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v5, :cond_6f

    .line 1176
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 1178
    :cond_6f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    .line 1182
    :goto_7e
    const/16 v3, 0x39

    if-gt v5, v3, :cond_f7

    const/16 v3, 0x30

    if-lt v5, v3, :cond_f7

    .line 1183
    add-int/lit8 v2, v2, 0x1

    .line 1184
    array-length v3, v1

    if-lt v0, v3, :cond_92

    .line 1185
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    .line 1186
    const/4 v0, 0x0

    .line 1188
    :cond_92
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    .line 1189
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v7, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v7, :cond_e8

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 1190
    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    .line 1196
    :goto_a7
    if-nez v0, :cond_ae

    .line 1197
    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/a/m;->a(ILjava/lang/String;)V

    .line 1202
    :cond_ae
    :goto_ae
    if-nez v1, :cond_b6

    .line 1203
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 1205
    :cond_b6
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/f;->a(I)V

    .line 1208
    invoke-virtual {p0, p4, p5, v6, v0}, Lorg/codehaus/jackson/a/m;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_c0
    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    .line 1139
    const/16 v2, 0x30

    if-lt p3, v2, :cond_18

    const/16 v2, 0x39

    if-gt p3, v2, :cond_18

    .line 1140
    add-int/lit8 v0, v0, 0x1

    .line 1143
    array-length v2, p1

    if-lt v1, v2, :cond_107

    .line 1144
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object p1

    .line 1145
    const/4 v1, 0x0

    move v2, v1

    .line 1147
    :goto_e1
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_b

    .line 1193
    :cond_e8
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

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
    .line 1711
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/c/a;->a(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1712
    if-eqz v0, :cond_9

    .line 1717
    :goto_8
    return-object v0

    .line 1716
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1717
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_8
.end method

.method private final a(III)Lorg/codehaus/jackson/c/e;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1404
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

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
    .line 1410
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1411
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lorg/codehaus/jackson/c/e;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1762
    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    .line 1771
    const/4 v0, 0x4

    if-ge p3, v0, :cond_da

    .line 1772
    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    .line 1774
    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    .line 1780
    :goto_17
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v1

    .line 1781
    const/4 v5, 0x0

    .line 1783
    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v6, :cond_100

    .line 1784
    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    .line 1785
    and-int/lit8 v4, v3, 0x3

    .line 1786
    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    .line 1787
    add-int/lit8 v3, v3, 0x1

    .line 1789
    const/16 v4, 0x7f

    if-le v2, v4, :cond_114

    .line 1791
    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_dd

    .line 1792
    and-int/lit8 v4, v2, 0x1f

    .line 1793
    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    .line 1804
    :goto_41
    add-int v7, v3, v4

    if-le v7, v6, :cond_4a

    .line 1805
    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 1809
    :cond_4a
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1810
    and-int/lit8 v8, v3, 0x3

    .line 1811
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1812
    add-int/lit8 v3, v3, 0x1

    .line 1814
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_60

    .line 1815
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 1817
    :cond_60
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1818
    const/4 v7, 0x1

    if-le v4, v7, :cond_a3

    .line 1819
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1820
    and-int/lit8 v8, v3, 0x3

    .line 1821
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1822
    add-int/lit8 v3, v3, 0x1

    .line 1824
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7e

    .line 1825
    invoke-direct {p0, v7}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 1827
    :cond_7e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1828
    const/4 v7, 0x2

    if-le v4, v7, :cond_a3

    .line 1829
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    .line 1830
    and-int/lit8 v8, v3, 0x3

    .line 1831
    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    .line 1832
    add-int/lit8 v3, v3, 0x1

    .line 1833
    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9e

    .line 1834
    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 1836
    :cond_9e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    .line 1839
    :cond_a3
    const/4 v7, 0x2

    if-le v4, v7, :cond_114

    .line 1840
    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    .line 1841
    array-length v4, v1

    if-lt v5, v4, :cond_b2

    .line 1842
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->l()[C

    move-result-object v1

    .line 1844
    :cond_b2
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    .line 1845
    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    .line 1848
    :goto_c8
    array-length v5, v4

    if-lt v3, v5, :cond_d1

    .line 1849
    iget-object v4, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/f;->l()[C

    move-result-object v4

    .line 1851
    :cond_d1
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    .line 1852
    goto/16 :goto_20

    .line 1776
    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_17

    .line 1794
    :cond_dd
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_eb

    .line 1795
    and-int/lit8 v4, v2, 0xf

    .line 1796
    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 1797
    :cond_eb
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_f9

    .line 1798
    and-int/lit8 v4, v2, 0x7

    .line 1799
    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    .line 1801
    :cond_f9
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->m(I)V

    .line 1802
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_41

    .line 1855
    :cond_100
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 1857
    const/4 v1, 0x4

    if-ge p3, v1, :cond_10d

    .line 1858
    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    .line 1860
    :cond_10d
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

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
    .line 1737
    array-length v0, p1

    if-lt p2, v0, :cond_a

    .line 1738
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1740
    :cond_a
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    .line 1741
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, v1}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1742
    if-nez v0, :cond_1a

    .line 1743
    invoke-direct {p0, p1, v1, p4}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1745
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

    .line 1430
    sget-object v5, Lorg/codehaus/jackson/a/m;->P:[I

    .line 1433
    :goto_4
    aget v0, v5, p4

    if-eqz v0, :cond_d6

    .line 1434
    const/16 v0, 0x22

    if-eq p4, v0, :cond_ae

    .line 1435
    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6b

    .line 1440
    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lorg/codehaus/jackson/a/m;->c(ILjava/lang/String;)V

    .line 1450
    :goto_15
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d6

    .line 1452
    if-lt p5, v7, :cond_d2

    .line 1453
    array-length v0, p1

    if-lt p2, v0, :cond_25

    .line 1454
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1456
    :cond_25
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    .line 1460
    :goto_2c
    const/16 v2, 0x800

    if-ge p4, v2, :cond_70

    .line 1461
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    .line 1462
    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    .line 1480
    :goto_3d
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    .line 1484
    :goto_45
    if-ge p5, v7, :cond_9c

    .line 1485
    add-int/lit8 p5, p5, 0x1

    .line 1486
    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    .line 1495
    :goto_4d
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v2, :cond_5e

    .line 1496
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1497
    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 1500
    :cond_5e
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_4

    .line 1443
    :cond_6b
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->t()C

    move-result p4

    goto :goto_15

    .line 1465
    :cond_70
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    .line 1466
    add-int/lit8 v2, p5, 0x1

    .line 1468
    if-lt v2, v7, :cond_cc

    .line 1469
    array-length v2, v0

    if-lt v4, v2, :cond_85

    .line 1470
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1472
    :cond_85
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    .line 1476
    :goto_8d
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    .line 1477
    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3d

    .line 1488
    :cond_9c
    array-length v2, v0

    if-lt p2, v2, :cond_a6

    .line 1489
    array-length v2, v0

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1491
    :cond_a6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    .line 1493
    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_4d

    .line 1503
    :cond_ae
    if-lez p5, :cond_bf

    .line 1504
    array-length v0, p1

    if-lt p2, v0, :cond_ba

    .line 1505
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1507
    :cond_ba
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    .line 1509
    :cond_bf
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1510
    if-nez v0, :cond_cb

    .line 1511
    invoke-direct {p0, p1, p2, p5}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1513
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

.method private a(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2220
    :cond_5
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_16

    .line 2221
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-nez v1, :cond_16

    .line 2222
    const-string v1, " in a value"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 2225
    :cond_16
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2b

    .line 2226
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_2b
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 2229
    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_5

    .line 2232
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_42

    .line 2233
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2247
    :cond_41
    :goto_41
    return-void

    .line 2237
    :cond_42
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2238
    const/16 v1, 0x30

    if-lt v0, v1, :cond_41

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_41

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_41

    .line 2242
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->g(I)I

    move-result v0

    int-to-char v0, v0

    .line 2243
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2244
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 2245
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'null\', \'true\', \'false\' or NaN"

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2258
    :goto_5
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_11

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2259
    :cond_11
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2262
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->g(I)I

    move-result v1

    int-to-char v1, v1

    .line 2263
    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2264
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 2267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 2269
    :cond_30
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

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    .line 2270
    return-void
.end method

.method private static a([II)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2814
    if-nez p0, :cond_6

    .line 2815
    new-array v0, p1, [I

    .line 2821
    :goto_5
    return-object v0

    .line 2818
    :cond_6
    array-length v1, p0

    .line 2819
    add-int v0, v1, p1

    new-array v0, v0, [I

    .line 2820
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method private final b(III)Lorg/codehaus/jackson/c/e;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1724
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/c/a;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1725
    if-eqz v0, :cond_9

    .line 1731
    :goto_8
    return-object v0

    .line 1729
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1730
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1731
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_8
.end method

.method private b(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2808
    iput p2, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 2809
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 2810
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

    .line 991
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v1

    .line 993
    if-ne p1, v2, :cond_33

    move v4, v5

    .line 996
    :goto_11
    if-eqz v4, :cond_13b

    .line 997
    aput-char v2, v1, v8

    .line 999
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v2, :cond_1e

    .line 1000
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 1002
    :cond_1e
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 1004
    if-lt v0, v6, :cond_2e

    if-le v0, v10, :cond_35

    .line 1005
    :cond_2e
    invoke-direct {p0, v0, v5}, Lorg/codehaus/jackson/a/m;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1045
    :goto_32
    return-object v0

    :cond_33
    move v4, v8

    .line 993
    goto :goto_11

    :cond_35
    move v3, v5

    .line 1010
    :goto_36
    if-ne v0, v6, :cond_45

    .line 1011
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v2, :cond_6e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_6e

    move v0, v6

    .line 1015
    :cond_45
    :goto_45
    add-int/lit8 v2, v3, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v3

    .line 1019
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    array-length v3, v1

    add-int/2addr v0, v3

    .line 1020
    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-le v0, v3, :cond_54

    .line 1021
    iget v0, p0, Lorg/codehaus/jackson/a/m;->f:I

    .line 1026
    :cond_54
    :goto_54
    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-lt v3, v0, :cond_fb

    .line 1028
    :goto_58
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v3, :cond_b4

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_b4

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/f;->a(I)V

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/m;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_32

    .line 1011
    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v6, :cond_7a

    if-le v0, v10, :cond_7c

    :cond_7a
    move v0, v6

    goto :goto_45

    :cond_7c
    sget-object v2, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_89

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/m;->b(Ljava/lang/String;)V

    :cond_89
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-ne v0, v6, :cond_45

    :cond_91
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v7, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v2, v7, :cond_9d

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_9d
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v6, :cond_a9

    if-le v0, v10, :cond_ab

    :cond_a9
    move v0, v6

    goto :goto_45

    :cond_ab
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-eq v0, v6, :cond_91

    goto :goto_45

    .line 1028
    :cond_b4
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

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

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    :cond_d7
    array-length v0, v1

    if-lt v2, v0, :cond_139

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    move v0, v8

    :goto_e1
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_58

    :cond_ea
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/f;->a(I)V

    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/m;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    .line 1030
    :cond_fb
    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    .line 1031
    if-lt v3, v6, :cond_115

    if-gt v3, v10, :cond_115

    .line 1032
    add-int/lit8 v5, v5, 0x1

    .line 1035
    add-int/lit8 v7, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v7

    goto/16 :goto_54

    .line 1037
    :cond_115
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_121

    const/16 v0, 0x65

    if-eq v3, v0, :cond_121

    const/16 v0, 0x45

    if-ne v3, v0, :cond_128

    :cond_121
    move-object v0, p0

    .line 1038
    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_32

    .line 1041
    :cond_128
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 1042
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/f;->a(I)V

    .line 1045
    invoke-virtual {p0, v4, v5}, Lorg/codehaus/jackson/a/m;->a(ZI)Lorg/codehaus/jackson/JsonToken;

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

    .line 1324
    sget-object v1, Lorg/codehaus/jackson/a/m;->P:[I

    move v2, v5

    move v4, p1

    .line 1332
    :goto_a
    iget v0, p0, Lorg/codehaus/jackson/a/m;->f:I

    iget v6, p0, Lorg/codehaus/jackson/a/m;->e:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_1a

    .line 1333
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1369
    :goto_19
    return-object v0

    .line 1337
    :cond_1a
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v6, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    .line 1338
    aget v0, v1, v9

    if-eqz v0, :cond_3d

    .line 1339
    if-ne v9, v8, :cond_33

    .line 1340
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lorg/codehaus/jackson/a/m;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1342
    :cond_33
    iget-object v6, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1345
    :cond_3d
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    .line 1346
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1347
    aget v0, v1, v4

    if-eqz v0, :cond_63

    .line 1348
    if-ne v4, v8, :cond_5a

    .line 1349
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lorg/codehaus/jackson/a/m;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1351
    :cond_5a
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1354
    :cond_63
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1355
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1356
    aget v0, v1, v4

    if-eqz v0, :cond_8b

    .line 1357
    if-ne v4, v8, :cond_81

    .line 1358
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lorg/codehaus/jackson/a/m;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1360
    :cond_81
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_19

    .line 1363
    :cond_8b
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    .line 1364
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 1365
    aget v0, v1, v4

    if-eqz v0, :cond_b4

    .line 1366
    if-ne v4, v8, :cond_a9

    .line 1367
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lorg/codehaus/jackson/a/m;->a([IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_19

    .line 1369
    :cond_a9
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_19

    .line 1373
    :cond_b4
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    array-length v0, v0

    if-lt v2, v0, :cond_c1

    .line 1374
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1376
    :cond_c1
    iget-object v7, p0, Lorg/codehaus/jackson/a/m;->J:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    .line 1378
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

    .line 1526
    if-ne p1, v11, :cond_113

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 1527
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v2, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v2

    and-int/lit16 v6, v0, 0xff

    if-ne v6, v11, :cond_33

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 1587
    :goto_32
    return-object v0

    .line 1527
    :cond_33
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    sget-object v7, Lorg/codehaus/jackson/a/m;->P:[I

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

    invoke-virtual {p0, v6, v8}, Lorg/codehaus/jackson/a/m;->c(ILjava/lang/String;)V

    :goto_4d
    const/16 v8, 0x7f

    if-le v6, v8, :cond_1b1

    if-lt v3, v10, :cond_1ab

    array-length v3, v0

    if-lt v2, v3, :cond_5d

    array-length v3, v0

    invoke-static {v0, v3}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

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
    iget v6, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v8, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v6, v8, :cond_9b

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, " in field name"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    :cond_9b
    iget-object v6, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v8, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    move v12, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v12

    goto :goto_3a

    :cond_ad
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->t()C

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

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

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

    invoke-static {v0, v2}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

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

    invoke-static {v0, v1}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    :cond_fe
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_105
    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v2

    if-nez v2, :cond_19d

    invoke-direct {p0, v1, v0, v3}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_32

    .line 1530
    :cond_113
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_120

    .line 1531
    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 1537
    :cond_120
    invoke-static {}, Lorg/codehaus/jackson/util/b;->d()[I

    move-result-object v6

    .line 1539
    aget v0, v6, p1

    if-eqz v0, :cond_12d

    .line 1540
    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 1547
    :cond_12d
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move v4, v1

    move v3, v1

    move v2, p1

    .line 1554
    :goto_132
    if-ge v1, v10, :cond_167

    .line 1555
    add-int/lit8 v1, v1, 0x1

    .line 1556
    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    move v12, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v12

    .line 1565
    :goto_13e
    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v7, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v4, v7, :cond_14f

    .line 1566
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v4

    if-nez v4, :cond_14f

    .line 1567
    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 1570
    :cond_14f
    iget-object v4, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v7, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v4, v4, v7

    and-int/lit16 p1, v4, 0xff

    .line 1571
    aget v4, v6, p1

    if-nez v4, :cond_17b

    .line 1572
    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    move v4, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_132

    .line 1558
    :cond_167
    array-length v1, v0

    if-lt v3, v1, :cond_171

    .line 1559
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1561
    :cond_171
    add-int/lit8 v1, v3, 0x1

    aput v4, v0, v3

    move-object v3, v0

    move v0, v5

    move v12, v1

    move v1, v2

    move v2, v12

    .line 1563
    goto :goto_13e

    .line 1577
    :cond_17b
    if-lez v0, :cond_18c

    .line 1578
    array-length v4, v3

    if-lt v2, v4, :cond_187

    .line 1579
    array-length v4, v3

    invoke-static {v3, v4}, Lorg/codehaus/jackson/a/m;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/a/m;->J:[I

    .line 1581
    :cond_187
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    .line 1583
    :cond_18c
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v1, v3, v2}, Lorg/codehaus/jackson/c/a;->a([II)Lorg/codehaus/jackson/c/e;

    move-result-object v1

    .line 1584
    if-nez v1, :cond_19a

    .line 1585
    invoke-direct {p0, v3, v2, v0}, Lorg/codehaus/jackson/a/m;->a([III)Lorg/codehaus/jackson/c/e;

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

    .line 2062
    sparse-switch p1, :sswitch_data_10c

    .line 2084
    :cond_6
    :goto_6
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 2085
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 2064
    :sswitch_d
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2065
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v0

    sget-object v6, Lorg/codehaus/jackson/a/m;->O:[I

    iget-object v7, p0, Lorg/codehaus/jackson/a/m;->M:[B

    move v1, v2

    :cond_20
    :goto_20
    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v4, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v3, v4, :cond_29

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_29
    array-length v3, v0

    if-lt v1, v3, :cond_33

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v0

    move v1, v2

    :cond_33
    iget v4, p0, Lorg/codehaus/jackson/a/m;->f:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_109

    :goto_3c
    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-ge v4, v3, :cond_20

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

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

    packed-switch v3, :pswitch_data_11a

    const/16 v3, 0x20

    if-ge v5, v3, :cond_67

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lorg/codehaus/jackson/a/m;->c(ILjava/lang/String;)V

    :cond_67
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/m;->l(I)V

    :cond_6a
    move v3, v5

    :goto_6b
    array-length v4, v0

    if-lt v1, v4, :cond_104

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

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

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->t()C

    move-result v3

    goto :goto_6b

    :pswitch_84
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/m;->h(I)I

    move-result v3

    goto :goto_6b

    :pswitch_89
    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_96

    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/m;->j(I)I

    move-result v3

    goto :goto_6b

    :cond_96
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/m;->i(I)I

    move-result v3

    goto :goto_6b

    :pswitch_9b
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/m;->k(I)I

    move-result v4

    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    array-length v1, v0

    if-lt v3, v1, :cond_107

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v0

    move v1, v2

    :goto_b4
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    goto :goto_6b

    :cond_bb
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/f;->a(I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_c

    .line 2069
    :sswitch_c4
    const-string v0, "NaN"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 2070
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 2071
    const-string v0, "NaN"

    const-wide/high16 v1, 0x7ff8

    invoke-virtual {p0, v0, v1, v2}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;D)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_c

    .line 2073
    :cond_dc
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2076
    :sswitch_e3
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_f2

    .line 2077
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 2078
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->v()V

    .line 2081
    :cond_f2
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0, v2}, Lorg/codehaus/jackson/a/m;->a(IZ)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_c

    :cond_104
    move v4, v1

    goto/16 :goto_75

    :cond_107
    move v1, v3

    goto :goto_b4

    :cond_109
    move v3, v4

    goto/16 :goto_3c

    .line 2062
    :sswitch_data_10c
    .sparse-switch
        0x27 -> :sswitch_d
        0x2b -> :sswitch_e3
        0x4e -> :sswitch_c4
    .end sparse-switch

    .line 2065
    :pswitch_data_11a
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

    .line 2541
    if-gez p1, :cond_4c

    .line 2545
    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4d

    .line 2546
    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    .line 2560
    :goto_f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->B()I

    move-result v3

    .line 2561
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_1c

    .line 2562
    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 2564
    :cond_1c
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    .line 2566
    if-le v0, v1, :cond_4c

    .line 2567
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->B()I

    move-result v1

    .line 2568
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    .line 2569
    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 2571
    :cond_31
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    .line 2572
    if-le v0, v2, :cond_4c

    .line 2573
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->B()I

    move-result v0

    .line 2574
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_46

    .line 2575
    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->n(I)V

    .line 2577
    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    .line 2581
    :cond_4c
    return p1

    .line 2548
    :cond_4d
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_57

    .line 2549
    and-int/lit8 p1, p1, 0xf

    move v0, v2

    .line 2550
    goto :goto_f

    .line 2551
    :cond_57
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_61

    .line 2553
    and-int/lit8 p1, p1, 0x7

    .line 2554
    const/4 v0, 0x3

    goto :goto_f

    .line 2556
    :cond_61
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->m(I)V

    move v0, v1

    .line 2557
    goto :goto_f
.end method

.method private final h(I)I
    .registers 5
    .parameter

    .prologue
    .line 2593
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_9

    .line 2594
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2596
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    .line 2597
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    .line 2598
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2600
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

    .line 2606
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_b

    .line 2607
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2609
    :cond_b
    and-int/lit8 v0, p1, 0xf

    .line 2610
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2611
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_22

    .line 2612
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2614
    :cond_22
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2615
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_30

    .line 2616
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2618
    :cond_30
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2619
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 2620
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2622
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2623
    return v0
.end method

.method private final j(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2629
    and-int/lit8 v0, p1, 0xf

    .line 2630
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2631
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_19

    .line 2632
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2634
    :cond_19
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2635
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2636
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_33

    .line 2637
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2639
    :cond_33
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2640
    return v0
.end method

.method private final k(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x80

    .line 2650
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_b

    .line 2651
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2653
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    .line 2654
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    .line 2655
    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v1, v2}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2657
    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 2659
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_30

    .line 2660
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2662
    :cond_30
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2663
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    .line 2664
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2666
    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    .line 2667
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_53

    .line 2668
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    .line 2670
    :cond_53
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2671
    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_68

    .line 2672
    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v2, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    .line 2678
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
    .line 2787
    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    .line 2788
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/a/m;->a(I)V

    .line 2790
    :cond_7
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/m;->m(I)V

    .line 2791
    return-void
.end method

.method private m(I)V
    .registers 4
    .parameter

    .prologue
    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    .line 2797
    return-void
.end method

.method private n(I)V
    .registers 4
    .parameter

    .prologue
    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->d(Ljava/lang/String;)V

    .line 2803
    return-void
.end method

.method private final x()I
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2281
    :cond_2
    :goto_2
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2282
    :cond_e
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2283
    if-le v0, v3, :cond_25

    .line 2284
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    .line 2285
    return v0

    .line 2287
    :cond_21
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->y()V

    goto :goto_2

    .line 2288
    :cond_25
    if-eq v0, v3, :cond_2

    .line 2289
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    .line 2290
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->A()V

    goto :goto_2

    .line 2291
    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    .line 2292
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->z()V

    goto :goto_2

    .line 2293
    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 2294
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(I)V

    goto :goto_2

    .line 2298
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final y()V
    .registers 6

    .prologue
    const/16 v4, 0x2f

    .line 2406
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_COMMENTS:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2407
    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 2410
    :cond_f
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2411
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 2413
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 2414
    if-ne v0, v4, :cond_5d

    .line 2415
    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_32
    :goto_32
    :sswitch_32
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_3e

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_3e
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_32

    sparse-switch v2, :sswitch_data_ac

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->l(I)V

    goto :goto_32

    :sswitch_55
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->A()V

    .line 2421
    :cond_58
    :goto_58
    return-void

    .line 2415
    :sswitch_59
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->z()V

    goto :goto_58

    .line 2416
    :cond_5d
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_a5

    .line 2417
    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_65
    :goto_65
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_71

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-eqz v1, :cond_9f

    :cond_71
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_65

    sparse-switch v2, :sswitch_data_ba

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->l(I)V

    goto :goto_65

    :sswitch_88
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_65

    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    goto :goto_58

    :sswitch_97
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->A()V

    goto :goto_65

    :sswitch_9b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->z()V

    goto :goto_65

    :cond_9f
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    goto :goto_58

    .line 2419
    :cond_a5
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    goto :goto_58

    .line 2415
    nop

    :sswitch_data_ac
    .sparse-switch
        0xa -> :sswitch_55
        0xd -> :sswitch_59
        0x2a -> :sswitch_32
    .end sparse-switch

    .line 2417
    :sswitch_data_ba
    .sparse-switch
        0xa -> :sswitch_97
        0xd -> :sswitch_9b
        0x2a -> :sswitch_88
    .end sparse-switch
.end method

.method private z()V
    .registers 3

    .prologue
    .line 2753
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2754
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 2755
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 2758
    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/a/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/m;->h:I

    .line 2759
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iput v0, p0, Lorg/codehaus/jackson/a/m;->i:I

    .line 2760
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x80

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x22

    .line 426
    iput v2, p0, Lorg/codehaus/jackson/a/m;->x:I

    .line 431
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3a

    .line 432
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/m;->q:Z

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->n:Lorg/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->n:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_29

    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/m;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    :cond_26
    :goto_26
    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    .line 552
    :goto_28
    return-object v0

    .line 432
    :cond_29
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_26

    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    iget v2, p0, Lorg/codehaus/jackson/a/m;->k:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->l:I

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    goto :goto_26

    .line 434
    :cond_3a
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/m;->K:Z

    if-eqz v0, :cond_12e

    .line 435
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/m;->K:Z

    sget-object v4, Lorg/codehaus/jackson/a/m;->O:[I

    iget-object v5, p0, Lorg/codehaus/jackson/a/m;->M:[B

    :cond_44
    :goto_44
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v0, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v0, :cond_51

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v0, p0, Lorg/codehaus/jackson/a/m;->f:I

    :cond_51
    :goto_51
    if-ge v1, v0, :cond_70

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v4, v1

    if-eqz v6, :cond_44e

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-eq v1, v7, :cond_12e

    aget v0, v4, v1

    packed-switch v0, :pswitch_data_452

    const/16 v0, 0x20

    if-ge v1, v0, :cond_126

    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/jackson/a/m;->c(ILjava/lang/String;)V

    goto :goto_44

    :cond_70
    iput v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    goto :goto_44

    :pswitch_73
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->t()C

    goto :goto_44

    :pswitch_77
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_80

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_80
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_44

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(II)V

    goto :goto_44

    :pswitch_96
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_9f

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_9f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_b4

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(II)V

    :cond_b4
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_bd

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_bd
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_44

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(II)V

    goto/16 :goto_44

    :pswitch_d4
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_dd

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_dd
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_f2

    and-int/lit16 v1, v0, 0xff

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v1, v3}, Lorg/codehaus/jackson/a/m;->b(II)V

    :cond_f2
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v3, :cond_fb

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_fb
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_106

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(II)V

    :cond_106
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_10f

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    :cond_10f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_44

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(II)V

    goto/16 :goto_44

    :cond_126
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->l(I)V

    goto/16 :goto_44

    .line 438
    :cond_12b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->y()V

    :cond_12e
    :goto_12e
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_13a

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_174

    :cond_13a
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_158

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_12b

    .line 439
    :goto_14e
    if-gez v0, :cond_179

    .line 443
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->close()V

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 438
    :cond_158
    const/16 v1, 0x20

    if-eq v0, v1, :cond_12e

    const/16 v1, 0xa

    if-ne v0, v1, :cond_164

    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->A()V

    goto :goto_12e

    :cond_164
    const/16 v1, 0xd

    if-ne v0, v1, :cond_16c

    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->z()V

    goto :goto_12e

    :cond_16c
    const/16 v1, 0x9

    if-eq v0, v1, :cond_12e

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(I)V

    goto :goto_12e

    :cond_174
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->s()V

    const/4 v0, -0x1

    goto :goto_14e

    .line 450
    :cond_179
    iget-wide v3, p0, Lorg/codehaus/jackson/a/m;->g:J

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/codehaus/jackson/a/m;->j:J

    .line 451
    iget v1, p0, Lorg/codehaus/jackson/a/m;->h:I

    iput v1, p0, Lorg/codehaus/jackson/a/m;->k:I

    .line 452
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->i:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/codehaus/jackson/a/m;->l:I

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->s:[B

    .line 458
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1b3

    .line 459
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->a()Z

    move-result v1

    if-nez v1, :cond_1a5

    .line 460
    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->a(IC)V

    .line 462
    :cond_1a5
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    .line 463
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 465
    :cond_1b3
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1d2

    .line 466
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_1c4

    .line 467
    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->a(IC)V

    .line 469
    :cond_1c4
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->h()Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    .line 470
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 474
    :cond_1d2
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->i()Z

    move-result v1

    if-eqz v1, :cond_200

    .line 475
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1fc

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "was expecting comma to separate "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v3}, Lorg/codehaus/jackson/a/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 478
    :cond_1fc
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->x()I

    move-result v0

    .line 485
    :cond_200
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/h;->c()Z

    move-result v1

    if-nez v1, :cond_26f

    .line 486
    if-ne v0, v7, :cond_212

    iput-boolean v8, p0, Lorg/codehaus/jackson/a/m;->K:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :cond_212
    sparse-switch v0, :sswitch_data_45e

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_21d
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    iget v1, p0, Lorg/codehaus/jackson/a/m;->k:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/a/h;->a(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_22f
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    iget v1, p0, Lorg/codehaus/jackson/a/m;->k:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/a/h;->b(II)Lorg/codehaus/jackson/a/h;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_241
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    :sswitch_246
    const-string v0, "true"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_251
    const-string v0, "false"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_25c
    const-string v0, "null"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    :sswitch_267
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 489
    :cond_26f
    if-eq v0, v7, :cond_29f

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->e(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    .line 490
    :goto_275
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/a/h;->a(Ljava/lang/String;)V

    .line 491
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    .line 492
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->x()I

    move-result v0

    .line 493
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_28f

    .line 494
    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 496
    :cond_28f
    invoke-direct {p0}, Lorg/codehaus/jackson/a/m;->x()I

    move-result v0

    .line 499
    if-ne v0, v7, :cond_419

    .line 500
    iput-boolean v8, p0, Lorg/codehaus/jackson/a/m;->K:Z

    .line 501
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->n:Lorg/codehaus/jackson/JsonToken;

    .line 502
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 489
    :cond_29f
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-le v0, v1, :cond_2d5

    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_2b8

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v0

    if-nez v0, :cond_2b8

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    :cond_2b8
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v7, :cond_2cb

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_275

    :cond_2cb
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/m;->a([IIIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto :goto_275

    :cond_2d5
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    sget-object v1, Lorg/codehaus/jackson/a/m;->P:[I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_40b

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3fd

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3ef

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3df

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    aget v4, v1, v0

    if-nez v4, :cond_3cf

    iput v3, p0, Lorg/codehaus/jackson/a/m;->Q:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_34c

    if-ne v3, v7, :cond_344

    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    invoke-direct {p0, v1, v0, v8}, Lorg/codehaus/jackson/a/m;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_344
    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    invoke-direct {p0, v1, v0, v3, v8}, Lorg/codehaus/jackson/a/m;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_34c
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_371

    if-ne v3, v7, :cond_369

    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    invoke-direct {p0, v1, v0, v10}, Lorg/codehaus/jackson/a/m;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_369
    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    invoke-direct {p0, v1, v0, v3, v10}, Lorg/codehaus/jackson/a/m;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_371
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_398

    if-ne v3, v7, :cond_38f

    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/jackson/a/m;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_38f
    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/codehaus/jackson/a/m;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_398
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    if-eqz v1, :cond_3bf

    if-ne v3, v7, :cond_3b6

    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lorg/codehaus/jackson/a/m;->b(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3b6
    iget v1, p0, Lorg/codehaus/jackson/a/m;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v3, v2}, Lorg/codehaus/jackson/a/m;->a(IIII)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3bf
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    iget v4, p0, Lorg/codehaus/jackson/a/m;->Q:I

    aput v4, v1, v2

    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->J:[I

    aput v0, v1, v8

    invoke-direct {p0, v3}, Lorg/codehaus/jackson/a/m;->d(I)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3cf
    if-ne v0, v7, :cond_3d8

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/a/m;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3d8
    const/4 v1, 0x4

    invoke-direct {p0, v3, v0, v1}, Lorg/codehaus/jackson/a/m;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3df
    if-ne v4, v7, :cond_3e8

    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lorg/codehaus/jackson/a/m;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3e8
    const/4 v0, 0x3

    invoke-direct {p0, v3, v4, v0}, Lorg/codehaus/jackson/a/m;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3ef
    if-ne v4, v7, :cond_3f7

    invoke-direct {p0, v3, v10}, Lorg/codehaus/jackson/a/m;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3f7
    invoke-direct {p0, v3, v4, v10}, Lorg/codehaus/jackson/a/m;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_3fd
    if-ne v4, v7, :cond_405

    invoke-direct {p0, v3, v8}, Lorg/codehaus/jackson/a/m;->a(II)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_405
    invoke-direct {p0, v3, v4, v8}, Lorg/codehaus/jackson/a/m;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_40b
    if-ne v3, v7, :cond_413

    invoke-static {}, Lorg/codehaus/jackson/c/a;->c()Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    :cond_413
    invoke-direct {p0, v2, v3, v2}, Lorg/codehaus/jackson/a/m;->a(III)Lorg/codehaus/jackson/c/e;

    move-result-object v0

    goto/16 :goto_275

    .line 506
    :cond_419
    sparse-switch v0, :sswitch_data_4a8

    .line 549
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 551
    :goto_420
    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->n:Lorg/codehaus/jackson/JsonToken;

    .line 552
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_28

    .line 508
    :sswitch_426
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    goto :goto_420

    .line 511
    :sswitch_429
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    goto :goto_420

    .line 517
    :sswitch_42c
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 519
    :sswitch_431
    const-string v0, "true"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 520
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_420

    .line 523
    :sswitch_439
    const-string v0, "false"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 524
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_FALSE:Lorg/codehaus/jackson/JsonToken;

    goto :goto_420

    .line 527
    :sswitch_441
    const-string v0, "null"

    invoke-direct {p0, v0, v8}, Lorg/codehaus/jackson/a/m;->a(Ljava/lang/String;I)V

    .line 528
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    goto :goto_420

    .line 546
    :sswitch_449
    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/m;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_420

    :cond_44e
    move v1, v3

    goto/16 :goto_51

    .line 435
    nop

    :pswitch_data_452
    .packed-switch 0x1
        :pswitch_73
        :pswitch_77
        :pswitch_96
        :pswitch_d4
    .end packed-switch

    .line 486
    :sswitch_data_45e
    .sparse-switch
        0x2d -> :sswitch_267
        0x30 -> :sswitch_267
        0x31 -> :sswitch_267
        0x32 -> :sswitch_267
        0x33 -> :sswitch_267
        0x34 -> :sswitch_267
        0x35 -> :sswitch_267
        0x36 -> :sswitch_267
        0x37 -> :sswitch_267
        0x38 -> :sswitch_267
        0x39 -> :sswitch_267
        0x5b -> :sswitch_21d
        0x5d -> :sswitch_241
        0x66 -> :sswitch_251
        0x6e -> :sswitch_25c
        0x74 -> :sswitch_246
        0x7b -> :sswitch_22f
        0x7d -> :sswitch_241
    .end sparse-switch

    .line 506
    :sswitch_data_4a8
    .sparse-switch
        0x2d -> :sswitch_449
        0x30 -> :sswitch_449
        0x31 -> :sswitch_449
        0x32 -> :sswitch_449
        0x33 -> :sswitch_449
        0x34 -> :sswitch_449
        0x35 -> :sswitch_449
        0x36 -> :sswitch_449
        0x37 -> :sswitch_449
        0x38 -> :sswitch_449
        0x39 -> :sswitch_449
        0x5b -> :sswitch_426
        0x5d -> :sswitch_42c
        0x66 -> :sswitch_439
        0x6e -> :sswitch_441
        0x74 -> :sswitch_431
        0x7b -> :sswitch_429
        0x7d -> :sswitch_42c
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 620
    invoke-super {p0}, Lorg/codehaus/jackson/a/e;->close()V

    .line 622
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->I:Lorg/codehaus/jackson/c/a;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/a;->b()V

    .line 623
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x22

    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->b:Lorg/codehaus/jackson/JsonToken;

    .line 273
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_f8

    .line 274
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/m;->K:Z

    if-eqz v0, :cond_43

    .line 275
    iput-boolean v3, p0, Lorg/codehaus/jackson/a/m;->K:Z

    .line 276
    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    iget v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    :cond_1a
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/f;->i()[C

    move-result-object v1

    sget-object v5, Lorg/codehaus/jackson/a/m;->O:[I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lorg/codehaus/jackson/a/m;->M:[B

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

    iput v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/f;->a(I)V

    .line 278
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_49
    return-object v0

    .line 276
    :cond_4a
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v0, 0x1

    int-to-char v8, v8

    aput-char v8, v1, v0

    move v0, v2

    move v2, v4

    goto :goto_2e

    :cond_54
    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    sget-object v6, Lorg/codehaus/jackson/a/m;->O:[I

    iget-object v7, p0, Lorg/codehaus/jackson/a/m;->M:[B

    :goto_5a
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v4, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v2, v4, :cond_65

    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->o()V

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    :cond_65
    array-length v4, v1

    if-lt v0, v4, :cond_6f

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    move v0, v3

    :cond_6f
    iget v4, p0, Lorg/codehaus/jackson/a/m;->f:I

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

    iput v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    if-eq v2, v9, :cond_f1

    aget v4, v6, v2

    packed-switch v4, :pswitch_data_122

    const/16 v4, 0x20

    if-ge v2, v4, :cond_ed

    const-string v4, "string value"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/m;->c(ILjava/lang/String;)V

    :goto_96
    array-length v4, v1

    if-lt v0, v4, :cond_11e

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

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
    iput v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    goto :goto_5a

    :pswitch_b1
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->t()C

    move-result v2

    goto :goto_96

    :pswitch_b6
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->h(I)I

    move-result v2

    goto :goto_96

    :pswitch_bb
    iget v4, p0, Lorg/codehaus/jackson/a/m;->f:I

    iget v5, p0, Lorg/codehaus/jackson/a/m;->e:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-lt v4, v5, :cond_c8

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->j(I)I

    move-result v2

    goto :goto_96

    :cond_c8
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->i(I)I

    move-result v2

    goto :goto_96

    :pswitch_cd
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->k(I)I

    move-result v4

    add-int/lit8 v2, v0, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_120

    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->k()[C

    move-result-object v1

    move v0, v3

    :goto_e6
    const v2, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v2, v4

    goto :goto_96

    :cond_ed
    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/m;->l(I)V

    goto :goto_96

    :cond_f1
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/f;->a(I)V

    goto/16 :goto_43

    .line 280
    :cond_f8
    if-nez v0, :cond_fd

    const/4 v0, 0x0

    goto/16 :goto_49

    :cond_fd
    sget-object v1, Lorg/codehaus/jackson/a/n;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12e

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :pswitch_10e
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->m:Lorg/codehaus/jackson/a/h;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/h;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :pswitch_116
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->o:Lorg/codehaus/jackson/util/f;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/f;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    :cond_11e
    move v4, v0

    goto :goto_a0

    :cond_120
    move v0, v2

    goto :goto_e6

    .line 276
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_b6
        :pswitch_bb
        :pswitch_cd
    .end packed-switch

    .line 280
    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_10e
        :pswitch_116
        :pswitch_116
        :pswitch_116
    .end packed-switch
.end method

.method protected final p()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-wide v1, p0, Lorg/codehaus/jackson/a/m;->g:J

    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/codehaus/jackson/a/m;->g:J

    .line 169
    iget v1, p0, Lorg/codehaus/jackson/a/m;->i:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/a/m;->i:I

    .line 171
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    if-eqz v1, :cond_26

    .line 172
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget-object v3, p0, Lorg/codehaus/jackson/a/m;->M:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 173
    if-lez v1, :cond_27

    .line 174
    iput v0, p0, Lorg/codehaus/jackson/a/m;->e:I

    .line 175
    iput v1, p0, Lorg/codehaus/jackson/a/m;->f:I

    .line 176
    const/4 v0, 0x1

    .line 185
    :cond_26
    return v0

    .line 179
    :cond_27
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->q()V

    .line 181
    if-nez v1, :cond_26

    .line 182
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InputStream.read() returned 0 characters when trying to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->M:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final q()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    .line 236
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 237
    :cond_14
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 239
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/a/m;->L:Ljava/io/InputStream;

    .line 241
    :cond_1c
    return-void
.end method

.method protected final r()V
    .registers 3

    .prologue
    .line 252
    invoke-super {p0}, Lorg/codehaus/jackson/a/e;->r()V

    .line 253
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/m;->N:Z

    if-eqz v0, :cond_13

    .line 254
    iget-object v0, p0, Lorg/codehaus/jackson/a/m;->M:[B

    .line 255
    if-eqz v0, :cond_13

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    .line 257
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->c:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a([B)V

    .line 260
    :cond_13
    return-void
.end method

.method protected final t()C
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2486
    iget v1, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v2, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v1, v2, :cond_12

    .line 2487
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2488
    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 2491
    :cond_12
    iget-object v1, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v1, v1, v2

    .line 2493
    sparse-switch v1, :sswitch_data_6c

    .line 2516
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/a/m;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/m;->a(C)C

    move-result v0

    .line 2534
    :goto_28
    return v0

    .line 2496
    :sswitch_29
    const/16 v0, 0x8

    goto :goto_28

    .line 2498
    :sswitch_2c
    const/16 v0, 0x9

    goto :goto_28

    .line 2500
    :sswitch_2f
    const/16 v0, 0xa

    goto :goto_28

    .line 2502
    :sswitch_32
    const/16 v0, 0xc

    goto :goto_28

    .line 2504
    :sswitch_35
    const/16 v0, 0xd

    goto :goto_28

    .line 2510
    :sswitch_38
    int-to-char v0, v1

    goto :goto_28

    :sswitch_3a
    move v1, v0

    .line 2521
    :goto_3b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6a

    .line 2522
    iget v2, p0, Lorg/codehaus/jackson/a/m;->e:I

    iget v3, p0, Lorg/codehaus/jackson/a/m;->f:I

    if-lt v2, v3, :cond_4f

    .line 2523
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/m;->p()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 2524
    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/a/m;->c(Ljava/lang/String;)V

    .line 2527
    :cond_4f
    iget-object v2, p0, Lorg/codehaus/jackson/a/m;->M:[B

    iget v3, p0, Lorg/codehaus/jackson/a/m;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/m;->e:I

    aget-byte v2, v2, v3

    .line 2528
    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    .line 2529
    if-gez v3, :cond_64

    .line 2530
    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lorg/codehaus/jackson/a/m;->b(ILjava/lang/String;)V

    .line 2532
    :cond_64
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    .line 2521
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 2534
    :cond_6a
    int-to-char v0, v1

    goto :goto_28

    .line 2493
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
