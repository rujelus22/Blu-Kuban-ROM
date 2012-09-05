.class public Lcom/google/android/maps/driveabout/vector/az;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field private static a:I

.field private static b:F

.field private static c:F


# instance fields
.field private final d:Lcom/google/android/maps/driveabout/vector/di;

.field private final e:Lcom/google/android/maps/driveabout/vector/A;

.field private final f:I

.field private final g:Lt/L;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    sput v1, Lcom/google/android/maps/driveabout/vector/az;->b:F

    sput v1, Lcom/google/android/maps/driveabout/vector/az;->c:F

    return-void
.end method

.method private constructor <init>(IILjava/util/Set;)V
    .registers 5

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/A;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    const/high16 v0, 0x1

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:I

    return-void
.end method

.method private static a(Lt/F;)I
    .registers 2

    invoke-virtual {p0}, Lt/F;->b()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    return v0
.end method

.method public static a(Lt/af;[Ljava/lang/String;Lt/ar;)Lcom/google/android/maps/driveabout/vector/az;
    .registers 14

    invoke-virtual {p0}, Lt/af;->i()Lt/V;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    move v2, v0

    move v3, v1

    :goto_12
    invoke-interface {p2}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {p2}, Lt/ar;->b()Lt/l;

    move-result-object v1

    instance-of v0, v1, Lt/F;

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    if-le v2, v0, :cond_49

    move v0, v2

    :goto_24
    if-gez v0, :cond_27

    const/4 v0, 0x1

    :cond_27
    new-instance v1, Lcom/google/android/maps/driveabout/vector/az;

    invoke-direct {v1, v3, v0, v5}, Lcom/google/android/maps/driveabout/vector/az;-><init>(IILjava/util/Set;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    invoke-interface {v0}, Lt/l;->h()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_b7

    check-cast v0, Lt/F;

    invoke-direct {v1, p0, v4, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(Lt/af;Lt/V;Lt/F;)V

    goto :goto_30

    :cond_49
    const/4 v2, 0x1

    move-object v0, v1

    check-cast v0, Lt/F;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->a(Lt/F;)I

    move-result v0

    add-int v7, v0, v3

    const/16 v8, 0x4000

    if-le v7, v8, :cond_59

    move v0, v2

    goto :goto_24

    :cond_59
    add-int/2addr v0, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    :goto_60
    invoke-interface {v1}, Lt/l;->k()[I

    move-result-object v3

    array-length v7, v3

    const/4 v1, 0x0

    :goto_66
    if-ge v1, v7, :cond_b0

    aget v8, v3, v1

    if-ltz v8, :cond_74

    array-length v9, p1

    if-ge v8, v9, :cond_74

    aget-object v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_77
    instance-of v0, v1, Lt/D;

    if-eqz v0, :cond_c7

    move-object v0, v1

    check-cast v0, Lt/D;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->a(Lt/D;)Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-interface {v1}, Lt/l;->e()Lt/Z;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lt/Z;->b(I)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->b(F)I

    move-result v0

    if-eq v0, v2, :cond_98

    if-lez v2, :cond_97

    move v0, v2

    goto :goto_24

    :cond_97
    move v2, v0

    :cond_98
    move-object v0, v1

    check-cast v0, Lt/D;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->b(Lt/D;)I

    move-result v0

    add-int v7, v0, v3

    const/16 v8, 0x4000

    if-le v7, v8, :cond_a8

    move v0, v2

    goto/16 :goto_24

    :cond_a8
    add-int/2addr v0, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_60

    :cond_b0
    invoke-interface {p2}, Lt/ar;->next()Ljava/lang/Object;

    move v3, v2

    move v2, v0

    goto/16 :goto_12

    :cond_b7
    invoke-interface {v0}, Lt/l;->h()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_30

    check-cast v0, Lt/D;

    invoke-direct {v1, p0, v4, v0}, Lcom/google/android/maps/driveabout/vector/az;->a(Lt/af;Lt/V;Lt/D;)V

    goto/16 :goto_30

    :cond_c6
    return-object v1

    :cond_c7
    move v0, v2

    goto/16 :goto_24
.end method

.method public static declared-synchronized a(F)V
    .registers 5

    const-class v1, Lcom/google/android/maps/driveabout/vector/az;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/google/android/maps/driveabout/vector/az;->c:F

    const/high16 v0, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/az;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/az;->c:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/az;->b:F
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(I)V
    .registers 5

    const-class v1, Lcom/google/android/maps/driveabout/vector/az;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    const/high16 v0, 0x3f80

    const/4 v2, 0x5

    sget v3, Lcom/google/android/maps/driveabout/vector/az;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/google/android/maps/driveabout/vector/az;->c:F

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/az;->b:F
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lt/af;Lt/V;Lt/D;)V
    .registers 14

    const/4 v1, 0x0

    invoke-virtual {p3}, Lt/D;->e()Lt/Z;

    move-result-object v2

    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v1}, Lt/Z;->b(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v1}, Lt/Z;->a(I)I

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p3}, Lt/D;->c()Lt/P;

    move-result-object v3

    invoke-virtual {v3}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {p2}, Lt/V;->d()Lt/L;

    move-result-object v6

    invoke-virtual {p2}, Lt/V;->g()I

    move-result v7

    move v0, v1

    :goto_30
    if-gt v0, v4, :cond_53

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-virtual {v3, v0, v8}, Lt/P;->a(ILt/L;)V

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-static {v8, v6, v9}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-virtual {v8, v9, v7}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-lez v0, :cond_50

    if-ge v0, v4, :cond_50

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-virtual {v8, v9, v7}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_53
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v2, v1}, Lt/Z;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/A;->a(II)V

    goto :goto_1a
.end method

.method private a(Lt/af;Lt/V;Lt/F;)V
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p3}, Lt/F;->e()Lt/Z;

    move-result-object v2

    invoke-virtual {v2}, Lt/Z;->c()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v1}, Lt/Z;->b(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v1}, Lt/Z;->a(I)I

    move-result v0

    if-nez v0, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p3}, Lt/F;->b()Lt/P;

    move-result-object v3

    invoke-virtual {v3}, Lt/P;->b()I

    move-result v4

    invoke-virtual {p2}, Lt/V;->d()Lt/L;

    move-result-object v5

    invoke-virtual {p2}, Lt/V;->g()I

    move-result v6

    move v0, v1

    :goto_2c
    if-ge v0, v4, :cond_44

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-virtual {v3, v0, v7}, Lt/P;->a(ILt/L;)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-static {v7, v5, v8}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/az;->g:Lt/L;

    invoke-virtual {v7, v8, v6}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v2, v1}, Lt/Z;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/A;->a(II)V

    goto :goto_1a
.end method

.method public static declared-synchronized a(Lt/D;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v3, Lcom/google/android/maps/driveabout/vector/az;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lt/D;->e()Lt/Z;

    move-result-object v4

    invoke-virtual {v4}, Lt/Z;->g()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lt/Z;->d(I)Lt/Y;

    move-result-object v2

    invoke-virtual {v2}, Lt/Y;->c()[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_31

    move v2, v0

    :goto_1c
    invoke-virtual {v4}, Lt/Z;->c()I

    move-result v5

    if-ne v5, v0, :cond_33

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lt/Z;->b(I)F

    move-result v4

    sget v5, Lcom/google/android/maps/driveabout/vector/az;->b:F
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_35

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_33

    if-nez v2, :cond_33

    :goto_2f
    monitor-exit v3

    return v0

    :cond_31
    move v2, v1

    goto :goto_1c

    :cond_33
    move v0, v1

    goto :goto_2f

    :catchall_35
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method static declared-synchronized b(F)I
    .registers 5

    const-class v1, Lcom/google/android/maps/driveabout/vector/az;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sget v2, Lcom/google/android/maps/driveabout/vector/az;->a:I

    sget v3, Lcom/google/android/maps/driveabout/vector/az;->c:F

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

.method private static b(Lt/D;)I
    .registers 2

    invoke-virtual {p0}, Lt/D;->c()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 9

    const/high16 v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:I

    if-le v1, v4, :cond_16

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:I

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    :cond_16
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/A;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/A;->e(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_a
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x78

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/A;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:Lcom/google/android/maps/driveabout/vector/A;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/A;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method
