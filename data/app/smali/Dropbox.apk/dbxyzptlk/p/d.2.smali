.class public final Ldbxyzptlk/p/d;
.super Ljava/io/OutputStream;
.source "panda.py"


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:Ljava/util/ArrayList;

.field private c:I

.field private d:J

.field private e:Ljava/security/MessageDigest;

.field private f:Ljava/security/MessageDigest;

.field private g:I

.field private final h:[B


# direct methods
.method public constructor <init>(J)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/p/d;->b:Ljava/util/ArrayList;

    .line 271
    iput v2, p0, Ldbxyzptlk/p/d;->c:I

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldbxyzptlk/p/d;->d:J

    .line 274
    iput-object v3, p0, Ldbxyzptlk/p/d;->e:Ljava/security/MessageDigest;

    .line 275
    iput-object v3, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    .line 276
    iput v2, p0, Ldbxyzptlk/p/d;->g:I

    .line 337
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ldbxyzptlk/p/d;->h:[B

    .line 286
    :try_start_1d
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/p/d;->a:Ljava/security/MessageDigest;
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_25} :catch_28

    .line 290
    iput-wide p1, p0, Ldbxyzptlk/p/d;->d:J

    .line 291
    return-void

    .line 287
    :catch_28
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Ljava/security/MessageDigest;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 346
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/dropbox/android/util/v;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 350
    iget-object v0, p0, Ldbxyzptlk/p/d;->a:Ljava/security/MessageDigest;

    invoke-static {v0}, Ldbxyzptlk/p/d;->b(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v1

    .line 351
    iget-object v7, p0, Ldbxyzptlk/p/d;->b:Ljava/util/ArrayList;

    new-instance v0, Ldbxyzptlk/p/c;

    iget-wide v2, p0, Ldbxyzptlk/p/d;->d:J

    iget v4, p0, Ldbxyzptlk/p/d;->c:I

    int-to-long v4, v4

    invoke-direct/range {v0 .. v6}, Ldbxyzptlk/p/c;-><init>(Ljava/lang/String;JJZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-static {}, Ldbxyzptlk/p/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%d: %s %d %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ldbxyzptlk/p/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v1, v3, v6

    const/4 v1, 0x2

    iget-wide v4, p0, Ldbxyzptlk/p/d;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget v4, p0, Ldbxyzptlk/p/d;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Ldbxyzptlk/p/d;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 354
    iget-wide v0, p0, Ldbxyzptlk/p/d;->d:J

    iget v2, p0, Ldbxyzptlk/p/d;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/p/d;->d:J

    .line 355
    iput v8, p0, Ldbxyzptlk/p/d;->c:I

    .line 356
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Ldbxyzptlk/p/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)V
    .registers 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 369
    const/16 v3, 0x1000

    new-array v13, v3, [B

    .line 371
    if-eqz p4, :cond_39

    invoke-virtual/range {p4 .. p4}, Ldbxyzptlk/l/q;->a()J

    move-result-wide v3

    .line 372
    :goto_e
    const-wide/16 v5, 0x0

    move-wide/from16 v7, p2

    .line 373
    :cond_12
    :goto_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_3c

    .line 374
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10, v9}, Ldbxyzptlk/p/d;->write([BII)V

    .line 375
    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 376
    if-eqz p4, :cond_12

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 378
    sub-long v14, v9, v5

    cmp-long v14, v14, v3

    if-lez v14, :cond_12

    .line 380
    sub-long v5, p2, v7

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v5, v6, v1, v2}, Ldbxyzptlk/l/q;->a(JJ)V

    move-wide v5, v9

    goto :goto_12

    .line 371
    :cond_39
    const-wide/16 v3, 0x0

    goto :goto_e

    .line 385
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Ldbxyzptlk/p/d;->flush()V

    .line 386
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 387
    invoke-static {}, Lcom/dropbox/android/util/h;->m()Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "blocks"

    move-object/from16 v0, p0

    iget-object v7, v0, Ldbxyzptlk/p/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "time"

    sub-long/2addr v3, v11

    long-to-double v3, v3

    const-wide v7, 0x41cdcd6500000000L

    div-double/2addr v3, v7

    invoke-virtual {v5, v6, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;D)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 388
    return-void
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Ldbxyzptlk/p/d;->e:Ljava/security/MessageDigest;

    .line 295
    return-void
.end method

.method public final a(Ljava/security/MessageDigest;J)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    .line 299
    const-wide/16 v0, 0x2000

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ldbxyzptlk/p/d;->g:I

    .line 302
    long-to-int v0, p2

    .line 303
    iget-object v1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    ushr-int/lit8 v2, v0, 0x18

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 304
    iget-object v1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 305
    iget-object v1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 306
    iget-object v1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 307
    return-void
.end method

.method public final flush()V
    .registers 2

    .prologue
    .line 360
    iget v0, p0, Ldbxyzptlk/p/d;->c:I

    if-lez v0, :cond_7

    .line 361
    invoke-direct {p0}, Ldbxyzptlk/p/d;->b()V

    .line 363
    :cond_7
    return-void
.end method

.method public final write(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Ldbxyzptlk/p/d;->h:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 342
    iget-object v0, p0, Ldbxyzptlk/p/d;->h:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ldbxyzptlk/p/d;->write([BII)V

    .line 343
    return-void
.end method

.method public final write([BII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x40

    .line 315
    iget-object v0, p0, Ldbxyzptlk/p/d;->e:Ljava/security/MessageDigest;

    if-eqz v0, :cond_b

    .line 316
    iget-object v0, p0, Ldbxyzptlk/p/d;->e:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 318
    :cond_b
    iget-object v0, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    if-eqz v0, :cond_24

    iget v0, p0, Ldbxyzptlk/p/d;->g:I

    if-lez v0, :cond_24

    .line 319
    iget v0, p0, Ldbxyzptlk/p/d;->g:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 320
    iget-object v1, p0, Ldbxyzptlk/p/d;->f:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 321
    iget v1, p0, Ldbxyzptlk/p/d;->g:I

    sub-int v0, v1, v0

    iput v0, p0, Ldbxyzptlk/p/d;->g:I

    .line 324
    :cond_24
    :goto_24
    if-lez p3, :cond_42

    .line 325
    iget v0, p0, Ldbxyzptlk/p/d;->c:I

    sub-int v0, v2, v0

    .line 326
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 327
    iget-object v1, p0, Ldbxyzptlk/p/d;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 328
    sub-int/2addr p3, v0

    .line 329
    add-int/2addr p2, v0

    .line 330
    iget v1, p0, Ldbxyzptlk/p/d;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/p/d;->c:I

    .line 331
    iget v0, p0, Ldbxyzptlk/p/d;->c:I

    if-ne v0, v2, :cond_24

    .line 332
    invoke-direct {p0}, Ldbxyzptlk/p/d;->b()V

    goto :goto_24

    .line 335
    :cond_42
    return-void
.end method
