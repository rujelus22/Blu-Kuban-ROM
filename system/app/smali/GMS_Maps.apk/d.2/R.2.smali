.class public Ld/R;
.super Lbw/p;


# static fields
.field private static final a:[B


# instance fields
.field private b:Lbv/f;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Ld/R;->a:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ld/R;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lbw/p;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Ld/R;->c(I)V

    invoke-virtual {p0, p3}, Ld/R;->a([B)V

    return-void
.end method

.method private f()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Ld/R;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ld/R;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Ld/R;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/16 v2, 0x6d72

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v2, "ROOT"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Ld/R;->b:Lbv/f;

    if-eqz v2, :cond_5e

    iget-object v2, p0, Ld/R;->b:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    if-lez v2, :cond_5e

    iget-object v2, p0, Ld/R;->b:Lbv/f;

    invoke-interface {v2}, Lbv/f;->a_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_51
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ld/R;->f:[B

    return-void

    :cond_5e
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_51
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Ld/R;->f:[B

    if-nez v0, :cond_7

    invoke-direct {p0}, Ld/R;->f()V

    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lbw/p;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/R;->f:[B

    const/4 v0, 0x0

    iput-object v0, p0, Ld/R;->b:Lbv/f;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lbw/p;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/R;->f:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    array-length v0, p1

    if-lez v0, :cond_f

    new-instance v0, Ld/S;

    invoke-direct {v0, p1}, Ld/S;-><init>([B)V

    iput-object v0, p0, Ld/R;->b:Lbv/f;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Ld/R;->b:Lbv/f;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b()Ljava/io/InputStream;
    .registers 6

    invoke-direct {p0}, Ld/R;->g()V

    iget-object v0, p0, Ld/R;->b:Lbv/f;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ld/R;->b:Lbv/f;

    invoke-interface {v0}, Lbv/f;->a_()I

    move-result v0

    if-nez v0, :cond_23

    :cond_f
    new-instance v0, LU/p;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ld/R;->f:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Ld/R;->a:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    :goto_22
    return-object v0

    :cond_23
    new-instance v0, LU/p;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ld/R;->f:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Ld/R;->b:Lbv/f;

    invoke-interface {v2}, Lbv/f;->b_()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Ld/R;->a:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_22
.end method

.method protected c()I
    .registers 3

    invoke-direct {p0}, Ld/R;->g()V

    iget-object v0, p0, Ld/R;->f:[B

    array-length v0, v0

    sget-object v1, Ld/R;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ld/R;->b:Lbv/f;

    if-eqz v1, :cond_15

    iget-object v1, p0, Ld/R;->b:Lbv/f;

    invoke-interface {v1}, Lbv/f;->a_()I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    return v0
.end method
