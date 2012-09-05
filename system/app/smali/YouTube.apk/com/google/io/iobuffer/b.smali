.class public Lcom/google/io/iobuffer/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/List;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Ljava/nio/CharBuffer;

.field private e:Ljava/nio/ByteBuffer;

.field private f:Ljava/nio/CharBuffer;

.field private g:Ljava/lang/String;

.field private h:Ljava/nio/charset/CharsetEncoder;

.field private i:Ljava/nio/charset/CharsetDecoder;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/io/iobuffer/a;

.field private p:Ljava/nio/ByteBuffer;

.field private q:Ljava/nio/CharBuffer;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const-class v0, Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/google/io/iobuffer/b;->a:Ljava/util/logging/Logger;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    .line 114
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 115
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    .line 116
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    .line 117
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    .line 118
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->g:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->h:Ljava/nio/charset/CharsetEncoder;

    .line 120
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->i:Ljava/nio/charset/CharsetDecoder;

    .line 121
    const/16 v0, 0x1000

    iput v0, p0, Lcom/google/io/iobuffer/b;->j:I

    .line 122
    iput-boolean v2, p0, Lcom/google/io/iobuffer/b;->k:Z

    .line 123
    iput v2, p0, Lcom/google/io/iobuffer/b;->l:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/io/iobuffer/b;->m:I

    .line 125
    iput v2, p0, Lcom/google/io/iobuffer/b;->n:I

    .line 126
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->o:Lcom/google/io/iobuffer/a;

    .line 127
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->p:Ljava/nio/ByteBuffer;

    .line 128
    iput-object v1, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    .line 129
    iput v2, p0, Lcom/google/io/iobuffer/b;->r:I

    .line 136
    return-void
.end method

.method private a(Ljava/nio/CharBuffer;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->e()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1451
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1453
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1454
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1456
    :cond_1f
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1457
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    .line 1462
    :goto_26
    iget-object v2, p0, Lcom/google/io/iobuffer/b;->h:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2, v0, v1, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 1463
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v1, v2, :cond_3c

    .line 1464
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->j()V

    .line 1477
    :cond_33
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    .line 1446
    if-nez v0, :cond_0

    .line 1478
    return-void

    :cond_3a
    move-object v0, p1

    .line 1459
    goto :goto_26

    .line 1465
    :cond_3c
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    if-ne v1, v2, :cond_33

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1469
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    .line 1473
    :goto_52
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1474
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->q:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_52
.end method

.method private b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->h:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_c

    .line 1396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No encoding has been set. Must call setCharacterEncoding() before flushing buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_c
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1403
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-direct {p0, v0, p1}, Lcom/google/io/iobuffer/b;->a(Ljava/nio/CharBuffer;Z)V

    .line 1404
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "encode() should consume the entire write_char_buf_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_26
    if-eqz p1, :cond_34

    .line 1408
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->h:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 1409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    .line 1415
    :goto_30
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->k()V

    .line 1416
    return-void

    .line 1411
    :cond_34
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_30
.end method

.method private g()V
    .registers 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1239
    :cond_f
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 1242
    iget v0, p0, Lcom/google/io/iobuffer/b;->r:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_12

    .line 1243
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/io/iobuffer/b;->r:I

    if-lt v0, v1, :cond_13

    .line 1250
    :cond_12
    :goto_12
    return-void

    .line 1246
    :cond_13
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1247
    iget v1, p0, Lcom/google/io/iobuffer/b;->r:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1248
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1249
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_12
.end method

.method private i()Ljava/nio/CharBuffer;
    .registers 4

    .prologue
    const/16 v0, 0x400

    .line 1264
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    if-nez v1, :cond_1b

    .line 1265
    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 1267
    :goto_b
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    .line 1274
    :goto_11
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    :goto_13
    return-object v0

    .line 1266
    :cond_14
    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_b

    .line 1268
    :cond_1b
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1269
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    goto :goto_13

    .line 1271
    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/io/iobuffer/b;->b(Z)V

    goto :goto_11
.end method

.method private j()V
    .registers 4

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/google/io/iobuffer/b;->l:I

    .line 1375
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    monitor-enter v1

    .line 1376
    :try_start_b
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_1a

    .line 1378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    .line 1381
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->k()V

    .line 1382
    return-void

    .line 1375
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private k()V
    .registers 3

    .prologue
    .line 1427
    iget v0, p0, Lcom/google/io/iobuffer/b;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 1428
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->d()I

    move-result v0

    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    if-lt v0, v1, :cond_11

    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/io/iobuffer/b;->a(Z)V

    .line 1431
    :cond_11
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)I
    .registers 8
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 868
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read from the byte buffer: character data has already been read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_c
    const/4 v1, 0x0

    .line 873
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 874
    :goto_11
    if-gtz v0, :cond_14

    .line 893
    :cond_13
    return v1

    .line 875
    :cond_14
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->f()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 876
    if-eqz v2, :cond_13

    .line 877
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 880
    if-gt v3, v0, :cond_30

    .line 881
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 882
    add-int v0, v1, v3

    .line 890
    :goto_25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 891
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->g()V

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_11

    .line 884
    :cond_30
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 885
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 886
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 887
    add-int/2addr v0, v1

    .line 888
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_25
.end method

.method public final a([B)I
    .registers 4
    .parameter

    .prologue
    .line 816
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/io/iobuffer/b;->a([BII)I

    move-result v0

    return v0
.end method

.method public final a([BII)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read from the byte buffer: character data has already been read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v1, p3

    .line 837
    :goto_d
    if-gtz v1, :cond_12

    .line 855
    :cond_f
    sub-int v0, p3, v1

    :goto_11
    return v0

    .line 838
    :cond_12
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->f()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 839
    if-nez v2, :cond_1c

    .line 840
    if-ne p3, v1, :cond_f

    .line 841
    const/4 v0, -0x1

    goto :goto_11

    .line 845
    :cond_1c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 846
    if-le v0, v1, :cond_23

    move v0, v1

    .line 849
    :cond_23
    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 850
    sub-int/2addr v1, v0

    .line 851
    add-int/2addr p2, v0

    .line 853
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->g()V

    goto :goto_d
.end method

.method public final a(J)J
    .registers 9
    .parameter

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 908
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot skip bytes: character data has already been read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-wide v1, p1

    .line 913
    :goto_d
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_16

    .line 927
    :cond_13
    sub-long v0, p1, v1

    return-wide v0

    .line 914
    :cond_16
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 915
    if-eqz v3, :cond_13

    .line 916
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 919
    int-to-long v4, v0

    cmp-long v4, v4, v1

    if-lez v4, :cond_26

    .line 920
    long-to-int v0, v1

    .line 922
    :cond_26
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 923
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 925
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->g()V

    move-wide v1, v0

    goto :goto_d
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/io/iobuffer/b;->a(Z)V

    .line 329
    return-void
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->i()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1011
    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1012
    return-void
.end method

.method public final a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->o:Lcom/google/io/iobuffer/a;

    if-eqz v0, :cond_6

    .line 341
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->o:Lcom/google/io/iobuffer/a;

    .line 343
    :cond_6
    return-void
.end method

.method public final a([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->i()Ljava/nio/CharBuffer;

    move-result-object v0

    move v2, p3

    .line 1043
    :goto_5
    if-gtz v2, :cond_8

    .line 1055
    return-void

    .line 1044
    :cond_8
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1045
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->i()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1047
    :cond_12
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 1048
    if-le v1, v2, :cond_19

    move v1, v2

    .line 1051
    :cond_19
    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 1052
    sub-int/2addr v2, v1

    .line 1053
    add-int/2addr p2, v1

    goto :goto_5
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_8

    .line 398
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/io/iobuffer/b;->b(Z)V

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_17

    .line 402
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->j()V

    .line 404
    :cond_17
    return-void
.end method

.method public final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 1068
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write to the byte buffer: character data has already been written."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_c
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1073
    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1074
    return-void
.end method

.method public final b([B)V
    .registers 4
    .parameter

    .prologue
    .line 1086
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/io/iobuffer/b;->b([BII)V

    .line 1087
    return-void
.end method

.method public final b([BII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_1f

    .line 1104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write to the byte buffer: character data has already been written."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_c
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->e()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1111
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1112
    if-le v0, v1, :cond_17

    move v0, v1

    .line 1115
    :cond_17
    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1116
    sub-int/2addr v1, v0

    .line 1117
    add-int/2addr p2, v0

    .line 1109
    :goto_1c
    if-gtz v1, :cond_c

    .line 1119
    return-void

    :cond_1f
    move v1, p3

    goto :goto_1c
.end method

.method public final c()I
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_c

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read from byte buffer: character data has already been read."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_c
    invoke-virtual {p0}, Lcom/google/io/iobuffer/b;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 799
    :cond_18
    const/4 v0, -0x1

    .line 804
    :goto_19
    return v0

    .line 802
    :cond_1a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 803
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->g()V

    goto :goto_19
.end method

.method public final d()I
    .registers 5

    .prologue
    .line 941
    const/4 v0, 0x0

    .line 944
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_d

    .line 945
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 949
    :cond_d
    iget-object v2, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    monitor-enter v2

    .line 950
    :try_start_10
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 949
    monitor-exit v2

    .line 954
    return v1

    .line 950
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 951
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_2c

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_17

    .line 949
    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1187
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    .line 1194
    :goto_e
    return-object v0

    .line 1188
    :cond_f
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_16

    .line 1189
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->j()V

    .line 1192
    :cond_16
    iget v0, p0, Lcom/google/io/iobuffer/b;->n:I

    iget v1, p0, Lcom/google/io/iobuffer/b;->l:I

    if-lez v1, :cond_40

    iget-boolean v1, p0, Lcom/google/io/iobuffer/b;->k:Z

    if-nez v1, :cond_9a

    iget v1, p0, Lcom/google/io/iobuffer/b;->l:I

    iget v2, p0, Lcom/google/io/iobuffer/b;->j:I

    div-int/lit8 v2, v2, 0x2

    if-gt v1, v2, :cond_9a

    iget v1, p0, Lcom/google/io/iobuffer/b;->j:I

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/io/iobuffer/b;->j:I

    :goto_2e
    iget v1, p0, Lcom/google/io/iobuffer/b;->j:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/io/iobuffer/b;->j:I

    iget v1, p0, Lcom/google/io/iobuffer/b;->j:I

    const/high16 v2, 0x40

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/google/io/iobuffer/b;->j:I

    :cond_40
    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4f

    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    iget v2, p0, Lcom/google/io/iobuffer/b;->j:I

    if-ge v1, v2, :cond_4f

    iget v1, p0, Lcom/google/io/iobuffer/b;->m:I

    iput v1, p0, Lcom/google/io/iobuffer/b;->j:I

    :cond_4f
    iget v1, p0, Lcom/google/io/iobuffer/b;->n:I

    if-eqz v1, :cond_59

    iget v1, p0, Lcom/google/io/iobuffer/b;->j:I

    if-le v0, v1, :cond_59

    iput v0, p0, Lcom/google/io/iobuffer/b;->j:I

    :cond_59
    iget v0, p0, Lcom/google/io/iobuffer/b;->j:I

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/google/io/iobuffer/b;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_8f

    sget-object v1, Lcom/google/io/iobuffer/b;->a:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allocating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/io/iobuffer/b;->j:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte input buffer last byte buf size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/io/iobuffer/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_8f
    iput-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    .line 1193
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1194
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    goto/16 :goto_e

    .line 1192
    :cond_9a
    iget v1, p0, Lcom/google/io/iobuffer/b;->l:I

    iget v2, p0, Lcom/google/io/iobuffer/b;->j:I

    add-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_ac

    iget v1, p0, Lcom/google/io/iobuffer/b;->j:I

    shl-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/io/iobuffer/b;->j:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/io/iobuffer/b;->k:Z

    goto :goto_2e

    :cond_ac
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/io/iobuffer/b;->k:Z

    goto/16 :goto_2e
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .registers 4

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1211
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->h()V

    .line 1212
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1225
    :goto_11
    return-object v0

    .line 1213
    :cond_12
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_19

    .line 1214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1217
    :cond_19
    iget-object v1, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    monitor-enter v1

    .line 1218
    :try_start_1c
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1219
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    .line 1220
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1217
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_3b

    .line 1224
    invoke-direct {p0}, Lcom/google/io/iobuffer/b;->h()V

    .line 1225
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    goto :goto_11

    .line 1217
    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->g:Ljava/lang/String;

    .line 1131
    if-nez v0, :cond_e1

    .line 1132
    const-string v0, "US-ASCII"

    move-object v1, v0

    .line 1137
    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_31

    .line 1138
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    iget-object v3, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    .line 1139
    iget-object v3, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->length()I

    move-result v3

    .line 1140
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/io/iobuffer/b;->d:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_31
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5d

    .line 1144
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    iget-object v3, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    .line 1145
    iget-object v3, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1146
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/io/iobuffer/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    :cond_5d
    iget-object v3, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    monitor-enter v3
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_60} :catch_cc

    .line 1151
    :try_start_60
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 1150
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_c9

    .line 1159
    :try_start_6d
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    if-eqz v0, :cond_8b

    .line 1160
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    .line 1161
    iget-object v3, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 1162
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/io/iobuffer/b;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-direct {v4, v5, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_8b
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a9

    .line 1166
    iget-object v0, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 1167
    iget-object v3, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1168
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/io/iobuffer/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v4, v5, v0, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6d .. :try_end_a9} :catch_cc

    .line 1173
    :cond_a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ad
    return-object v0

    .line 1151
    :cond_ae
    :try_start_ae
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1152
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    .line 1153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 1154
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v7, v0, v5, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_c9

    goto :goto_66

    .line 1150
    :catchall_c9
    move-exception v0

    :try_start_ca
    monitor-exit v3

    throw v0
    :try_end_cc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ca .. :try_end_cc} :catch_cc

    .line 1170
    :catch_cc
    move-exception v0

    .line 1171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to convert IOBuffer to string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    :cond_e1
    move-object v1, v0

    goto/16 :goto_c
.end method
