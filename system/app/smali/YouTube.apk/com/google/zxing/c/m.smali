.class final Lcom/google/zxing/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:[I

.field private final d:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/zxing/c/m;->a:[I

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/zxing/c/m;->b:[I

    return-void

    .line 30
    :array_12
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_1c
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/m;->c:[I

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/c/m;->d:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method final a(ILcom/google/zxing/common/a;I)Lcom/google/zxing/h;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    sget-object v1, Lcom/google/zxing/c/m;->a:[I

    invoke-static {p2, p3, v0, v1}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v5

    .line 42
    iget-object v6, p0, Lcom/google/zxing/c/m;->d:Ljava/lang/StringBuffer;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 44
    iget-object v7, p0, Lcom/google/zxing/c/m;->c:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v7, v0

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v7, v0

    iget v8, p2, Lcom/google/zxing/common/a;->b:I

    const/4 v0, 0x1

    aget v2, v5, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v1

    move v11, v0

    move v0, v2

    move v2, v11

    :goto_2a
    const/4 v1, 0x5

    if-ge v2, v1, :cond_6f

    if-ge v0, v8, :cond_6f

    sget-object v1, Lcom/google/zxing/c/n;->e:[[I

    invoke-static {p2, v7, v0, v1}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v3

    rem-int/lit8 v1, v3, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_3e
    array-length v9, v7

    if-ge v1, v9, :cond_47

    aget v9, v7, v1

    add-int/2addr v0, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_47
    const/16 v1, 0xa

    if-lt v3, v1, :cond_18f

    const/4 v1, 0x1

    rsub-int/lit8 v3, v2, 0x4

    shl-int/2addr v1, v3

    or-int v3, v4, v1

    :goto_51
    const/4 v1, 0x4

    if-eq v2, v1, :cond_6a

    :goto_54
    if-ge v0, v8, :cond_5f

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_5f

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_5f
    :goto_5f
    if-ge v0, v8, :cond_6a

    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    :cond_6a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v4, v3

    goto :goto_2a

    :cond_6f
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7b

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7b
    const/4 v1, 0x0

    move v3, v1

    :goto_7d
    const/16 v1, 0xa

    if-ge v3, v1, :cond_a2

    sget-object v1, Lcom/google/zxing/c/m;->b:[I

    aget v1, v1, v3

    if-ne v4, v1, :cond_9e

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v2, 0x0

    add-int/lit8 v1, v7, -0x2

    :goto_92
    if-ltz v1, :cond_a7

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, -0x2

    goto :goto_92

    :cond_9e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7d

    :cond_a2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_a7
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v7, -0x1

    :goto_ab
    if-ltz v1, :cond_b7

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, -0x2

    goto :goto_ab

    :cond_b7
    mul-int/lit8 v1, v2, 0x3

    rem-int/lit8 v1, v1, 0xa

    if-eq v1, v3, :cond_c2

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 46
    :cond_c2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_192

    :pswitch_cd
    const/4 v1, 0x0

    .line 49
    :goto_ce
    new-instance v2, Lcom/google/zxing/h;

    const/4 v3, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/j;

    const/4 v7, 0x0

    new-instance v8, Lcom/google/zxing/j;

    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v5, v5, v10

    add-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v9, 0x4000

    div-float/2addr v5, v9

    int-to-float v9, p1

    invoke-direct {v8, v5, v9}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v8, v6, v7

    const/4 v5, 0x1

    new-instance v7, Lcom/google/zxing/j;

    int-to-float v0, v0

    int-to-float v8, p1

    invoke-direct {v7, v0, v8}, Lcom/google/zxing/j;-><init>(FF)V

    aput-object v7, v6, v5

    sget-object v0, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;

    invoke-direct {v2, v4, v3, v6, v0}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 57
    if-eqz v1, :cond_fc

    .line 58
    invoke-virtual {v2, v1}, Lcom/google/zxing/h;->a(Ljava/util/Hashtable;)V

    .line 60
    :cond_fc
    return-object v2

    .line 47
    :pswitch_fd
    sget-object v2, Lcom/google/zxing/i;->e:Lcom/google/zxing/i;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v2

    move-object v2, v1

    :goto_105
    if-nez v2, :cond_184

    const/4 v1, 0x0

    goto :goto_ce

    :pswitch_109
    sget-object v3, Lcom/google/zxing/i;->f:Lcom/google/zxing/i;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_19e

    const-string v1, ""

    :goto_115
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v6, v2, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    rem-int/lit8 v2, v2, 0x64

    const/16 v7, 0xa

    if-ge v2, v7, :cond_17f

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_139
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_154
    move-object v2, v1

    goto :goto_105

    :sswitch_156
    const-string v1, "\u00a3"

    goto :goto_115

    :sswitch_159
    const-string v1, "$"

    goto :goto_115

    :sswitch_15c
    const-string v1, "90000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    const/4 v1, 0x0

    goto :goto_154

    :cond_166
    const-string v1, "99991"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    const-string v1, "0.00"

    goto :goto_154

    :cond_171
    const-string v1, "99990"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17c

    const-string v1, "Used"

    goto :goto_154

    :cond_17c
    const-string v1, ""

    goto :goto_115

    :cond_17f
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_139

    :cond_184
    new-instance v1, Ljava/util/Hashtable;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/Hashtable;-><init>(I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_ce

    :cond_18f
    move v3, v4

    goto/16 :goto_51

    :pswitch_data_192
    .packed-switch 0x2
        :pswitch_fd
        :pswitch_cd
        :pswitch_cd
        :pswitch_109
    .end packed-switch

    :sswitch_data_19e
    .sparse-switch
        0x30 -> :sswitch_156
        0x35 -> :sswitch_159
        0x39 -> :sswitch_15c
    .end sparse-switch
.end method
