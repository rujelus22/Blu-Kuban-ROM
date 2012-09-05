.class public Lc/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Le/n;

.field public static final f:Le/w;

.field public static final g:Le/w;


# instance fields
.field public b:Le/n;

.field public final c:Li/C;

.field public final d:Lc/t;

.field public final e:Lc/t;

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Le/n;

    const/4 v1, 0x0

    sget-object v2, Le/p;->b:Le/p;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Le/n;-><init>(Le/x;Le/p;J)V

    sput-object v0, Lc/m;->a:Le/n;

    new-instance v0, Lc/n;

    invoke-direct {v0}, Lc/n;-><init>()V

    sput-object v0, Lc/m;->f:Le/w;

    new-instance v0, Lc/o;

    invoke-direct {v0}, Lc/o;-><init>()V

    sput-object v0, Lc/m;->g:Le/w;

    return-void
.end method

.method public constructor <init>(Li/C;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/m;->a:Le/n;

    iput-object v0, p0, Lc/m;->b:Le/n;

    iput-object p1, p0, Lc/m;->c:Li/C;

    new-instance v0, Lc/t;

    const/16 v1, 0x32

    sget-object v2, Le/B;->a:Le/w;

    sget-object v3, Lc/m;->f:Le/w;

    invoke-direct {v0, v1, v2, v3}, Lc/t;-><init>(ILe/w;Le/w;)V

    iput-object v0, p0, Lc/m;->d:Lc/t;

    new-instance v0, Lc/t;

    const/16 v1, 0x3e8

    sget-object v2, Le/B;->b:Le/w;

    sget-object v3, Lc/m;->g:Le/w;

    invoke-direct {v0, v1, v2, v3}, Lc/t;-><init>(ILe/w;Le/w;)V

    iput-object v0, p0, Lc/m;->e:Lc/t;

    invoke-direct {p0, p2, p3}, Lc/m;->b(J)V

    return-void
.end method

.method public static a(JJJJ)J
    .registers 10

    add-long v0, p2, p0

    sub-long/2addr v0, p4

    invoke-static {p6, p7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)LW/a;
    .registers 10

    const/4 v0, 0x0

    const/4 v8, -0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :try_start_14
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v1, LW/a;

    sget-object v7, Lk/a;->X:LW/d;

    invoke-direct {v1, v7}, LW/a;-><init>(LW/d;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v5}, LW/a;->g(II)V

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v6}, LW/a;->g(II)V

    if-eq v2, v8, :cond_4c

    const/16 v5, 0xa

    invoke-virtual {v1, v5, v2}, LW/a;->g(II)V

    :cond_4c
    if-eq v4, v8, :cond_52

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, LW/a;->g(II)V

    :cond_52
    if-eq v3, v8, :cond_58

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, LW/a;->g(II)V
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_58} :catch_5a

    :cond_58
    move-object v0, v1

    goto :goto_4

    :catch_5a
    move-exception v1

    goto :goto_4
.end method

.method private a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;
    .registers 5

    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {p1, p2}, Li/b;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;
    .registers 5

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-static {p1, p2}, Li/b;->a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(IIIII)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Le/b;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Le/b;->l()I

    move-result v0

    invoke-virtual {p0}, Le/b;->d()I

    move-result v1

    invoke-virtual {p0}, Le/b;->e()I

    move-result v2

    invoke-virtual {p0}, Le/b;->c()I

    move-result v3

    invoke-virtual {p0}, Le/b;->b()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lc/m;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .registers 9

    const-wide/high16 v4, 0x404e

    sget-object v0, Lc/m;->a:Le/n;

    iput-object v0, p0, Lc/m;->b:Le/n;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4038

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    mul-double/2addr v0, v4

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sub-long v0, p1, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lc/m;->a(JZ)V

    iget-object v0, p0, Lc/m;->d:Lc/t;

    invoke-virtual {v0}, Lc/t;->b()V

    iget-object v0, p0, Lc/m;->e:Lc/t;

    invoke-virtual {v0}, Lc/t;->b()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lc/m;->h:J

    return-wide v0
.end method

.method public a(J)V
    .registers 8

    const-wide/32 v0, 0x240c8400

    sub-long v0, p1, v0

    iget-object v2, p0, Lc/m;->d:Lc/t;

    iget-object v3, p0, Lc/m;->c:Li/C;

    invoke-virtual {v3}, Li/C;->m()J

    move-result-wide v3

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lc/t;->a(JJ)V

    iget-object v2, p0, Lc/m;->e:Lc/t;

    iget-object v3, p0, Lc/m;->c:Li/C;

    invoke-virtual {v3}, Li/C;->l()J

    move-result-wide v3

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Lc/t;->a(JJ)V

    return-void
.end method

.method public a(JZ)V
    .registers 4

    iput-wide p1, p0, Lc/m;->h:J

    iput-boolean p3, p0, Lc/m;->i:Z

    return-void
.end method

.method public a(LW/a;ZJ)V
    .registers 23

    invoke-static/range {p1 .. p1}, Ll/b;->b(LW/a;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, LW/a;->f(I)LW/a;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/m;->c:Li/C;

    invoke-virtual {v1}, Li/C;->d()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/m;->c:Li/C;

    invoke-virtual {v1}, Li/C;->e()I

    move-result v15

    const/4 v1, 0x0

    move v13, v1

    :goto_20
    const/4 v1, 0x3

    invoke-virtual {v14, v1}, LW/a;->i(I)I

    move-result v1

    if-ge v13, v1, :cond_6

    const/4 v1, 0x3

    invoke-virtual {v14, v1, v13}, LW/a;->d(II)LW/a;

    move-result-object v16

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v6, -0x1

    const v10, 0x9c40

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, LW/a;->h(I)Z

    move-result v7

    if-eqz v7, :cond_15f

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, LW/a;->f(I)LW/a;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_79

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_79

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_79

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, LW/a;->f(I)LW/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LW/a;->c(I)I

    move-result v5

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, LW/a;->f(I)LW/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, LW/a;->c(I)I

    move-result v3

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, LW/a;->c(I)I

    move-result v1

    mul-int/lit16 v2, v1, 0x3e8

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, LW/a;->c(I)I

    move-result v1

    :cond_79
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_87

    const/16 v6, 0x8

    invoke-virtual {v7, v6}, LW/a;->c(I)I

    move-result v6

    :cond_87
    const/16 v8, 0x14

    invoke-virtual {v7, v8}, LW/a;->h(I)Z

    move-result v8

    if-eqz v8, :cond_15f

    const/16 v8, 0x14

    invoke-virtual {v7, v8}, LW/a;->c(I)I

    move-result v7

    mul-int/lit16 v10, v7, 0x3e8

    move v9, v1

    move v8, v2

    move v11, v3

    move v12, v5

    :goto_9b
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_fa

    const/4 v1, 0x3

    if-eq v6, v1, :cond_fa

    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, LW/a;->f(I)LW/a;

    move-result-object v6

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, LW/a;->c(I)I

    move-result v7

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, LW/a;->c(I)I

    move-result v17

    const/4 v1, -0x1

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_15c

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, LW/a;->c(I)I

    move-result v1

    move v2, v1

    :goto_c8
    const/4 v1, 0x3

    invoke-virtual {v6, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_d5

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, LW/a;->c(I)I

    move-result v1

    move v3, v1

    :cond_d5
    const/16 v1, 0xa

    invoke-virtual {v6, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_15a

    const/16 v1, 0xa

    invoke-virtual {v6, v1}, LW/a;->c(I)I

    move-result v1

    move v6, v1

    :goto_e4
    new-instance v5, Le/x;

    invoke-direct {v5, v12, v11, v8, v9}, Le/x;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/m;->d:Lc/t;

    move/from16 v0, v17

    invoke-static {v6, v2, v3, v0, v7}, Lc/m;->a(IIIII)Ljava/lang/String;

    move-result-object v3

    move/from16 v2, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lc/t;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    :cond_fa
    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, LW/a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_14a

    const/4 v1, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, LW/a;->f(I)LW/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_14f

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, LW/a;->d(I)J

    move-result-wide v1

    move-wide v2, v1

    :goto_119
    move-object/from16 v0, p0

    iget-object v1, v0, Lc/m;->e:Lc/t;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc/t;->a(Ljava/lang/Object;)Lc/b;

    move-result-object v1

    if-eqz v1, :cond_132

    invoke-virtual {v1}, Lc/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/H;

    iget v1, v1, Le/H;->c:I

    const/4 v5, -0x2

    if-eq v1, v5, :cond_14a

    :cond_132
    new-instance v5, Le/H;

    move v6, v12

    move v7, v11

    invoke-direct/range {v5 .. v10}, Le/H;-><init>(IIIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lc/m;->e:Lc/t;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move/from16 v7, p2

    move v9, v15

    move-object v10, v5

    move-wide/from16 v11, p3

    invoke-virtual/range {v6 .. v12}, Lc/t;->a(ZLjava/lang/Object;ILjava/lang/Object;J)V

    :cond_14a
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_20

    :cond_14f
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/N;->a(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_119

    :cond_15a
    move v6, v5

    goto :goto_e4

    :cond_15c
    move v2, v1

    goto/16 :goto_c8

    :cond_15f
    move v9, v1

    move v8, v2

    move v11, v3

    move v12, v5

    goto/16 :goto_9b
.end method

.method public a(Li/E;)V
    .registers 9

    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Li/E;->d()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1}, Li/E;->c()J

    move-result-wide v3

    invoke-interface {p1}, Li/E;->a()J

    move-result-wide v5

    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1}, Li/E;->j()Ljavax/crypto/SecretKey;

    move-result-object v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lc/m;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_28} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_28} :catch_2e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_28} :catch_33

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-direct {p0, v5, v6}, Lc/m;->b(J)V

    goto :goto_28

    :catch_2e
    move-exception v0

    invoke-direct {p0, v5, v6}, Lc/m;->b(J)V

    goto :goto_28

    :catch_33
    move-exception v0

    invoke-direct {p0, v5, v6}, Lc/m;->b(J)V

    goto :goto_28
.end method

.method a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;JJ)V
    .registers 16

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5a

    invoke-direct {p0, p1, p2}, Lc/m;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataInput;

    move-result-object v8

    invoke-interface {v8}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-interface {v8}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lc/m;->a(JJJJ)J

    move-result-wide v2

    invoke-interface {v8}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lc/m;->a(JZ)V

    invoke-interface {v8}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Le/n;->f:Le/w;

    invoke-interface {v2, v8}, Le/w;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/n;

    iput-object v2, p0, Lc/m;->b:Le/n;

    iget-object v2, p0, Lc/m;->b:Le/n;

    iget-wide v2, v2, Le/n;->e:J

    move-wide v4, p3

    move-wide v6, p5

    invoke-static/range {v0 .. v7}, Lc/m;->a(JJJJ)J

    move-result-wide v0

    new-instance v2, Le/n;

    iget-object v3, p0, Lc/m;->b:Le/n;

    iget-object v3, v3, Le/n;->c:Le/x;

    iget-object v4, p0, Lc/m;->b:Le/n;

    iget-object v4, v4, Le/n;->d:Le/p;

    invoke-direct {v2, v3, v4, v0, v1}, Le/n;-><init>(Le/x;Le/p;J)V

    iput-object v2, p0, Lc/m;->b:Le/n;

    :cond_4f
    iget-object v0, p0, Lc/m;->d:Lc/t;

    invoke-virtual {v0, v8}, Lc/t;->a(Ljava/io/DataInput;)Lc/t;

    iget-object v0, p0, Lc/m;->e:Lc/t;

    invoke-virtual {v0, v8}, Lc/t;->a(Ljava/io/DataInput;)Lc/t;

    :goto_59
    return-void

    :cond_5a
    invoke-direct {p0, p5, p6}, Lc/m;->b(J)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_59

    :catch_5e
    move-exception v0

    invoke-direct {p0, p5, p6}, Lc/m;->b(J)V

    throw v0
.end method

.method a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    .registers 8

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    invoke-direct {p0, p1, p2}, Lc/m;->a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;)Ljava/io/DataOutputStream;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v1, p0, Lc/m;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v1, p0, Lc/m;->i:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Lc/m;->b:Le/n;

    sget-object v2, Lc/m;->a:Le/n;

    if-eq v1, v2, :cond_41

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget-object v1, Le/n;->f:Le/w;

    iget-object v2, p0, Lc/m;->b:Le/n;

    invoke-interface {v1, v2, v0}, Le/w;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :goto_2f
    iget-object v1, p0, Lc/m;->d:Lc/t;

    iget-object v2, p0, Lc/m;->d:Lc/t;

    invoke-virtual {v1, v2, v0}, Lc/t;->a(Lc/t;Ljava/io/DataOutput;)V

    iget-object v1, p0, Lc/m;->e:Lc/t;

    iget-object v2, p0, Lc/m;->e:Lc/t;

    invoke-virtual {v1, v2, v0}, Lc/t;->a(Lc/t;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :cond_41
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_2f
.end method

.method public b(Li/E;)V
    .registers 6

    invoke-interface {p1}, Li/E;->d()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v1, Ljava/io/File;

    const-string v2, "nlp_state"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_e
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p1, v1}, Li/E;->a(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Li/E;->j()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {p1}, Li/E;->c()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Lc/m;->a(Ljava/io/OutputStream;Ljavax/crypto/SecretKey;J)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_26} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_26} :catch_2b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_26} :catch_29

    goto :goto_6

    :catch_27
    move-exception v0

    goto :goto_6

    :catch_29
    move-exception v0

    goto :goto_6

    :catch_2b
    move-exception v0

    goto :goto_6
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lc/m;->i:Z

    return v0
.end method

.method public c()Lc/t;
    .registers 2

    iget-object v0, p0, Lc/m;->e:Lc/t;

    return-object v0
.end method

.method public d()Lc/t;
    .registers 2

    iget-object v0, p0, Lc/m;->d:Lc/t;

    return-object v0
.end method
