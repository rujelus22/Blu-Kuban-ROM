.class public Lcom/google/android/maps/driveabout/vector/ax;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static b:I

.field private static c:I

.field private static d:F

.field private static e:F


# instance fields
.field private final f:Lcom/google/android/maps/driveabout/vector/dY;

.field private final g:Lcom/google/android/maps/driveabout/vector/t;

.field private final h:I

.field private final i:Ln/Q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x3f80

    .line 47
    const/16 v0, 0x4000

    sput v0, Lcom/google/android/maps/driveabout/vector/ax;->b:I

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/ax;->c:I

    .line 57
    sput v1, Lcom/google/android/maps/driveabout/vector/ax;->d:F

    .line 58
    sput v1, Lcom/google/android/maps/driveabout/vector/ax;->e:F

    return-void
.end method

.method private constructor <init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 233
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    .line 234
    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/aU;->D()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/t;-><init>(ILcom/google/android/maps/driveabout/vector/r;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    .line 236
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    .line 237
    const/high16 v0, 0x1

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->h:I

    .line 238
    return-void
.end method

.method private static a(Ln/J;)I
    .registers 2
    .parameter

    .prologue
    .line 181
    invoke-virtual {p0}, Ln/J;->b()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    return v0
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;ILcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/ax;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Ln/am;->h()Ln/aa;

    move-result-object v4

    .line 96
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 99
    const/4 v1, 0x0

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    .line 105
    :goto_12
    invoke-interface {p2}, Ln/aI;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 106
    invoke-interface {p2}, Ln/aI;->b()Ln/l;

    move-result-object v1

    .line 107
    instance-of v0, v1, Ln/J;

    if-eqz v0, :cond_7f

    .line 108
    const/4 v0, 0x1

    if-le v2, v0, :cond_49

    move v0, v2

    .line 162
    :goto_24
    if-gez v0, :cond_27

    .line 163
    const/4 v0, 0x1

    .line 167
    :cond_27
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ax;

    invoke-direct {v1, v3, v0, v5, p4}, Lcom/google/android/maps/driveabout/vector/ax;-><init>(IILjava/util/Set;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 168
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_db

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/l;

    .line 169
    invoke-interface {v0}, Ln/l;->h()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_cc

    .line 170
    check-cast v0, Ln/J;

    invoke-direct {v1, p0, v4, v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(Ln/am;Ln/aa;Ln/J;)V

    goto :goto_30

    .line 111
    :cond_49
    const/4 v2, 0x1

    move-object v0, v1

    .line 112
    check-cast v0, Ln/J;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(Ln/J;)I

    move-result v0

    .line 113
    sget v7, Lcom/google/android/maps/driveabout/vector/ax;->b:I

    if-le v0, v7, :cond_59

    .line 117
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto :goto_12

    .line 120
    :cond_59
    add-int v7, v0, v3

    sget v8, Lcom/google/android/maps/driveabout/vector/ax;->b:I

    if-le v7, v8, :cond_61

    move v0, v2

    .line 121
    goto :goto_24

    .line 123
    :cond_61
    add-int/2addr v0, v3

    .line 124
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    .line 154
    :goto_68
    invoke-interface {v1}, Ln/l;->l()[I

    move-result-object v3

    array-length v7, v3

    const/4 v1, 0x0

    :goto_6e
    if-ge v1, v7, :cond_c5

    aget v8, v3, v1

    .line 155
    if-ltz v8, :cond_7c

    array-length v9, p1

    if-ge v8, v9, :cond_7c

    .line 156
    aget-object v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 125
    :cond_7f
    instance-of v0, v1, Ln/H;

    if-eqz v0, :cond_df

    move-object v0, v1

    check-cast v0, Ln/H;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(Ln/H;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 126
    invoke-interface {v1}, Ln/l;->e()Ln/ag;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->c()F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->b(F)I

    move-result v0

    .line 127
    if-eq v0, v2, :cond_a4

    .line 128
    if-lez v2, :cond_a3

    move v0, v2

    .line 129
    goto :goto_24

    :cond_a3
    move v2, v0

    :cond_a4
    move-object v0, v1

    .line 134
    check-cast v0, Ln/H;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->b(Ln/H;)I

    move-result v0

    .line 135
    sget v7, Lcom/google/android/maps/driveabout/vector/ax;->b:I

    if-le v0, v7, :cond_b4

    .line 139
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    goto/16 :goto_12

    .line 142
    :cond_b4
    add-int v7, v0, v3

    sget v8, Lcom/google/android/maps/driveabout/vector/ax;->b:I

    if-le v7, v8, :cond_bd

    move v0, v2

    .line 143
    goto/16 :goto_24

    .line 145
    :cond_bd
    add-int/2addr v0, v3

    .line 146
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_68

    .line 159
    :cond_c5
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    move v3, v2

    move v2, v0

    .line 160
    goto/16 :goto_12

    .line 171
    :cond_cc
    invoke-interface {v0}, Ln/l;->h()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_30

    .line 172
    check-cast v0, Ln/H;

    invoke-direct {v1, p0, v4, v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(Ln/am;Ln/aa;Ln/H;)V

    goto/16 :goto_30

    .line 175
    :cond_db
    invoke-virtual {v1, p0, p3}, Lcom/google/android/maps/driveabout/vector/ax;->a(Ln/am;I)V

    .line 176
    return-object v1

    :cond_df
    move v0, v2

    goto/16 :goto_24
.end method

.method public static declared-synchronized a(F)V
    .registers 5
    .parameter

    .prologue
    .line 213
    const-class v1, Lcom/google/android/maps/driveabout/vector/ax;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/google/android/maps/driveabout/vector/ax;->e:F

    .line 214
    const/high16 v0, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/ax;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/ax;->e:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/ax;->d:F
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 215
    monitor-exit v1

    return-void

    .line 213
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)V
    .registers 5
    .parameter

    .prologue
    .line 204
    const-class v1, Lcom/google/android/maps/driveabout/vector/ax;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/google/android/maps/driveabout/vector/ax;->c:I

    .line 205
    const/high16 v0, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/ax;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/ax;->e:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/ax;->d:F
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 206
    monitor-exit v1

    return-void

    .line 204
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ln/am;Ln/aa;Ln/H;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 333
    invoke-virtual {p3}, Ln/H;->e()Ln/ag;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_22

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    if-nez v0, :cond_23

    .line 375
    :cond_22
    :goto_22
    return-void

    .line 339
    :cond_23
    invoke-virtual {p3}, Ln/H;->b()Ln/U;

    move-result-object v3

    .line 340
    invoke-virtual {v3}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 345
    mul-int/lit8 v5, v4, 0x2

    .line 350
    invoke-virtual {p2}, Ln/aa;->d()Ln/Q;

    move-result-object v6

    .line 351
    invoke-virtual {p2}, Ln/aa;->g()I

    move-result v7

    move v0, v1

    .line 352
    :goto_38
    if-gt v0, v4, :cond_5b

    .line 353
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-virtual {v3, v0, v8}, Ln/U;->a(ILn/Q;)V

    .line 354
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-static {v8, v6, v9}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 363
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-virtual {v8, v9, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 364
    if-lez v0, :cond_58

    if-ge v0, v4, :cond_58

    .line 365
    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-virtual {v8, v9, v7}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 352
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 373
    :cond_5b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    invoke-virtual {v1}, Ln/af;->b()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/t;->a(II)V

    goto :goto_22
.end method

.method private a(Ln/am;Ln/aa;Ln/J;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-virtual {p3}, Ln/J;->e()Ln/ag;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Ln/ag;->b()I

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->c()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_22

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v0

    invoke-virtual {v0}, Ln/af;->b()I

    move-result v0

    if-nez v0, :cond_23

    .line 324
    :cond_22
    :goto_22
    return-void

    .line 301
    :cond_23
    invoke-virtual {p3}, Ln/J;->b()Ln/U;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Ln/U;->b()I

    move-result v4

    .line 307
    invoke-virtual {p2}, Ln/aa;->d()Ln/Q;

    move-result-object v5

    .line 308
    invoke-virtual {p2}, Ln/aa;->g()I

    move-result v6

    move v0, v1

    .line 309
    :goto_34
    if-ge v0, v4, :cond_4c

    .line 310
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-virtual {v3, v0, v7}, Ln/U;->a(ILn/Q;)V

    .line 311
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-static {v7, v5, v8}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 316
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ax;->i:Ln/Q;

    invoke-virtual {v7, v8, v6}, Lcom/google/android/maps/driveabout/vector/dY;->a(Ln/Q;I)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 322
    :cond_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2, v1}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    invoke-virtual {v1}, Ln/af;->b()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/t;->a(II)V

    goto :goto_22
.end method

.method public static declared-synchronized a(Ln/H;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    const-class v3, Lcom/google/android/maps/driveabout/vector/ax;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Ln/H;->e()Ln/ag;

    move-result-object v4

    .line 192
    invoke-virtual {v4}, Ln/ag;->d()Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ln/ag;->b(I)Ln/af;

    move-result-object v2

    invoke-virtual {v2}, Ln/af;->d()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_35

    move v2, v0

    .line 194
    :goto_1c
    invoke-virtual {v4}, Ln/ag;->b()I

    move-result v5

    if-ne v5, v0, :cond_37

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ln/ag;->b(I)Ln/af;

    move-result-object v4

    invoke-virtual {v4}, Ln/af;->c()F

    move-result v4

    sget v5, Lcom/google/android/maps/driveabout/vector/ax;->d:F
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_39

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_37

    if-nez v2, :cond_37

    :goto_33
    monitor-exit v3

    return v0

    :cond_35
    move v2, v1

    .line 192
    goto :goto_1c

    :cond_37
    move v0, v1

    .line 194
    goto :goto_33

    .line 191
    :catchall_39
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized b(F)I
    .registers 5
    .parameter

    .prologue
    .line 222
    const-class v1, Lcom/google/android/maps/driveabout/vector/ax;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sget v2, Lcom/google/android/maps/driveabout/vector/ax;->c:I

    sget v3, Lcom/google/android/maps/driveabout/vector/ax;->e:F

    mul-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ln/H;)I
    .registers 2
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Ln/H;->b()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 261
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v0

    if-eqz v0, :cond_33

    .line 276
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 277
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->h:I

    if-le v1, v4, :cond_15

    .line 278
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->h:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 280
    :cond_15
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 282
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 283
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/dY;->a()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 284
    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 285
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/r;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 286
    :cond_33
    return-void
.end method

.method public a(Ln/am;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 379
    return-void
.end method

.method public b()I
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ax;->g:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 250
    return-void
.end method
