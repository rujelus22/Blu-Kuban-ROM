.class public final Lam/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lam/g;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lam/b;III)I
    .registers 5

    :try_start_0
    invoke-static {p0, p1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lam/g;->c(Lam/b;II)I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p3

    :goto_8
    return p3

    :catch_9
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    goto :goto_8
.end method

.method public static a(Lam/e;Ljava/io/InputStream;Lam/b;)I
    .registers 9

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lam/b;->a(Ljava/io/InputStream;Z)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const/4 v0, -0x1

    :goto_c
    return v0

    :cond_d
    const-wide/16 v2, 0x7

    and-long/2addr v2, v0

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Message expected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lam/e;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/e;

    invoke-virtual {p2, v0}, Lam/b;->a(Lam/e;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lam/b;->a(Ljava/io/InputStream;Z)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p2, p1, v0}, Lam/b;->a(Ljava/io/InputStream;I)I

    move v0, v1

    goto :goto_c
.end method

.method public static a(Lam/b;IJ)J
    .registers 5

    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lam/b;->e(I)J
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide p2

    :cond_c
    :goto_c
    return-wide p2

    :catch_d
    move-exception v0

    goto :goto_c

    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public static a(Lam/b;)Lam/b;
    .registers 3

    new-instance v0, Lam/b;

    invoke-virtual {p0}, Lam/b;->c()Lam/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lam/b;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/b;->a([B)Lam/b;

    return-object v0
.end method

.method public static a(Lam/e;Ljava/io/DataInput;)Lam/b;
    .registers 6

    new-instance v0, Lam/b;

    invoke-direct {v0, p0}, Lam/b;-><init>(Lam/e;)V

    invoke-static {p1}, Lam/g;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/b;->a(Ljava/io/InputStream;)Lam/b;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)Ljava/io/InputStream;
    .registers 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    new-instance v0, Lak/d;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lak/d;-><init>(Ljava/io/InputStream;I)V

    if-gez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lam/g;->a:Z

    invoke-static {v0}, Lak/g;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static a(Lam/b;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    :try_start_2
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_c

    :catch_10
    move-exception v0

    const-string v0, ""

    goto :goto_c
.end method

.method public static a(Lam/b;II)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    :try_start_3
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, p1}, Lam/b;->l(I)I

    move-result v1

    if-le v1, p2, :cond_13

    invoke-virtual {p0, p1, p2}, Lam/b;->f(II)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_12} :catch_14

    move-result-object v0

    :cond_13
    :goto_13
    return-object v0

    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public static a(Ljava/io/DataOutput;Lam/b;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public static b(Lam/b;I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    :try_start_3
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lam/b;->i(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_c} :catch_e

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public static b(Lam/b;II)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0, p1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v0

    invoke-static {v0, p2}, Lam/g;->a(Lam/b;I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static c(Lam/b;II)I
    .registers 4

    if-eqz p0, :cond_c

    :try_start_2
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lam/b;->d(I)I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result p2

    :cond_c
    :goto_c
    return p2

    :catch_d
    move-exception v0

    goto :goto_c

    :catch_f
    move-exception v0

    goto :goto_c
.end method

.method public static c(Lam/b;I)Lam/b;
    .registers 3

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static d(Lam/b;II)J
    .registers 6

    const-wide/16 v0, -0x1

    :try_start_2
    invoke-static {p0, p1}, Lam/g;->c(Lam/b;I)Lam/b;

    move-result-object v2

    invoke-static {v2, p2}, Lam/g;->g(Lam/b;I)J
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_9} :catch_b

    move-result-wide v0

    :goto_a
    return-wide v0

    :catch_b
    move-exception v2

    goto :goto_a

    :catch_d
    move-exception v2

    goto :goto_a
.end method

.method public static d(Lam/b;I)[Lam/b;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array v0, v0, [Lam/b;

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p1}, Lam/b;->l(I)I

    move-result v1

    new-array v1, v1, [Lam/b;

    :goto_c
    invoke-virtual {p0, p1}, Lam/b;->l(I)I

    move-result v2

    if-ge v0, v2, :cond_1b

    invoke-virtual {p0, p1, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    move-object v0, v1

    goto :goto_5
.end method

.method public static e(Lam/b;I)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lam/g;->c(Lam/b;II)I

    move-result v0

    return v0
.end method

.method public static f(Lam/b;I)J
    .registers 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_e

    :try_start_4
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, Lam/b;->e(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-wide v0

    :cond_e
    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    goto :goto_e

    :catch_11
    move-exception v2

    goto :goto_e
.end method

.method public static g(Lam/b;I)J
    .registers 5

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_e

    :try_start_4
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0, p1}, Lam/b;->e(I)J
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_d} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_d} :catch_f

    move-result-wide v0

    :cond_e
    :goto_e
    return-wide v0

    :catch_f
    move-exception v2

    goto :goto_e

    :catch_11
    move-exception v2

    goto :goto_e
.end method

.method public static h(Lam/b;I)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    :try_start_3
    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1}, Lam/b;->b(I)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_c} :catch_10
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_c} :catch_e

    move-result v0

    :cond_d
    :goto_d
    return v0

    :catch_e
    move-exception v1

    goto :goto_d

    :catch_10
    move-exception v1

    goto :goto_d
.end method

.method public static i(Lam/b;I)Lam/b;
    .registers 3

    invoke-virtual {p0, p1}, Lam/b;->a(I)Lam/b;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lam/b;->a(ILam/b;)V

    return-object v0
.end method
