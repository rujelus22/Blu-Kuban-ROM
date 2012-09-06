.class public Lcom/google/android/maps/driveabout/vector/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private c:[F

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/G;->d:Z

    return-void
.end method

.method private static a(FFFF)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/H;

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/H;->a(Z)V

    goto :goto_6

    .line 161
    :cond_17
    return-void
.end method

.method private a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/H;

    .line 148
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/H;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)V

    goto :goto_6

    .line 150
    :cond_16
    return-void
.end method

.method private b()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 172
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 208
    :goto_b
    return v4

    .line 177
    :cond_c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_16

    move v4, v0

    .line 178
    goto :goto_b

    .line 183
    :cond_16
    const v1, 0x7fffffff

    move v2, v1

    move v3, v4

    move v1, v0

    .line 184
    :goto_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/H;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/H;->b()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 184
    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1c

    .line 189
    :cond_36
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/H;->a()I

    move-result v5

    if-ge v5, v2, :cond_32

    .line 191
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/H;->a()I

    move-result v2

    move v3, v1

    goto :goto_32

    .line 197
    :cond_42
    if-ne v3, v4, :cond_5d

    .line 198
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/G;->a()V

    .line 202
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    if-eq v0, v4, :cond_58

    .line 203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/H;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/H;->a(Z)V

    .line 206
    :cond_58
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/G;->b()I

    move-result v4

    goto :goto_b

    :cond_5d
    move v4, v3

    .line 208
    goto :goto_b
.end method

.method private b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;Ljava/util/List;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    if-nez v0, :cond_e

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 125
    const/high16 v0, 0x41f0

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 127
    mul-int v6, v0, v0

    .line 129
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/e;

    .line 130
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/e;->a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V

    goto :goto_26

    .line 133
    :cond_3c
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/G;->d:Z

    .line 53
    return-void
.end method

.method public a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;Ljava/util/List;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    const/high16 v0, 0x41f0

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 70
    mul-int/2addr v0, v0

    .line 73
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/G;->d:Z

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/G;->c:[F

    aget v4, v4, v2

    invoke-static {v3, v4, p1, p2}, Lcom/google/android/maps/driveabout/vector/G;->a(FFFF)I

    move-result v3

    if-le v3, v0, :cond_4b

    .line 76
    :cond_21
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/G;->d:Z

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/vector/G;->b(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;Ljava/util/List;)V

    move v0, v2

    .line 83
    :goto_27
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    .line 84
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/G;->b()I

    move-result v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    .line 85
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_50

    .line 86
    if-nez v0, :cond_3a

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    if-eq v3, v0, :cond_4a

    .line 87
    :cond_3a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/G;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/G;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/H;

    .line 88
    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/H;->a(Z)V

    .line 89
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/H;->c()V

    .line 93
    :cond_4a
    :goto_4a
    return v2

    .line 80
    :cond_4b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/G;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)V

    move v0, v1

    goto :goto_27

    :cond_50
    move v2, v1

    .line 93
    goto :goto_4a
.end method
