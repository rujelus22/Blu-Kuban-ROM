.class public Lcom/google/android/maps/driveabout/app/cS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lac/p;

.field private final b:Ljava/io/File;

.field private c:Lat/B;

.field private d:Lat/H;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:[B

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->a:Lac/p;

    .line 80
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cS;->b:Ljava/io/File;

    .line 81
    return-void
.end method

.method private a(Lo/x;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 159
    invoke-virtual {p1}, Lo/x;->m()Lo/P;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lo/P;->d()Lo/Q;

    move-result-object v0

    invoke-virtual {v0}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static a(Ljava/io/File;)[B
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 227
    const-wide/32 v3, 0x19000

    cmp-long v3, v1, v3

    if-lez v3, :cond_d

    .line 257
    :goto_c
    return-object v0

    .line 233
    :cond_d
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_38

    .line 238
    long-to-int v1, v1

    new-array v1, v1, [B

    .line 241
    const/4 v2, 0x0

    .line 245
    :goto_16
    :try_start_16
    array-length v4, v1

    if-ge v2, v4, :cond_23

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v2, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1e} :catch_28

    move-result v4

    if-ltz v4, :cond_23

    .line 246
    add-int/2addr v2, v4

    goto :goto_16

    .line 252
    :cond_23
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_34

    :goto_26
    move-object v0, v1

    .line 257
    goto :goto_c

    .line 248
    :catch_28
    move-exception v1

    .line 252
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_c

    .line 253
    :catch_2d
    move-exception v1

    goto :goto_c

    .line 251
    :catchall_2f
    move-exception v0

    .line 252
    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_36

    .line 255
    :goto_33
    throw v0

    .line 253
    :catch_34
    move-exception v0

    goto :goto_26

    :catch_36
    move-exception v1

    goto :goto_33

    .line 234
    :catch_38
    move-exception v1

    goto :goto_c
.end method


# virtual methods
.method a(Lo/x;Lo/x;Lm/b;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1}, Lo/x;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz p2, :cond_56

    .line 137
    invoke-virtual {p1}, Lo/x;->n()Ln/U;

    move-result-object v0

    invoke-virtual {p1}, Lo/x;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    .line 139
    const/4 v1, 0x3

    new-array v1, v1, [Ln/s;

    .line 140
    invoke-virtual {p1}, Lo/x;->l()Lo/P;

    move-result-object v2

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    aput-object v2, v1, v3

    .line 141
    invoke-virtual {p3}, Lm/b;->m()Ln/s;

    move-result-object v2

    aput-object v2, v1, v4

    .line 142
    const/4 v2, 0x2

    new-instance v3, Ln/s;

    invoke-virtual {v0}, Ln/Q;->a()I

    move-result v4

    invoke-virtual {v0}, Ln/Q;->c()I

    move-result v0

    invoke-direct {v3, v4, v0}, Ln/s;-><init>(II)V

    aput-object v3, v1, v2

    .line 143
    invoke-virtual {p2}, Lo/x;->l()Lo/P;

    move-result-object v0

    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v0

    invoke-virtual {p2}, Lo/x;->m()Lo/P;

    move-result-object v2

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/cS;->a(Lo/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/x;->d()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, LA/b;->a(Ln/s;[Ln/s;Ln/s;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_55
    return-object v0

    .line 149
    :cond_56
    new-array v0, v4, [Ln/s;

    .line 150
    invoke-virtual {p3}, Lm/b;->m()Ln/s;

    move-result-object v1

    aput-object v1, v0, v3

    .line 151
    invoke-virtual {p1}, Lo/x;->l()Lo/P;

    move-result-object v1

    invoke-virtual {v1}, Lo/P;->c()Ln/s;

    move-result-object v1

    invoke-virtual {p1}, Lo/x;->m()Lo/P;

    move-result-object v2

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cS;->a(Lo/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/x;->d()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, LA/b;->a(Ln/s;[Ln/s;Ln/s;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_55
.end method

.method public a(LA/f;Lcom/google/android/maps/driveabout/app/cI;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 168
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(Ljava/io/OutputStream;)Z

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->i:[B

    .line 171
    invoke-virtual {p1}, LA/f;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->j:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;Lcom/google/android/maps/driveabout/app/cK;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 104
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->n()Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->c:Lat/B;

    .line 106
    :cond_11
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->a()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ln/aL;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {v0}, Ln/aL;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/cS;->g:I

    .line 109
    invoke-virtual {v0}, Ln/aL;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->c()I

    move-result v1

    invoke-virtual {v0}, Ln/aL;->f()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->c()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cS;->h:I

    .line 110
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->b()Ln/Q;

    move-result-object v2

    .line 112
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cK;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 114
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/cK;->h()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_b5

    const/4 v3, 0x1

    .line 116
    :goto_6f
    new-instance v0, Lat/H;

    new-instance v1, Lat/B;

    invoke-virtual {v2}, Ln/Q;->a()I

    move-result v6

    invoke-virtual {v2}, Ln/Q;->c()I

    move-result v2

    invoke-direct {v1, v6, v2}, Lat/B;-><init>(II)V

    invoke-static {v5}, Lat/Y;->b(I)Lat/Y;

    move-result-object v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->d:Lat/H;

    .line 119
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 120
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->e:Ljava/lang/String;

    .line 122
    :cond_9c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 123
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->n()Lo/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cS;->a(Lo/x;Lo/x;Lm/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cS;->f:Ljava/lang/String;

    .line 126
    :cond_b4
    return-void

    :cond_b5
    move v3, v4

    .line 114
    goto :goto_6f
.end method

.method public a(ZLaG/b;)V
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/cS;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/cS;->a(Ljava/io/File;)[B

    move-result-object v4

    .line 189
    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/cS;->c:Lat/B;

    if-nez v1, :cond_11

    .line 218
    :cond_10
    :goto_10
    return-void

    .line 194
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/app/cS;->e:Ljava/lang/String;

    if-nez v1, :cond_43

    .line 195
    new-instance v1, LaG/a;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/app/cS;->c:Lat/B;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/app/cS;->d:Lat/H;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/app/cS;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/app/cS;->h:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/app/cS;->f:Ljava/lang/String;

    move/from16 v7, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, LaG/a;-><init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IILjava/lang/String;LaG/b;)V

    .line 215
    :goto_39
    if-eqz v1, :cond_10

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/cS;->a:Lac/p;

    invoke-interface {v2, v1}, Lac/p;->c(Lac/g;)V

    goto :goto_10

    .line 202
    :cond_43
    const/4 v12, -0x1

    .line 203
    const/4 v13, -0x1

    .line 204
    new-instance v1, LaG/a;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/app/cS;->c:Lat/B;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/maps/driveabout/app/cS;->d:Lat/H;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/maps/driveabout/app/cS;->g:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/maps/driveabout/app/cS;->h:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/maps/driveabout/app/cS;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/app/cS;->f:Ljava/lang/String;

    move/from16 v7, p1

    move-object/from16 v16, p2

    invoke-direct/range {v1 .. v16}, LaG/a;-><init>(ILjava/lang/String;[BLat/B;Ln/B;ZILat/H;IIIILjava/lang/String;Ljava/lang/String;LaG/b;)V

    goto :goto_39
.end method
