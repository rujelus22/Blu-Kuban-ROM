.class public LaJ/M;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/g;
.implements Lcom/google/googlenav/ui/aQ;


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:I


# instance fields
.field private final a:[LaJ/B;

.field private final b:I

.field private final c:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaJ/M;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    sput v0, LaJ/M;->e:I

    return-void
.end method

.method public constructor <init>([LaJ/B;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LaJ/M;->o()I

    move-result v0

    iput v0, p0, LaJ/M;->f:I

    iput-object p1, p0, LaJ/M;->a:[LaJ/B;

    iput p2, p0, LaJ/M;->b:I

    iput p3, p0, LaJ/M;->c:I

    return-void
.end method

.method public static a(Lam/b;)LaJ/M;
    .registers 5

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lam/b;->c(I)[B

    move-result-object v2

    invoke-static {v2}, LaJ/M;->a([B)[LaJ/B;

    move-result-object v2

    new-instance v3, LaJ/M;

    invoke-direct {v3, v2, v0, v1}, LaJ/M;-><init>([LaJ/B;II)V

    return-object v3
.end method

.method public static a([JLaJ/B;LaJ/Y;)Z
    .registers 16

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v3

    :cond_5
    invoke-virtual {p1, p2}, LaJ/B;->a(LaJ/Y;)I

    move-result v4

    invoke-virtual {p1, p2}, LaJ/B;->b(LaJ/Y;)I

    move-result v5

    move v0, v1

    move v2, v3

    :goto_f
    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    aget-wide v6, p0, v2

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v6

    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v7

    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v8

    aget-wide v9, p0, v0

    invoke-static {v9, v10}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v9

    if-gt v7, v9, :cond_3b

    add-int/lit8 v10, v7, -0x4

    if-gt v10, v5, :cond_36

    add-int/lit8 v10, v9, 0x4

    if-le v5, v10, :cond_43

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3b
    add-int/lit8 v10, v9, -0x4

    if-gt v10, v5, :cond_36

    add-int/lit8 v10, v7, 0x4

    if-gt v5, v10, :cond_36

    :cond_43
    if-gt v6, v8, :cond_6f

    add-int/lit8 v10, v6, -0x4

    if-gt v10, v4, :cond_36

    add-int/lit8 v10, v8, 0x4

    if-gt v4, v10, :cond_36

    :cond_4d
    sub-int/2addr v8, v6

    sub-int/2addr v9, v7

    sub-int v6, v4, v6

    sub-int v7, v5, v7

    const/16 v10, 0x50

    mul-int v11, v8, v8

    mul-int v12, v9, v9

    add-int/2addr v11, v12

    invoke-static {v11}, Lar/i;->c(I)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/2addr v6, v9

    mul-int/2addr v7, v8

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/2addr v6, v10

    const/4 v7, 0x4

    if-gt v6, v7, :cond_36

    move v3, v1

    goto :goto_4

    :cond_6f
    add-int/lit8 v10, v8, -0x4

    if-gt v10, v4, :cond_36

    add-int/lit8 v10, v6, 0x4

    if-le v4, v10, :cond_4d

    goto :goto_36
.end method

.method public static a([LaJ/B;)[B
    .registers 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    :goto_e
    array-length v3, p0

    if-ge v0, v3, :cond_26

    aget-object v3, p0, v0

    invoke-virtual {v3}, LaJ/B;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    aget-object v3, p0, v0

    invoke-virtual {v3}, LaJ/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B)[LaJ/B;
    .registers 8

    array-length v0, p0

    div-int/lit8 v1, v0, 0x8

    new-array v2, v1, [LaJ/B;

    :try_start_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_25

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-instance v6, LaJ/B;

    invoke-direct {v6, v4, v5}, LaJ/B;-><init>(II)V

    aput-object v6, v2, v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_21} :catch_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :catch_24
    move-exception v0

    :cond_25
    return-object v2
.end method

.method private static o()I
    .registers 3

    sget-object v1, LaJ/M;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget v0, LaJ/M;->e:I

    add-int/lit8 v2, v0, 0x1

    sput v2, LaJ/M;->e:I

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public a(LaJ/Y;)I
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p1}, LaJ/Y;->a()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_a

    :goto_9
    return v0

    :cond_a
    const/16 v1, 0xa

    iget v2, p0, LaJ/M;->c:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_9
.end method

.method public b()LaJ/B;
    .registers 3

    iget-object v0, p0, LaJ/M;->a:[LaJ/B;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x5

    iget v2, p0, LaJ/M;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x4

    iget v2, p0, LaJ/M;->c:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x6

    iget-object v2, p0, LaJ/M;->a:[LaJ/B;

    invoke-static {v2}, LaJ/M;->a([LaJ/B;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(I[B)V

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, LaJ/M;->c:I

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, LaJ/M;->g()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    iget v0, p0, LaJ/M;->f:I

    return v0
.end method

.method public j()[LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/M;->a:[LaJ/B;

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, LaJ/M;->b:I

    return v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public n()[[LaJ/B;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, [[LaJ/B;

    return-object v0
.end method
