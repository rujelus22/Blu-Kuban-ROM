.class public final Lag;
.super Ljava/lang/Object;


# static fields
.field static final a:Lag;


# instance fields
.field protected b:Lag;

.field protected final c:Z

.field protected final d:Z

.field protected e:[Ljava/lang/String;

.field protected f:[Lah;

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lag;

    invoke-direct {v0}, Lag;-><init>()V

    sput-object v0, Lag;->a:Lag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lag;->d:Z

    iput-boolean v0, p0, Lag;->c:Z

    iput-boolean v0, p0, Lag;->j:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lag;->a(I)V

    return-void
.end method

.method private constructor <init>(Lag;ZZ[Ljava/lang/String;[Lah;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag;->b:Lag;

    iput-boolean p2, p0, Lag;->d:Z

    iput-boolean p3, p0, Lag;->c:Z

    iput-object p4, p0, Lag;->e:[Ljava/lang/String;

    iput-object p5, p0, Lag;->f:[Lah;

    iput p6, p0, Lag;->g:I

    array-length v0, p4

    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lag;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lag;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lag;->j:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_16

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    return v1
.end method

.method private static a([CII)I
    .registers 6

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/4 v0, 0x1

    :goto_4
    if-ge v0, p2, :cond_e

    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return v1
.end method

.method public static a()Lag;
    .registers 7

    const/4 v2, 0x1

    sget-object v3, Lag;->a:Lag;

    new-instance v0, Lag;

    const/4 v1, 0x0

    iget-object v4, v3, Lag;->e:[Ljava/lang/String;

    iget-object v5, v3, Lag;->f:[Lah;

    iget v6, v3, Lag;->g:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lag;-><init>(Lag;ZZ[Ljava/lang/String;[Lah;I)V

    return-object v0
.end method

.method private a(I)V
    .registers 3

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lag;->e:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Lah;

    iput-object v0, p0, Lag;->f:[Lah;

    const/16 v0, 0x3f

    iput v0, p0, Lag;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lag;->g:I

    const/16 v0, 0x30

    iput v0, p0, Lag;->h:I

    return-void
.end method

.method private declared-synchronized a(Lag;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p1, Lag;->g:I

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_11

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lag;->a(I)V

    :goto_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lag;->j:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2c

    :cond_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget v0, p1, Lag;->g:I

    iget v1, p0, Lag;->g:I

    if-le v0, v1, :cond_f

    iget-object v0, p1, Lag;->e:[Ljava/lang/String;

    iput-object v0, p0, Lag;->e:[Ljava/lang/String;

    iget-object v0, p1, Lag;->f:[Lah;

    iput-object v0, p0, Lag;->f:[Lah;

    iget v0, p1, Lag;->g:I

    iput v0, p0, Lag;->g:I

    iget v0, p1, Lag;->h:I

    iput v0, p0, Lag;->h:I

    iget v0, p1, Lag;->i:I

    iput v0, p0, Lag;->i:I
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 13

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lag;->e:[Ljava/lang/String;

    array-length v3, v0

    add-int v0, v3, v3

    const/high16 v2, 0x1

    if-le v0, v2, :cond_1b

    iput v1, p0, Lag;->g:I

    iget-object v0, p0, Lag;->e:[Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lag;->f:[Lah;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lag;->j:Z

    :cond_1a
    return-void

    :cond_1b
    iget-object v4, p0, Lag;->e:[Ljava/lang/String;

    iget-object v5, p0, Lag;->f:[Lah;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lag;->e:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Lah;

    iput-object v2, p0, Lag;->f:[Lah;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lag;->i:I

    iget v0, p0, Lag;->h:I

    iget v2, p0, Lag;->h:I

    add-int/2addr v0, v2

    iput v0, p0, Lag;->h:I

    move v2, v1

    move v0, v1

    :goto_36
    if-ge v2, v3, :cond_62

    aget-object v6, v4, v2

    if-eqz v6, :cond_4f

    add-int/lit8 v0, v0, 0x1

    invoke-static {v6}, Lag;->a(Ljava/lang/String;)I

    move-result v7

    iget v8, p0, Lag;->i:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lag;->e:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-nez v8, :cond_52

    iget-object v8, p0, Lag;->e:[Ljava/lang/String;

    aput-object v6, v8, v7

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_52
    shr-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lag;->f:[Lah;

    new-instance v9, Lah;

    iget-object v10, p0, Lag;->f:[Lah;

    aget-object v10, v10, v7

    invoke-direct {v9, v6, v10}, Lah;-><init>(Ljava/lang/String;Lah;)V

    aput-object v9, v8, v7

    goto :goto_4f

    :cond_62
    shr-int/lit8 v4, v3, 0x1

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_67
    if-ge v0, v4, :cond_9e

    aget-object v2, v5, v0

    :goto_6b
    if-eqz v2, :cond_9b

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lag;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lag;->i:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lag;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_8b

    iget-object v7, p0, Lag;->e:[Ljava/lang/String;

    aput-object v1, v7, v6

    :goto_84
    invoke-virtual {v2}, Lah;->b()Lah;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    goto :goto_6b

    :cond_8b
    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lag;->f:[Lah;

    new-instance v8, Lah;

    iget-object v9, p0, Lag;->f:[Lah;

    aget-object v9, v9, v6

    invoke-direct {v8, v1, v9}, Lah;-><init>(Ljava/lang/String;Lah;)V

    aput-object v8, v7, v6

    goto :goto_84

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_9e
    iget v0, p0, Lag;->g:I

    if-eq v1, v0, :cond_1a

    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lag;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries; now have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(ZZ)Lag;
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Lag;

    iget-object v4, p0, Lag;->e:[Ljava/lang/String;

    iget-object v5, p0, Lag;->f:[Lah;

    iget v6, p0, Lag;->g:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lag;-><init>(Lag;ZZ[Ljava/lang/String;[Lah;I)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([CIII)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    if-gtz p3, :cond_6

    const-string v1, ""

    :goto_5
    return-object v1

    :cond_6
    iget-boolean v0, p0, Lag;->d:Z

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5

    :cond_10
    iget v0, p0, Lag;->i:I

    and-int v2, p4, v0

    iget-object v0, p0, Lag;->e:[Ljava/lang/String;

    aget-object v3, v0, v2

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_33

    move v0, v1

    :cond_21
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, p2, v0

    aget-char v5, p1, v5

    if-ne v4, v5, :cond_2f

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_21

    :cond_2f
    if-ne v0, p3, :cond_33

    move-object v1, v3

    goto :goto_5

    :cond_33
    iget-object v0, p0, Lag;->f:[Lah;

    shr-int/lit8 v3, v2, 0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_43

    invoke-virtual {v0, p1, p2, p3}, Lah;->a([CII)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    move-object v1, v0

    goto :goto_5

    :cond_43
    iget-boolean v0, p0, Lag;->j:Z

    if-nez v0, :cond_83

    iget-object v0, p0, Lag;->e:[Ljava/lang/String;

    array-length v3, v0

    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lag;->e:[Ljava/lang/String;

    iget-object v4, p0, Lag;->e:[Ljava/lang/String;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lag;->f:[Lah;

    array-length v3, v0

    new-array v4, v3, [Lah;

    iput-object v4, p0, Lag;->f:[Lah;

    iget-object v4, p0, Lag;->f:[Lah;

    invoke-static {v0, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lag;->j:Z

    move v0, v2

    :goto_63
    iget v1, p0, Lag;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lag;->g:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v2, p0, Lag;->c:Z

    if-eqz v2, :cond_78

    sget-object v2, Lorg/codehaus/jackson/util/InternCache;->a:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, v1}, Lorg/codehaus/jackson/util/InternCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_78
    iget-object v2, p0, Lag;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_94

    iget-object v2, p0, Lag;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto :goto_5

    :cond_83
    iget v0, p0, Lag;->g:I

    iget v1, p0, Lag;->h:I

    if-lt v0, v1, :cond_a5

    invoke-direct {p0}, Lag;->c()V

    invoke-static {p1, p2, p3}, Lag;->a([CII)I

    move-result v0

    iget v1, p0, Lag;->i:I

    and-int/2addr v0, v1

    goto :goto_63

    :cond_94
    shr-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lag;->f:[Lah;

    new-instance v3, Lah;

    iget-object v4, p0, Lag;->f:[Lah;

    aget-object v4, v4, v0

    invoke-direct {v3, v1, v4}, Lah;-><init>(Ljava/lang/String;Lah;)V

    aput-object v3, v2, v0

    goto/16 :goto_5

    :cond_a5
    move v0, v2

    goto :goto_63
.end method

.method public final b()V
    .registers 2

    iget-boolean v0, p0, Lag;->j:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lag;->b:Lag;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lag;->b:Lag;

    invoke-direct {v0, p0}, Lag;->a(Lag;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lag;->j:Z

    goto :goto_4
.end method
