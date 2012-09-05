.class public Lcom/google/android/maps/driveabout/vector/bb;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final t:Ljava/lang/ThreadLocal;

.field private static final u:[I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static final y:[[I


# instance fields
.field private final b:Lt/L;

.field private final c:Lt/L;

.field private final d:Lt/L;

.field private final e:Lt/L;

.field private final f:Lt/L;

.field private final g:Lt/L;

.field private final h:Lt/L;

.field private final i:Lt/L;

.field private final j:Lt/L;

.field private final k:Lt/L;

.field private final l:Lt/ak;

.field private final m:Lt/ak;

.field private final n:Lt/ak;

.field private final o:Lt/ak;

.field private final p:Lt/ak;

.field private final q:Lt/ak;

.field private final r:Lt/ak;

.field private final s:Lt/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x8

    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bc;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bc;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->t:Ljava/lang/ThreadLocal;

    new-array v0, v2, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->u:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->v:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->w:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->x:[I

    const/16 v0, 0x10

    new-array v0, v0, [[I

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bb;->y:[[I

    return-void

    :array_38
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
    .end array-data

    :array_4c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_60
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data

    :array_6c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->g:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->j:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->k:Lt/L;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->l:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->m:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->n:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->o:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->p:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->q:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->r:Lt/ak;

    new-instance v0, Lt/ak;

    invoke-direct {v0}, Lt/ak;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->s:Lt/ak;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bc;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bb;-><init>()V

    return-void
.end method

.method public static a(Lt/P;)I
    .registers 3

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x6

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_a
.end method

.method public static a()Lcom/google/android/maps/driveabout/vector/bb;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bb;->t:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bb;

    return-object v0
.end method

.method private a(Lt/L;Lt/L;FIZLcom/google/android/maps/driveabout/vector/di;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    invoke-static {p2, p1, v0}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v0, p3, v1}, Lt/N;->a(Lt/L;FLt/L;)V

    invoke-static {p1, v1, v0}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {p1, v1, v0}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {p2, v1, v0}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {p2, v1, v0}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p6, v0, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p5, :cond_27

    invoke-virtual {p6, p2, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    :cond_27
    return-void
.end method

.method private static a(I)[I
    .registers 8

    const v6, 0x8000

    const/high16 v5, 0x1

    const/4 v1, 0x0

    mul-int/lit8 v0, p0, 0x5

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [I

    div-int v0, v6, p0

    move v2, v0

    move v0, v1

    :goto_10
    array-length v4, v3

    if-ge v0, v4, :cond_3f

    aput v1, v3, v0

    add-int/lit8 v4, v0, 0x1

    aput v2, v3, v4

    add-int/lit8 v4, v0, 0x2

    aput v5, v3, v4

    add-int/lit8 v4, v0, 0x3

    aput v2, v3, v4

    add-int/lit8 v4, v0, 0x4

    aput v5, v3, v4

    add-int/lit8 v4, v0, 0x5

    aput v2, v3, v4

    add-int/lit8 v4, v0, 0x6

    aput v1, v3, v4

    add-int/lit8 v4, v0, 0x7

    aput v2, v3, v4

    add-int/lit8 v4, v0, 0x8

    aput v6, v3, v4

    add-int/lit8 v4, v0, 0x9

    aput v2, v3, v4

    div-int v4, v5, p0

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0xa

    goto :goto_10

    :cond_3f
    return-object v3
.end method

.method public static b(Lt/P;)I
    .registers 3

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xc

    :goto_b
    return v0

    :cond_c
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x6

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_b
.end method

.method private b(Lt/P;FLt/L;ILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/bu;ZZ)V
    .registers 20

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/bb;->g:Lt/L;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lt/L;

    const/4 v9, 0x0

    invoke-virtual {p1, v9, p3, v2}, Lt/P;->a(ILt/L;Lt/L;)V

    const/4 v9, 0x1

    invoke-virtual {p1, v9, p3, v3}, Lt/P;->a(ILt/L;Lt/L;)V

    invoke-static {v3, v2, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v4, p2, v5}, Lt/N;->a(Lt/L;FLt/L;)V

    invoke-static {v5, v6}, Lt/N;->a(Lt/L;Lt/L;)V

    if-eqz p8, :cond_28

    invoke-static {v2, v6, v2}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    :cond_28
    if-eqz p9, :cond_2d

    invoke-static {v3, v6, v3}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    :cond_2d
    invoke-static {v2, v5, v8}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v2, v5, v8}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v2, v3, v7}, Lt/N;->e(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v7, v5, v8}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v7, v5, v8}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v3, v5, v8}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v3, v5, v8}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {p5, v8, p4}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    const/high16 v2, -0x4180

    invoke-virtual {v4}, Lt/L;->i()F

    move-result v3

    div-float/2addr v3, p2

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    const/high16 v3, 0x4780

    mul-float/2addr v2, v3

    float-to-int v2, v2

    if-eqz p8, :cond_af

    const/4 v3, 0x0

    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/high16 v3, 0x1

    const/high16 v4, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :goto_76
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/high16 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    if-eqz p9, :cond_bd

    const/4 v2, 0x0

    const/high16 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/high16 v2, 0x1

    const/high16 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :goto_96
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, v1, 0x4

    add-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    return-void

    :cond_af
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/high16 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    goto :goto_76

    :cond_bd
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/high16 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    goto :goto_96
.end method

.method private static b(I)[I
    .registers 3

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bb;->y:[[I

    aget-object v0, v0, p0

    if-nez v0, :cond_10

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bb;->y:[[I

    const/4 v1, 0x1

    shl-int/2addr v1, p0

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bb;->a(I)[I

    move-result-object v1

    aput-object v1, v0, p0

    :cond_10
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bb;->y:[[I

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public a(IZI[ILcom/google/android/maps/driveabout/vector/cp;)V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/lit8 v3, p1, -0x1

    if-eqz p2, :cond_29

    const/4 v0, 0x5

    :goto_7
    mul-int/2addr v3, v0

    invoke-virtual {p5}, Lcom/google/android/maps/driveabout/vector/cp;->b()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p5, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/bb;->b(I)[I

    move-result-object v3

    if-eqz p4, :cond_19

    array-length v4, p4

    if-ne v4, v2, :cond_2e

    :cond_19
    if-nez p4, :cond_2b

    :goto_1b
    if-ge v2, p1, :cond_3f

    mul-int/lit8 v4, v1, 0x5

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {p5, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/cp;->a([III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_29
    const/4 v0, 0x4

    goto :goto_7

    :cond_2b
    aget v1, p4, v1

    goto :goto_1b

    :cond_2e
    move v1, v2

    :goto_2f
    if-ge v1, p1, :cond_3f

    aget v2, p4, v1

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p5, v3, v2, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3f
    return-void
.end method

.method public a(Lt/P;FFLt/L;IIILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V
    .registers 46

    invoke-virtual/range {p1 .. p1}, Lt/P;->b()I

    move-result v18

    const/4 v3, 0x1

    move/from16 v0, v18

    if-gt v0, v3, :cond_a

    :cond_9
    return-void

    :cond_a
    add-int/lit8 v3, v18, -0x1

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v8

    mul-int/lit8 v4, v18, 0x5

    invoke-virtual/range {p1 .. p1}, Lt/P;->e()Z

    move-result v19

    add-int v5, v8, v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/di;->a(I)V

    if-eqz p10, :cond_29

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/cp;->b()I

    move-result v5

    add-int/2addr v4, v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    :cond_29
    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x6

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->g:Lt/L;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lt/L;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->l:Lt/ak;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->m:Lt/ak;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->n:Lt/ak;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->o:Lt/ak;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->p:Lt/ak;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->q:Lt/ak;

    move-object/from16 v32, v0

    const/4 v6, -0x1

    const/4 v5, -0x1

    const/4 v7, -0x1

    const/4 v4, -0x1

    const/4 v10, -0x1

    add-float v3, p2, p3

    move/from16 v0, p6

    int-to-float v9, v0

    mul-float v9, v9, p3

    move/from16 v0, p7

    int-to-float v11, v0

    mul-float v11, v11, p2

    add-float/2addr v9, v11

    div-float v3, v9, v3

    float-to-int v0, v3

    move/from16 v33, v0

    const/4 v3, 0x0

    move v11, v3

    move v12, v10

    move v13, v4

    move v14, v7

    move v4, v8

    :goto_9d
    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2}, Lt/P;->a(ILt/L;Lt/L;)V

    add-int/lit8 v7, v11, -0x1

    add-int/lit8 v3, v11, 0x1

    if-eqz v19, :cond_3dd

    if-gez v7, :cond_b4

    add-int/lit8 v7, v18, -0x2

    :cond_b4
    move/from16 v0, v18

    if-lt v3, v0, :cond_3dd

    const/4 v3, 0x1

    move v8, v3

    move v3, v7

    :goto_bb
    if-ltz v3, :cond_1d5

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Lt/P;->a(ILt/L;Lt/L;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bb;->r:Lt/ak;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lt/ak;->a(Lt/L;Lt/L;)Lt/ak;

    move-result-object v3

    move-object v7, v3

    :goto_d3
    move/from16 v0, v18

    if-ge v8, v0, :cond_1d9

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lt/P;->a(ILt/L;Lt/L;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bb;->s:Lt/ak;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Lt/ak;->a(Lt/L;Lt/L;)Lt/ak;

    move-result-object v3

    move-object v8, v3

    :goto_ed
    const/4 v3, 0x1

    if-eqz v7, :cond_1e2

    if-eqz v8, :cond_1e2

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->d()Lt/ak;

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->d()Lt/ak;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lt/ak;->b(Lt/ak;)Lt/ak;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Lt/ak;->b(FF)Z

    move-result v9

    if-eqz v9, :cond_1dd

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->e()Lt/ak;

    move/from16 v17, v3

    :goto_128
    if-eqz v17, :cond_20a

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    move/from16 v0, p2

    neg-float v7, v0

    invoke-virtual {v3, v7}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p10, :cond_179

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :cond_179
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    move v8, v5

    move v9, v6

    move v10, v7

    move v7, v3

    move v5, v3

    move v6, v4

    move v3, v4

    :goto_184
    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p10, :cond_19c

    const/16 v16, 0x0

    move-object/from16 v0, p10

    move/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :cond_19c
    if-eqz v19, :cond_3d9

    add-int/lit8 v16, v18, -0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_3d9

    const/16 v16, 0x1

    :goto_1a6
    if-nez v17, :cond_1b4

    if-nez v16, :cond_1b4

    move-object/from16 v0, p9

    invoke-virtual {v0, v9, v10, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v10, v8, v3}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :cond_1b4
    if-lez v11, :cond_1ca

    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v12, v10}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v12, v14, v10}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v10, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v10, v14, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :cond_1ca
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    move v12, v10

    move v13, v4

    move v14, v7

    move v5, v8

    move v6, v9

    move v4, v15

    goto/16 :goto_9d

    :cond_1d5
    const/4 v3, 0x0

    move-object v7, v3

    goto/16 :goto_d3

    :cond_1d9
    const/4 v3, 0x0

    move-object v8, v3

    goto/16 :goto_ed

    :cond_1dd
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_128

    :cond_1e2
    if-eqz v7, :cond_1f5

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->e()Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->d()Lt/ak;

    move/from16 v17, v3

    goto/16 :goto_128

    :cond_1f5
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->e()Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->d()Lt/ak;

    move-result-object v9

    invoke-virtual {v9}, Lt/ak;->a()Lt/ak;

    move/from16 v17, v3

    goto/16 :goto_128

    :cond_20a
    invoke-virtual/range {v29 .. v29}, Lt/ak;->d()Lt/ak;

    invoke-virtual {v7, v8}, Lt/ak;->d(Lt/ak;)Z

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->e()Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->d()Lt/ak;

    invoke-virtual/range {v29 .. v30}, Lt/ak;->c(Lt/ak;)F

    move-result v6

    if-eqz v5, :cond_31c

    move/from16 v3, p2

    :goto_226
    neg-float v6, v6

    div-float/2addr v3, v6

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v6

    invoke-virtual {v6, v3}, Lt/ak;->a(F)Lt/ak;

    invoke-virtual {v7}, Lt/ak;->c()F

    move-result v6

    invoke-virtual {v8}, Lt/ak;->c()F

    move-result v9

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lt/ak;->c(Lt/ak;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v6

    if-gtz v10, :cond_257

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Lt/ak;->c(Lt/ak;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v9

    if-lez v10, :cond_25f

    :cond_257
    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_25f
    if-eqz v5, :cond_320

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v5

    move/from16 v0, p3

    neg-float v6, v0

    invoke-virtual {v5, v6}, Lt/ak;->a(F)Lt/ak;

    move-result-object v5

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v5, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v5

    neg-float v3, v3

    invoke-virtual {v5, v3}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->e()Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->d()Lt/ak;

    move-result-object v3

    move/from16 v0, p3

    neg-float v5, v0

    invoke-virtual {v3, v5}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->e()Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->d()Lt/ak;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p10, :cond_308

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :cond_308
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v7, v5, 0x1

    move v8, v5

    move v9, v6

    move v10, v7

    move v7, v6

    move v6, v3

    move/from16 v34, v3

    move v3, v4

    move/from16 v4, v34

    goto/16 :goto_184

    :cond_31c
    move/from16 v3, p3

    goto/16 :goto_226

    :cond_320
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v5

    invoke-virtual {v5, v3}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    move/from16 v0, p2

    neg-float v5, v0

    invoke-virtual {v3, v5}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->e()Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->d()Lt/ak;

    move-result-object v3

    move/from16 v0, p2

    neg-float v5, v0

    invoke-virtual {v3, v5}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lt/ak;->a(Lt/ak;)Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->e()Lt/ak;

    move-result-object v3

    invoke-virtual {v3}, Lt/ak;->d()Lt/ak;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lt/ak;->a(F)Lt/ak;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v3, v1}, Lt/ak;->a(Lt/L;Lt/ak;Lt/L;)Lt/L;

    move-object/from16 v0, p8

    move-object/from16 v1, v23

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v25

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p10, :cond_3c6

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p7

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(II)V

    :cond_3c6
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v7, v3, 0x1

    move v8, v3

    move v9, v6

    move v10, v7

    move v7, v5

    move/from16 v34, v3

    move v3, v4

    move/from16 v4, v34

    goto/16 :goto_184

    :cond_3d9
    const/16 v16, 0x0

    goto/16 :goto_1a6

    :cond_3dd
    move v8, v3

    move v3, v7

    goto/16 :goto_bb
.end method

.method public a(Lt/P;FLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/cp;)V
    .registers 26

    invoke-virtual/range {p1 .. p1}, Lt/P;->b()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v8

    mul-int/lit8 v2, v7, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(I)V

    if-eqz p8, :cond_42

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/cp;->b()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    if-eqz p9, :cond_42

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/cp;->b()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p3

    invoke-static {v5, v0, v5}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    const/4 v3, 0x0

    const/4 v2, 0x1

    move v15, v2

    move v2, v3

    move v3, v15

    :goto_52
    if-ge v3, v6, :cond_e1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p3

    invoke-static {v4, v0, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v4, v5, v9}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move/from16 v0, p2

    neg-float v12, v0

    invoke-static {v9, v12, v10}, Lt/N;->a(Lt/L;FLt/L;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v5, v10, v11}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v11, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v4, v10, v11}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v11, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    if-eqz p8, :cond_da

    invoke-virtual {v9}, Lt/L;->i()F

    move-result v12

    move/from16 v0, p4

    int-to-float v13, v0

    div-float/2addr v12, v13

    mul-float v12, v12, p5

    const/4 v13, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v13, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    const/high16 v13, 0x3f80

    move-object/from16 v0, p8

    invoke-virtual {v0, v13, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    if-eqz p9, :cond_b7

    const/4 v13, 0x0

    sget v14, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v14}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    sget v13, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    sget v14, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    mul-float/2addr v14, v2

    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v14}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :cond_b7
    add-float/2addr v2, v12

    const/high16 v12, 0x3f80

    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    const/4 v12, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v12, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    if-eqz p9, :cond_da

    sget v12, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    sget v13, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p9

    invoke-virtual {v0, v12, v13}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    const/4 v12, 0x0

    sget v13, Lcom/google/android/maps/driveabout/vector/bb;->a:F

    mul-float/2addr v13, v2

    move-object/from16 v0, p9

    invoke-virtual {v0, v12, v13}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :cond_da
    add-int/lit8 v3, v3, 0x1

    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    goto/16 :goto_52

    :cond_e1
    mul-int/lit8 v2, v7, 0x2

    add-int/lit8 v3, v7, -0x1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v6

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v6

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/bu;->a(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    const/4 v2, 0x0

    :goto_ff
    mul-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v8

    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_11e

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :goto_119
    add-int/lit8 v11, v7, -0x1

    if-ne v2, v11, :cond_131

    return-void

    :cond_11e
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v10, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    add-int/lit8 v11, v10, 0x3

    add-int/lit8 v12, v10, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    goto :goto_119

    :cond_131
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v11, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Lt/P;->a(ILt/L;)V

    invoke-static {v4, v5, v6}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v3, v4, v9}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v6, v9}, Lt/N;->c(Lt/L;Lt/L;)J

    move-result-wide v11

    long-to-float v11, v11

    mul-float v11, v11, p2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_168

    add-int/lit8 v11, v10, 0x4

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_16b

    add-int/lit8 v12, v10, 0x3

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :cond_168
    :goto_168
    add-int/lit8 v2, v2, 0x1

    goto :goto_ff

    :cond_16b
    add-int/lit8 v12, v10, 0x2

    add-int/lit8 v10, v10, 0x3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v12, v10, v11}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    goto :goto_168
.end method

.method public a(Lt/P;FLt/L;ILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/bu;ZZ)V
    .registers 32

    const/high16 v2, 0x3f80

    cmpg-float v2, p2, v2

    if-gez v2, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lt/P;->b()I

    move-result v9

    const/4 v2, 0x2

    if-ne v9, v2, :cond_12

    invoke-direct/range {p0 .. p9}, Lcom/google/android/maps/driveabout/vector/bb;->b(Lt/P;FLt/L;ILcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/bu;ZZ)V

    goto :goto_6

    :cond_12
    const/4 v2, 0x2

    if-lt v9, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/bb;->g:Lt/L;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->h:Lt/L;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bb;->i:Lt/L;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bb;->j:Lt/L;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bb;->k:Lt/L;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v10}, Lt/P;->a(ILt/L;Lt/L;)V

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v11}, Lt/P;->a(ILt/L;Lt/L;)V

    invoke-static {v11, v10, v13}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move/from16 v0, p2

    invoke-static {v13, v0, v15}, Lt/N;->a(Lt/L;FLt/L;)V

    invoke-static {v15, v5}, Lt/N;->a(Lt/L;Lt/L;)V

    invoke-static {v10, v5, v10}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v10, v15, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v10, v15, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v10, v5, v10}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v10, v15, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v10, v15, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bb;->u:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a([I)V

    if-eqz p8, :cond_1af

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v2, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    :goto_a2
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v8, v2, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    add-int/lit8 v7, v2, 0x4

    mul-float v18, p2, p2

    const/4 v2, 0x1

    move v8, v2

    :goto_b5
    add-int/lit8 v2, v9, -0x1

    if-ge v8, v2, :cond_1d0

    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v12}, Lt/P;->a(ILt/L;Lt/L;)V

    invoke-static {v12, v11, v14}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Lt/N;->a(Lt/L;FLt/L;)V

    invoke-static {v13, v14}, Lt/N;->c(Lt/L;Lt/L;)J

    move-result-wide v2

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_1be

    const/4 v2, 0x1

    :goto_d7
    const/4 v6, 0x1

    invoke-static/range {v15 .. v17}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    invoke-static/range {v16 .. v17}, Lt/L;->b(Lt/L;Lt/L;)F

    move-result v3

    const/high16 v19, 0x3f80

    cmpl-float v19, v3, v19

    if-lez v19, :cond_228

    invoke-static {v13, v14}, Lt/L;->b(Lt/L;Lt/L;)F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_228

    div-float v3, v18, v3

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1}, Lt/L;->a(Lt/L;FLt/L;)V

    move-object/from16 v0, v17

    invoke-static {v11, v0, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, v17

    invoke-static {v11, v0, v5}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    if-eqz v2, :cond_1c1

    move-object v3, v4

    :goto_105
    invoke-static {v11, v10, v3}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v19

    const/high16 v20, 0x3f00

    cmpg-float v19, v19, v20

    if-gez v19, :cond_228

    invoke-static {v11, v12, v3}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v3

    const/high16 v19, 0x3f00

    cmpg-float v3, v3, v19

    if-gez v3, :cond_228

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/bb;->w:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cp;->a([I)V

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v6, v7, 0x2

    add-int/lit8 v19, v7, 0x3

    move-object/from16 v0, p7

    move/from16 v1, v19

    invoke-virtual {v0, v7, v3, v6, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    add-int/lit8 v6, v7, 0x2

    const/4 v3, 0x0

    move/from16 v21, v3

    move v3, v6

    move/from16 v6, v21

    :goto_143
    if-eqz v6, :cond_225

    invoke-static {v11, v15, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    invoke-static {v11, v15, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v11, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, v16

    invoke-static {v11, v0, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    sget-object v6, Lcom/google/android/maps/driveabout/vector/bb;->x:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cp;->a([I)V

    if-eqz v2, :cond_1c4

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v3, 0x4

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :goto_18c
    add-int/lit8 v2, v3, 0x3

    add-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v3, 0x5

    add-int/lit8 v19, v3, 0x6

    move-object/from16 v0, p7

    move/from16 v1, v19

    invoke-virtual {v0, v2, v6, v7, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    add-int/lit8 v2, v3, 0x5

    :goto_19d
    invoke-virtual/range {v15 .. v16}, Lt/L;->b(Lt/L;)V

    invoke-virtual {v13, v14}, Lt/L;->b(Lt/L;)V

    invoke-virtual {v10, v11}, Lt/L;->b(Lt/L;)V

    invoke-virtual {v11, v12}, Lt/L;->b(Lt/L;)V

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v7, v2

    goto/16 :goto_b5

    :cond_1af
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v2, 0x2

    add-int/lit8 v8, v2, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    goto/16 :goto_a2

    :cond_1be
    const/4 v2, 0x0

    goto/16 :goto_d7

    :cond_1c1
    move-object v3, v5

    goto/16 :goto_105

    :cond_1c4
    add-int/lit8 v2, v3, 0x0

    add-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v3, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    goto :goto_18c

    :cond_1d0
    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lt/N;->a(Lt/L;Lt/L;)V

    invoke-static {v12, v5, v12}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lt/N;->c(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    move-object/from16 v0, v16

    invoke-static {v12, v0, v4}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(Lt/L;I)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/bb;->v:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cp;->a([I)V

    if-eqz p9, :cond_21e

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v3, v7, 0x2

    add-int/lit8 v4, v7, 0x3

    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    goto/16 :goto_6

    :cond_21e
    move-object/from16 v0, p7

    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(IIII)V

    goto/16 :goto_6

    :cond_225
    move v2, v3

    goto/16 :goto_19d

    :cond_228
    move v3, v7

    goto/16 :goto_143
.end method

.method public a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V
    .registers 27

    invoke-virtual/range {p1 .. p1}, Lt/P;->b()I

    move-result v11

    add-int/lit8 v12, v11, -0x1

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v13

    if-eqz p3, :cond_9a

    const/4 v1, 0x5

    move v8, v1

    :goto_e
    mul-int v14, v8, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bb;->b:Lt/L;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bb;->c:Lt/L;

    invoke-virtual/range {p7 .. p7}, Lcom/google/android/maps/driveabout/vector/di;->b()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;->a(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    if-eqz p9, :cond_36

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/maps/driveabout/vector/cp;->b()I

    move-result v1

    add-int/2addr v1, v14

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(I)V

    :cond_36
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p4

    invoke-static {v2, v0, v2}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    const/4 v9, 0x0

    const/4 v1, 0x1

    move v10, v1

    :goto_44
    if-ge v10, v11, :cond_9e

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v3}, Lt/P;->a(ILt/L;)V

    move-object/from16 v0, p4

    invoke-static {v3, v0, v3}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p5

    move/from16 v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/L;Lt/L;FIZLcom/google/android/maps/driveabout/vector/di;)V

    if-eqz p9, :cond_15b

    invoke-static {v3, v2, v15}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {v15}, Lt/L;->i()F

    move-result v1

    move/from16 v0, p5

    int-to-float v4, v0

    div-float/2addr v1, v4

    mul-float v1, v1, p6

    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    const/high16 v4, 0x3f80

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    add-float/2addr v1, v9

    const/high16 v4, 0x3f80

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    if-eqz p3, :cond_90

    const/high16 v4, 0x3f00

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :cond_90
    :goto_90
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v9, v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_44

    :cond_9a
    const/4 v1, 0x4

    move v8, v1

    goto/16 :goto_e

    :cond_9e
    if-eqz p8, :cond_15a

    add-int v1, v13, v14

    const/16 v4, 0x7fff

    if-le v1, v4, :cond_c5

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required, but we can only store "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x7fff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/bb;->d:Lt/L;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/bb;->e:Lt/L;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/bb;->f:Lt/L;

    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v4, v12, -0x1

    if-eqz p3, :cond_ff

    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v9

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v9

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(I)V

    :goto_e4
    const/4 v1, 0x0

    :goto_e5
    if-ge v1, v12, :cond_10c

    mul-int v4, v1, v8

    add-int/2addr v4, v13

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v4, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v9, v10}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    add-int/lit8 v9, v4, 0x2

    add-int/lit8 v10, v4, 0x3

    move-object/from16 v0, p8

    invoke-virtual {v0, v4, v9, v10}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_ff
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/maps/driveabout/vector/bu;->b()I

    move-result v4

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v4

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;->a(I)V

    goto :goto_e4

    :cond_10c
    if-eqz p3, :cond_15a

    const/4 v1, 0x0

    move v4, v1

    :goto_110
    add-int/lit8 v1, v12, -0x1

    if-ge v4, v1, :cond_15a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v1, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v1, v4, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Lt/P;->a(ILt/L;)V

    invoke-static {v3, v2, v6}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v5, v3, v7}, Lt/N;->d(Lt/L;Lt/L;Lt/L;)V

    invoke-static {v6, v7}, Lt/N;->c(Lt/L;Lt/L;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_14e

    const/4 v1, 0x1

    :goto_138
    mul-int/lit8 v8, v4, 0x5

    add-int/2addr v8, v13

    add-int/lit8 v9, v8, 0x5

    if-eqz v1, :cond_150

    add-int/lit8 v1, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v9, v8}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    :goto_14a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_110

    :cond_14e
    const/4 v1, 0x0

    goto :goto_138

    :cond_150
    add-int/lit8 v1, v8, 0x3

    add-int/lit8 v8, v8, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/maps/driveabout/vector/bu;->a(III)V

    goto :goto_14a

    :cond_15a
    return-void

    :cond_15b
    move v1, v9

    goto/16 :goto_90
.end method
