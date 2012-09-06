.class public Lcom/google/android/maps/driveabout/vector/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lac/p;

.field private b:Ln/Q;

.field private c:I

.field private final d:Ln/Q;

.field private e:Lcom/google/android/maps/driveabout/vector/ef;

.field private f:Lcom/google/android/maps/driveabout/vector/eg;


# direct methods
.method public constructor <init>(Lac/p;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ln/Q;

    invoke-direct {v0, v1, v1}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->c:I

    .line 49
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->d:Ln/Q;

    .line 52
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->e:Lcom/google/android/maps/driveabout/vector/ef;

    .line 56
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->f:Lcom/google/android/maps/driveabout/vector/eg;

    .line 59
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ee;->a:Lac/p;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)Ln/Q;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v2

    invoke-virtual {p2}, Ln/Q;->f()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v5, v2

    .line 165
    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v2

    invoke-virtual {p2}, Ln/Q;->g()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v4

    div-float/2addr v2, v4

    float-to-int v6, v2

    .line 169
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v4

    .line 170
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v2

    .line 171
    div-int/lit8 v7, v4, 0x2

    .line 172
    div-int/lit8 v8, v2, 0x2

    .line 174
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v4, :cond_3e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v9, v2, :cond_40

    :cond_3e
    move-object v0, v1

    .line 209
    :cond_3f
    :goto_3f
    return-object v0

    .line 185
    :cond_40
    neg-int v1, v7

    if-ge v5, v1, :cond_67

    .line 186
    neg-int v1, v4

    move v4, v1

    .line 192
    :cond_45
    :goto_45
    neg-int v1, v8

    if-ge v6, v1, :cond_6b

    .line 193
    neg-int v1, v2

    .line 198
    :goto_49
    if-nez v1, :cond_4d

    if-eqz v4, :cond_3f

    .line 202
    :cond_4d
    int-to-float v0, v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 203
    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 204
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->d:Ln/Q;

    invoke-virtual {v2, v0, v1}, Ln/Q;->d(II)V

    .line 205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->d:Ln/Q;

    invoke-virtual {p2, v0}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    goto :goto_3f

    .line 187
    :cond_67
    if-gt v5, v7, :cond_45

    move v4, v3

    goto :goto_45

    .line 194
    :cond_6b
    if-le v6, v8, :cond_6f

    move v1, v2

    .line 195
    goto :goto_49

    :cond_6f
    move v1, v3

    goto :goto_49
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ef;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ee;->e:Lcom/google/android/maps/driveabout/vector/ef;

    .line 219
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/eg;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ee;->f:Lcom/google/android/maps/driveabout/vector/eg;

    .line 228
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 7
    .parameter

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->c:I

    if-eq v1, v2, :cond_27

    .line 135
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v2

    invoke-virtual {v2}, Ln/aK;->a()Ln/aL;

    move-result-object v2

    .line 136
    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ee;->a(Ln/Q;Ln/Q;ILn/aL;)V

    .line 150
    :cond_26
    :goto_26
    return-void

    .line 137
    :cond_27
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    invoke-virtual {v2, v0}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 138
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/ee;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)Ln/Q;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_26

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    if-eqz v3, :cond_49

    invoke-virtual {v0, v2}, Ln/Q;->d(Ln/Q;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    invoke-virtual {v0, v4}, Ln/Q;->d(Ln/Q;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_26

    .line 146
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v3

    invoke-virtual {v3}, Ln/aK;->a()Ln/aL;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/ee;->a(Ln/Q;Ln/Q;ILn/aL;)V

    goto :goto_26
.end method

.method a(Ln/Q;Ln/Q;ILn/aL;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ee;->b:Ln/Q;

    .line 73
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ee;->c:I

    .line 75
    invoke-virtual {p1}, Ln/Q;->a()I

    move-result v1

    .line 76
    invoke-virtual {p1}, Ln/Q;->c()I

    move-result v2

    .line 79
    invoke-virtual {p4}, Ln/aL;->e()I

    move-result v0

    int-to-double v3, v0

    int-to-double v5, v1

    const-wide v7, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v5, v7

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x3fd5752a00000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 81
    invoke-virtual {p4}, Ln/aL;->d()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3fd5752a00000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->f:Lcom/google/android/maps/driveabout/vector/eg;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->f:Lcom/google/android/maps/driveabout/vector/eg;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_42
    const/4 v0, 0x1

    .line 91
    :goto_43
    const/4 v5, 0x1

    .line 93
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    :try_start_4e
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 97
    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 98
    invoke-virtual {p2}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 99
    invoke-virtual {p2}, Ln/Q;->c()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 100
    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 101
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 102
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 103
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 104
    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->a:Lac/p;

    const/4 v1, 0x7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lac/p;->a(I[BZZZ)V

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->e:Lcom/google/android/maps/driveabout/vector/ef;

    if-eqz v0, :cond_87

    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ee;->e:Lcom/google/android/maps/driveabout/vector/ef;

    invoke-interface {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/ef;->a(Ln/Q;I)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_87} :catch_8a

    .line 122
    :cond_87
    :goto_87
    return-void

    .line 86
    :cond_88
    const/4 v0, 0x0

    goto :goto_43

    .line 118
    :catch_8a
    move-exception v0

    .line 120
    const-string v1, "view point"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_87
.end method
