.class public Lcom/google/android/maps/driveabout/app/de;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lat/h;

.field private final b:Ljava/io/File;

.field private c:LaJ/B;

.field private d:LaJ/H;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:[B

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->a:Lat/h;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/de;->b:Ljava/io/File;

    return-void
.end method

.method private a(Lu/x;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lu/x;->m()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lu/P;->d()Lu/Q;

    move-result-object v0

    invoke-virtual {v0}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static a(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x19000

    cmp-long v3, v1, v3

    if-lez v3, :cond_d

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_38

    long-to-int v1, v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_16
    :try_start_16
    array-length v4, v1

    if-ge v2, v4, :cond_28

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_2d

    move-result v4

    if-ltz v4, :cond_28

    add-int/2addr v2, v4

    goto :goto_16

    :catchall_23
    move-exception v0

    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_34

    :goto_27
    throw v0

    :cond_28
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_36

    :goto_2b
    move-object v0, v1

    goto :goto_c

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_c

    :catch_32
    move-exception v1

    goto :goto_c

    :catch_34
    move-exception v1

    goto :goto_27

    :catch_36
    move-exception v0

    goto :goto_2b

    :catch_38
    move-exception v1

    goto :goto_c
.end method


# virtual methods
.method a(Lu/x;Lu/x;Ls/b;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lu/x;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz p2, :cond_56

    invoke-virtual {p1}, Lu/x;->n()Lt/P;

    move-result-object v0

    invoke-virtual {p1}, Lu/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lt/o;

    invoke-virtual {p1}, Lu/x;->l()Lu/P;

    move-result-object v2

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p3}, Ls/b;->m()Lt/o;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    new-instance v3, Lt/o;

    invoke-virtual {v0}, Lt/L;->a()I

    move-result v4

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lt/o;-><init>(II)V

    aput-object v3, v1, v2

    invoke-virtual {p2}, Lu/x;->l()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->c()Lt/o;

    move-result-object v0

    invoke-virtual {p2}, Lu/x;->m()Lu/P;

    move-result-object v2

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/de;->a(Lu/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LC/b;->a(Lt/o;[Lt/o;Lt/o;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_55
    return-object v0

    :cond_56
    new-array v0, v4, [Lt/o;

    invoke-virtual {p3}, Ls/b;->m()Lt/o;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lu/x;->l()Lu/P;

    move-result-object v1

    invoke-virtual {v1}, Lu/P;->c()Lt/o;

    move-result-object v1

    invoke-virtual {p1}, Lu/x;->m()Lu/P;

    move-result-object v2

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/de;->a(Lu/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lu/x;->d()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, LC/b;->a(Lt/o;[Lt/o;Lt/o;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_55
.end method

.method public a(LC/f;Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(Ljava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->i:[B

    invoke-virtual {p1}, LC/f;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;Lcom/google/android/maps/driveabout/app/cW;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->n()LaJ/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->c:LaJ/B;

    :cond_11
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cu;->a()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->a()Lt/au;

    move-result-object v0

    invoke-virtual {v0}, Lt/au;->g()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->a()I

    move-result v2

    invoke-virtual {v0}, Lt/au;->f()Lt/L;

    move-result-object v3

    invoke-virtual {v3}, Lt/L;->a()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/de;->g:I

    invoke-virtual {v0}, Lt/au;->g()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->c()I

    move-result v2

    invoke-virtual {v0}, Lt/au;->f()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v0

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/de;->h:I

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cu;->b()Lt/L;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cW;->a()Lcom/google/android/maps/driveabout/app/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cW;->h()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v4, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v4, :cond_b4

    const/4 v0, 0x1

    :goto_6f
    new-instance v4, LaJ/H;

    new-instance v5, LaJ/B;

    invoke-virtual {v2}, Lt/L;->a()I

    move-result v6

    invoke-virtual {v2}, Lt/L;->c()I

    move-result v2

    invoke-direct {v5, v6, v2}, LaJ/B;-><init>(II)V

    invoke-static {v3}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    invoke-direct {v4, v5, v2, v0, v1}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/app/de;->d:LaJ/H;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->e:Ljava/lang/String;

    :cond_9b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-eqz v0, :cond_b3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->m()Lu/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/de;->a(Lu/x;Lu/x;Ls/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/de;->f:Ljava/lang/String;

    :cond_b3
    return-void

    :cond_b4
    move v0, v1

    goto :goto_6f
.end method

.method public a(ZLaT/b;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/de;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/de;->a(Ljava/io/File;)[B

    move-result-object v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/de;->c:LaJ/B;

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/de;->e:Ljava/lang/String;

    if-nez v1, :cond_43

    new-instance v1, LaT/a;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/app/de;->c:LaJ/B;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/app/de;->d:LaJ/H;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/app/de;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/app/de;->h:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/app/de;->f:Ljava/lang/String;

    move/from16 v7, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, LaT/a;-><init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IILjava/lang/String;LaT/b;)V

    :goto_39
    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/de;->a:Lat/h;

    invoke-virtual {v2, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_10

    :cond_43
    const/4 v12, -0x1

    const/4 v13, -0x1

    new-instance v1, LaT/a;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/app/de;->c:LaJ/B;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/app/de;->d:LaJ/H;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/app/de;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/app/de;->h:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/app/de;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/app/de;->f:Ljava/lang/String;

    move/from16 v7, p1

    move-object/from16 v16, p2

    invoke-direct/range {v1 .. v16}, LaT/a;-><init>(ILjava/lang/String;[BLaJ/B;Lt/y;ZILaJ/H;IIIILjava/lang/String;Ljava/lang/String;LaT/b;)V

    goto :goto_39
.end method
