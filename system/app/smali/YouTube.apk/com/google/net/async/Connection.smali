.class public final Lcom/google/net/async/Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/af;
.implements Lcom/google/net/async/an;
.implements Lcom/google/net/async/e;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/net/async/aj;

.field private final c:Lcom/google/net/async/u;

.field private volatile d:Lcom/google/net/async/f;

.field private final e:Lcom/google/io/iobuffer/b;

.field private final f:Lcom/google/io/iobuffer/b;

.field private final g:Ljava/io/InputStream;

.field private final h:Ljava/io/OutputStream;

.field private i:Z

.field private final j:Ljava/nio/ByteBuffer;

.field private volatile k:I

.field private volatile l:I

.field private m:I

.field private volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const-class v0, Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/Connection;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/net/async/aj;Lcom/google/net/async/u;Lcom/google/net/async/f;Lcom/google/net/async/Connection$ConnectionMode;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/net/async/Connection;-><init>(Lcom/google/net/async/aj;Lcom/google/net/async/u;Lcom/google/net/async/f;Lcom/google/net/async/Connection$ConnectionMode;[B)V

    .line 139
    return-void
.end method

.method private constructor <init>(Lcom/google/net/async/aj;Lcom/google/net/async/u;Lcom/google/net/async/f;Lcom/google/net/async/Connection$ConnectionMode;[B)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Lcom/google/io/iobuffer/b;

    invoke-direct {v0}, Lcom/google/io/iobuffer/b;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/Connection;->e:Lcom/google/io/iobuffer/b;

    .line 692
    new-instance v0, Lcom/google/io/iobuffer/b;

    invoke-direct {v0}, Lcom/google/io/iobuffer/b;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    .line 705
    iput-boolean v1, p0, Lcom/google/net/async/Connection;->i:Z

    .line 713
    iput v3, p0, Lcom/google/net/async/Connection;->k:I

    .line 717
    iput v3, p0, Lcom/google/net/async/Connection;->l:I

    .line 722
    iput v1, p0, Lcom/google/net/async/Connection;->m:I

    .line 726
    iput-boolean v1, p0, Lcom/google/net/async/Connection;->n:Z

    .line 162
    if-nez p4, :cond_2b

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2b
    if-nez p1, :cond_35

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "channel cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_35
    if-nez p2, :cond_3f

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventRegistry cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_3f
    if-nez p3, :cond_49

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_49
    invoke-virtual {p1}, Lcom/google/net/async/aj;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 175
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 177
    :cond_55
    invoke-virtual {p1}, Lcom/google/net/async/aj;->c()Z

    move-result v0

    if-nez v0, :cond_61

    .line 178
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 180
    :cond_61
    iput-object p1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    .line 183
    iput-object p2, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    .line 184
    iput-object p3, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    .line 185
    new-instance v0, Lcom/google/io/iobuffer/c;

    iget-object v1, p0, Lcom/google/net/async/Connection;->e:Lcom/google/io/iobuffer/b;

    invoke-direct {v0, v1}, Lcom/google/io/iobuffer/c;-><init>(Lcom/google/io/iobuffer/b;)V

    iput-object v0, p0, Lcom/google/net/async/Connection;->g:Ljava/io/InputStream;

    .line 186
    new-instance v0, Lcom/google/io/iobuffer/IOBufferOutputStream;

    iget-object v1, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    invoke-direct {v0, v1}, Lcom/google/io/iobuffer/IOBufferOutputStream;-><init>(Lcom/google/io/iobuffer/b;)V

    iput-object v0, p0, Lcom/google/net/async/Connection;->h:Ljava/io/OutputStream;

    .line 191
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    .line 193
    iget-object v0, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    :try_start_84
    iget-object v0, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v0}, Lcom/google/net/async/aj;->b()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8e} :catch_8f

    .line 206
    :goto_8e
    return-void

    .line 203
    :catch_8f
    move-exception v0

    .line 204
    iget-object v1, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    iget-object v2, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    invoke-static {v1, v0, v2}, Lcom/google/net/async/g;->a(Lcom/google/net/async/f;Ljava/lang/Exception;Lcom/google/net/async/u;)V

    goto :goto_8e
.end method

.method private a(Ljava/nio/ByteBuffer;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt v0, p2, :cond_d

    .line 657
    iget-object v0, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v0, p1}, Lcom/google/net/async/aj;->a(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 667
    :goto_c
    return v0

    .line 659
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 660
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 662
    :try_start_19
    iget-object v0, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v0, p1}, Lcom/google/net/async/aj;->a(Ljava/nio/ByteBuffer;)I
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_23

    move-result v0

    .line 664
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_c

    .line 663
    :catchall_23
    move-exception v0

    .line 664
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 665
    throw v0
.end method

.method private static a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt v0, p2, :cond_b

    .line 586
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 591
    :goto_a
    return v0

    .line 588
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 590
    :try_start_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 591
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_1f

    move-result v0

    .line 593
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_a

    .line 592
    :catchall_1f
    move-exception v0

    .line 593
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 594
    throw v0
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 237
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 349
    if-gtz p1, :cond_a

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxNumByte must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_a
    iput p1, p0, Lcom/google/net/async/Connection;->k:I

    .line 353
    return-void
.end method

.method public final b()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/net/async/Connection;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public final b(I)V
    .registers 5
    .parameter

    .prologue
    .line 359
    if-lez p1, :cond_8

    .line 360
    iput p1, p0, Lcom/google/net/async/Connection;->l:I

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/Connection;->n:Z

    .line 364
    :goto_7
    return-void

    .line 362
    :cond_8
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 363
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/net/async/Connection;->l:I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/net/async/Connection;->n:Z

    goto :goto_7

    .line 366
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid maxNumByte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/net/async/Connection;->h:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-interface {v0, v1, p0}, Lcom/google/net/async/u;->a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/af;)V

    .line 377
    return-void
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 391
    monitor-enter p0

    .line 394
    :try_start_1
    iget-object v0, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    invoke-virtual {v0}, Lcom/google/io/iobuffer/b;->b()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16

    .line 400
    :try_start_6
    iget-boolean v0, p0, Lcom/google/net/async/Connection;->i:Z

    if-nez v0, :cond_14

    .line 403
    iget-object v0, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-interface {v0, v1, p0}, Lcom/google/net/async/u;->a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/an;)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/Connection;->i:Z

    .line 391
    :cond_14
    monitor-exit p0

    .line 397
    :goto_15
    return-void

    .line 395
    :catch_16
    move-exception v0

    .line 396
    iget-object v1, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    iget-object v2, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    invoke-static {v1, v0, v2}, Lcom/google/net/async/g;->a(Lcom/google/net/async/f;Ljava/lang/Exception;Lcom/google/net/async/u;)V

    .line 397
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    goto :goto_15

    .line 391
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v0}, Lcom/google/net/async/aj;->close()V

    .line 450
    return-void
.end method

.method public final g()V
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 462
    :try_start_1
    iget-object v4, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    iget-object v5, p0, Lcom/google/net/async/Connection;->e:Lcom/google/io/iobuffer/b;

    iget v3, p0, Lcom/google/net/async/Connection;->k:I

    sget-boolean v1, Lcom/google/net/async/Connection;->a:Z

    if-nez v1, :cond_1a

    if-gez v3, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_13

    .line 471
    :catch_13
    move-exception v0

    .line 472
    iget-object v1, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    invoke-interface {v1, v0}, Lcom/google/net/async/f;->a(Ljava/lang/Exception;)V

    .line 474
    :goto_19
    return-void

    .line 462
    :cond_1a
    :try_start_1a
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 463
    :cond_20
    :goto_20
    if-gez v0, :cond_5c

    .line 466
    iget-object v0, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-interface {v0, v1}, Lcom/google/net/async/u;->b(Ljava/nio/channels/SelectableChannel;)V

    .line 467
    iget-object v0, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    invoke-interface {v0}, Lcom/google/net/async/f;->a()V

    goto :goto_19

    .line 462
    :cond_2f
    const/4 v1, 0x0

    move v2, v3

    :cond_31
    invoke-virtual {v5}, Lcom/google/io/iobuffer/b;->e()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lcom/google/net/async/Connection;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    move-result v6

    sget-boolean v7, Lcom/google/net/async/Connection;->a:Z

    if-nez v7, :cond_45

    if-le v6, v2, :cond_45

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_45
    if-lez v6, :cond_58

    sub-int/2addr v2, v6

    :cond_48
    :goto_48
    if-lez v2, :cond_4c

    if-gtz v6, :cond_31

    :cond_4c
    if-eqz v1, :cond_50

    if-eq v2, v3, :cond_20

    :cond_50
    if-ge v2, v3, :cond_55

    invoke-virtual {v5}, Lcom/google/io/iobuffer/b;->b()V

    :cond_55
    sub-int v0, v3, v2

    goto :goto_20

    :cond_58
    if-gez v6, :cond_48

    const/4 v1, 0x1

    goto :goto_48

    .line 470
    :cond_5c
    iget-object v1, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    invoke-interface {v1, v0}, Lcom/google/net/async/f;->a(I)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_61} :catch_13

    goto :goto_19
.end method

.method public final h()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 483
    :try_start_1
    sget-boolean v1, Lcom/google/net/async/Connection;->a:Z

    if-nez v1, :cond_16

    iget v1, p0, Lcom/google/net/async/Connection;->l:I

    if-gez v1, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_f

    .line 506
    :catch_f
    move-exception v0

    .line 507
    iget-object v1, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    invoke-interface {v1, v0}, Lcom/google/net/async/f;->a(Ljava/lang/Exception;)V

    .line 509
    :cond_15
    :goto_15
    return-void

    .line 483
    :cond_16
    :try_start_16
    iget v3, p0, Lcom/google/net/async/Connection;->l:I

    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v1}, Lcom/google/net/async/aj;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2b

    move v1, v0

    .line 484
    :goto_21
    if-gez v1, :cond_77

    .line 485
    new-instance v0, Lcom/google/net/async/IORuntimeException;

    const-string v1, "-1 returned when writing to channel"

    invoke-direct {v0, v1}, Lcom/google/net/async/IORuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    move v2, v3

    .line 483
    :cond_2c
    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2}, Lcom/google/net/async/Connection;->a(Ljava/nio/ByteBuffer;I)I

    move-result v1

    :goto_3a
    sub-int/2addr v2, v1

    if-lez v2, :cond_3f

    if-gtz v1, :cond_2c

    :cond_3f
    sub-int v1, v3, v2

    goto :goto_21

    :cond_42
    iget-object v1, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    invoke-virtual {v1}, Lcom/google/io/iobuffer/b;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_52

    :cond_50
    move v1, v0

    goto :goto_3a

    :cond_52
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x400

    if-le v4, v5, :cond_5f

    invoke-direct {p0, v1, v2}, Lcom/google/net/async/Connection;->a(Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_3a

    :cond_5f
    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    iget-object v4, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Lcom/google/io/iobuffer/b;->a(Ljava/nio/ByteBuffer;)I

    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2}, Lcom/google/net/async/Connection;->a(Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto :goto_3a

    .line 487
    :cond_77
    iget v2, p0, Lcom/google/net/async/Connection;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/net/async/Connection;->m:I

    .line 489
    monitor-enter p0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7d} :catch_f

    .line 490
    :try_start_7d
    iget-object v1, p0, Lcom/google/net/async/Connection;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_98

    .line 491
    iget-object v1, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    invoke-virtual {v1}, Lcom/google/io/iobuffer/b;->d()I

    move-result v1

    if-nez v1, :cond_98

    .line 495
    iget-object v0, p0, Lcom/google/net/async/Connection;->c:Lcom/google/net/async/u;

    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-interface {v0, v1}, Lcom/google/net/async/u;->c(Ljava/nio/channels/SelectableChannel;)V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/net/async/Connection;->i:Z

    .line 498
    const/4 v0, 0x1

    .line 489
    :cond_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_ab

    .line 501
    :try_start_99
    iget-boolean v1, p0, Lcom/google/net/async/Connection;->n:Z

    if-nez v1, :cond_9f

    if-eqz v0, :cond_15

    .line 504
    :cond_9f
    iget v1, p0, Lcom/google/net/async/Connection;->m:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/net/async/Connection;->m:I

    iget-object v2, p0, Lcom/google/net/async/Connection;->d:Lcom/google/net/async/f;

    invoke-interface {v2, v1, v0}, Lcom/google/net/async/f;->a(IZ)V

    goto/16 :goto_15

    .line 489
    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ae} :catch_f
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    const-string v1, "SocketChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    iget-object v1, p0, Lcom/google/net/async/Connection;->b:Lcom/google/net/async/aj;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    const-string v1, "; Input buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    iget-object v1, p0, Lcom/google/net/async/Connection;->e:Lcom/google/io/iobuffer/b;

    invoke-virtual {v1}, Lcom/google/io/iobuffer/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v1, "; Output buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    iget-object v1, p0, Lcom/google/net/async/Connection;->f:Lcom/google/io/iobuffer/b;

    invoke-virtual {v1}, Lcom/google/io/iobuffer/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const-string v1, "; Maximum size per read = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    iget v1, p0, Lcom/google/net/async/Connection;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 281
    const-string v1, "; Maximum size per flush = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    iget v1, p0, Lcom/google/net/async/Connection;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
