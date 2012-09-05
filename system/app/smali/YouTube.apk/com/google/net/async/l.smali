.class public final Lcom/google/net/async/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/net/async/e;
.implements Lcom/google/net/async/o;


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field private final c:Lcom/google/net/async/u;

.field private d:Ljava/net/InetSocketAddress;

.field private e:Lcom/google/net/async/aj;

.field private f:Lcom/google/net/async/Connection;

.field private g:Lcom/google/net/async/n;

.field private final h:Lcom/google/net/async/al;

.field private final i:Lcom/google/net/async/am;

.field private j:Lcom/google/net/async/f;

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Lcom/google/net/async/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/l;->a:Z

    .line 493
    const-class v0, Lcom/google/net/async/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 492
    sput-object v0, Lcom/google/net/async/l;->b:Ljava/util/logging/Logger;

    return-void

    .line 55
    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/net/async/u;Lcom/google/net/async/f;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    .line 510
    iput-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    .line 513
    iput-object v0, p0, Lcom/google/net/async/l;->g:Lcom/google/net/async/n;

    .line 520
    new-instance v0, Lcom/google/net/async/al;

    invoke-direct {v0}, Lcom/google/net/async/al;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/l;->h:Lcom/google/net/async/al;

    .line 527
    new-instance v0, Lcom/google/net/async/am;

    invoke-direct {v0}, Lcom/google/net/async/am;-><init>()V

    iput-object v0, p0, Lcom/google/net/async/l;->i:Lcom/google/net/async/am;

    .line 536
    iput v2, p0, Lcom/google/net/async/l;->k:I

    .line 541
    iput v2, p0, Lcom/google/net/async/l;->l:I

    .line 545
    iput-boolean v1, p0, Lcom/google/net/async/l;->m:Z

    .line 549
    iput-boolean v1, p0, Lcom/google/net/async/l;->n:Z

    .line 556
    iput-boolean v1, p0, Lcom/google/net/async/l;->p:Z

    .line 66
    if-nez p1, :cond_2e

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventRegistry cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2e
    if-nez p2, :cond_38

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_38
    iput-object p1, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    .line 73
    iput-object p2, p0, Lcom/google/net/async/l;->j:Lcom/google/net/async/f;

    .line 74
    return-void
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private h()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/google/net/async/l;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 324
    :cond_6
    :goto_6
    return-void

    .line 258
    :cond_7
    iget-boolean v0, p0, Lcom/google/net/async/l;->p:Z

    if-eqz v0, :cond_2d

    .line 262
    sget-boolean v0, Lcom/google/net/async/l;->a:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_19

    .line 321
    :catch_19
    move-exception v0

    .line 322
    iget-object v1, p0, Lcom/google/net/async/l;->j:Lcom/google/net/async/f;

    invoke-interface {v1, v0}, Lcom/google/net/async/f;->a(Ljava/lang/Exception;)V

    goto :goto_6

    .line 263
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    if-eqz v0, :cond_6

    .line 264
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v0}, Lcom/google/net/async/aj;->close()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    goto :goto_6

    .line 270
    :cond_2d
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v0}, Lcom/google/net/async/aj;->d()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 271
    new-instance v0, Lcom/google/net/async/IORuntimeException;

    .line 272
    const-string v1, "Seems like a bug: handleConnectEvent() invoked when connection is still in progress"

    .line 271
    invoke-direct {v0, v1}, Lcom/google/net/async/IORuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_3d
    iget-object v0, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-interface {v0, v1}, Lcom/google/net/async/u;->a(Ljava/nio/channels/SelectableChannel;)V

    .line 280
    new-instance v0, Lcom/google/net/async/Connection;

    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    iget-object v2, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    iget-object v3, p0, Lcom/google/net/async/l;->j:Lcom/google/net/async/f;

    .line 281
    sget-object v4, Lcom/google/net/async/Connection$ConnectionMode;->CLIENT:Lcom/google/net/async/Connection$ConnectionMode;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/net/async/Connection;-><init>(Lcom/google/net/async/aj;Lcom/google/net/async/u;Lcom/google/net/async/f;Lcom/google/net/async/Connection$ConnectionMode;)V

    .line 280
    iput-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    .line 283
    iget-object v0, p0, Lcom/google/net/async/l;->o:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 284
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    iget-object v0, p0, Lcom/google/net/async/l;->o:Ljava/lang/String;

    invoke-static {}, Lcom/google/net/async/Connection;->a()V

    .line 288
    :cond_5e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    .line 291
    iget-object v0, p0, Lcom/google/net/async/l;->h:Lcom/google/net/async/al;

    iget-object v1, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v1}, Lcom/google/net/async/Connection;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/net/async/al;->a(Ljava/io/InputStream;)V

    .line 296
    iget-object v0, p0, Lcom/google/net/async/l;->i:Lcom/google/net/async/am;

    iget-object v1, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v1}, Lcom/google/net/async/Connection;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/net/async/am;->a(Ljava/io/OutputStream;)V

    .line 300
    iget v0, p0, Lcom/google/net/async/l;->k:I

    if-lez v0, :cond_82

    .line 301
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    iget v1, p0, Lcom/google/net/async/l;->k:I

    invoke-virtual {v0, v1}, Lcom/google/net/async/Connection;->a(I)V

    .line 306
    :cond_82
    iget v0, p0, Lcom/google/net/async/l;->l:I

    if-lez v0, :cond_8d

    .line 307
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    iget v1, p0, Lcom/google/net/async/l;->l:I

    invoke-virtual {v0, v1}, Lcom/google/net/async/Connection;->b(I)V

    .line 310
    :cond_8d
    iget-boolean v0, p0, Lcom/google/net/async/l;->m:Z

    if-eqz v0, :cond_96

    .line 311
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Lcom/google/net/async/Connection;->d()V

    .line 314
    :cond_96
    iget-boolean v0, p0, Lcom/google/net/async/l;->n:Z

    if-eqz v0, :cond_9f

    .line 315
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Lcom/google/net/async/Connection;->e()V

    .line 318
    :cond_9f
    iget-object v0, p0, Lcom/google/net/async/l;->g:Lcom/google/net/async/n;

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/google/net/async/l;->g:Lcom/google/net/async/n;

    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_a7} :catch_19

    goto/16 :goto_6
.end method

.method public final a(Ljava/net/InetSocketAddress;Lcom/google/net/async/n;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Lcom/google/net/async/aj;->a()Lcom/google/net/async/aj;

    move-result-object v0

    .line 163
    invoke-direct {p0}, Lcom/google/net/async/l;->g()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "alreading connecting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_12

    .line 165
    :catch_12
    move-exception v0

    .line 166
    iget-object v1, p0, Lcom/google/net/async/l;->j:Lcom/google/net/async/f;

    iget-object v2, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    invoke-static {v1, v0, v2}, Lcom/google/net/async/g;->a(Lcom/google/net/async/f;Ljava/lang/Exception;Lcom/google/net/async/u;)V

    .line 168
    :cond_1a
    :goto_1a
    return-void

    .line 163
    :cond_1b
    :try_start_1b
    invoke-direct {p0}, Lcom/google/net/async/l;->h()Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "alreading connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-boolean v1, p0, Lcom/google/net/async/l;->p:Z

    if-eqz v1, :cond_35

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iput-object p2, p0, Lcom/google/net/async/l;->g:Lcom/google/net/async/n;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_37} :catch_12

    :try_start_37
    iput-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/net/async/aj;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lcom/google/net/async/l;->d:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v1}, Lcom/google/net/async/aj;->b()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v2, p0, Lcom/google/net/async/l;->d:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_52
    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v1, p1}, Lcom/google/net/async/aj;->a(Ljava/net/SocketAddress;)Z

    iget-object v1, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    iget-object v2, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-interface {v1, v2, p0}, Lcom/google/net/async/u;->a(Ljava/nio/channels/SelectableChannel;Lcom/google/net/async/o;)V

    invoke-virtual {v0}, Lcom/google/net/async/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    new-instance v1, Lcom/google/net/async/m;

    invoke-direct {v1, p0}, Lcom/google/net/async/m;-><init>(Lcom/google/net/async/l;)V

    invoke-interface {v0, v1}, Lcom/google/net/async/u;->execute(Ljava/lang/Runnable;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_6e} :catch_6f

    goto :goto_1a

    :catch_6f
    move-exception v0

    :try_start_70
    iget-object v1, p0, Lcom/google/net/async/l;->j:Lcom/google/net/async/f;

    iget-object v2, p0, Lcom/google/net/async/l;->c:Lcom/google/net/async/u;

    invoke-static {v1, v0, v2}, Lcom/google/net/async/g;->a(Lcom/google/net/async/f;Ljava/lang/Exception;Lcom/google/net/async/u;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_77} :catch_12

    goto :goto_1a
.end method

.method public final b()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/net/async/l;->h:Lcom/google/net/async/al;

    return-object v0
.end method

.method public final c()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/net/async/l;->i:Lcom/google/net/async/am;

    return-object v0
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    if-eqz v0, :cond_a

    .line 438
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Lcom/google/net/async/Connection;->d()V

    .line 444
    :goto_9
    return-void

    .line 442
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/l;->m:Z

    goto :goto_9
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    if-eqz v0, :cond_a

    .line 463
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Lcom/google/net/async/Connection;->e()V

    .line 469
    :goto_9
    return-void

    .line 467
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/l;->n:Z

    goto :goto_9
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/net/async/l;->p:Z

    .line 477
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    if-eqz v0, :cond_f

    .line 478
    iget-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v0}, Lcom/google/net/async/aj;->close()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    .line 482
    :cond_f
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    if-eqz v0, :cond_18

    .line 483
    iget-object v0, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v0}, Lcom/google/net/async/Connection;->f()V

    .line 485
    :cond_18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 224
    invoke-direct {p0}, Lcom/google/net/async/l;->g()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 225
    const-string v1, "Status = connecting; Connecting SocketChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    iget-object v1, p0, Lcom/google/net/async/l;->e:Lcom/google/net/async/aj;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :goto_19
    const-string v1, ";maxSizePerReadToSet_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    iget v1, p0, Lcom/google/net/async/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 235
    const-string v1, ";maxSizePerFlushToSet_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    iget v1, p0, Lcom/google/net/async/l;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 237
    const-string v1, ";asyncReadAfterConnect_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    iget-boolean v1, p0, Lcom/google/net/async/l;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 239
    const-string v1, ";asyncFlushAfterConnect_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    iget-boolean v1, p0, Lcom/google/net/async/l;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 241
    const-string v1, ";isClosed_ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-boolean v1, p0, Lcom/google/net/async/l;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_50
    invoke-direct {p0}, Lcom/google/net/async/l;->h()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 228
    const-string v1, "Status = connected; Connection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v1, p0, Lcom/google/net/async/l;->f:Lcom/google/net/async/Connection;

    invoke-virtual {v1}, Lcom/google/net/async/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 231
    :cond_65
    const-string v1, "Status = idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19
.end method
