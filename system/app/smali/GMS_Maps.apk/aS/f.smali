.class public abstract Las/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Las/f;

.field private static final j:Landroid/net/Uri;


# instance fields
.field private final b:Las/e;

.field private c:Ljava/util/Vector;

.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private f:Z

.field private g:Ljava/util/Vector;

.field private h:Ljava/lang/String;

.field private i:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 166
    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Las/f;->j:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Las/e;

    invoke-direct {v0}, Las/e;-><init>()V

    iput-object v0, p0, Las/f;->b:Las/e;

    .line 132
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Las/f;->c:Ljava/util/Vector;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Las/f;->d:Ljava/lang/Object;

    .line 147
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Las/f;->g:Ljava/util/Vector;

    .line 160
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Las/f;->i:Landroid/net/Uri;

    .line 170
    return-void
.end method

.method public static a(Las/f;)V
    .registers 1
    .parameter

    .prologue
    .line 181
    sput-object p0, Las/f;->a:Las/f;

    .line 182
    return-void
.end method

.method public static j()Las/f;
    .registers 1

    .prologue
    .line 188
    sget-object v0, Las/f;->a:Las/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Las/f;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "SID"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "LSID"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 760
    const/4 v2, 0x0

    .line 762
    :try_start_1b
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 763
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_5a

    .line 764
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 767
    sget-object v2, Las/f;->j:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "source"

    const-string v4, "android-browser"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "auth"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "continue"

    invoke-virtual {v0, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_2e .. :try_end_53} :catchall_62

    move-result-object v0

    .line 776
    if-eqz v1, :cond_59

    .line 777
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_59
    return-object v0

    .line 776
    :catchall_5a
    move-exception v0

    move-object v1, v2

    :goto_5c
    if-eqz v1, :cond_61

    .line 777
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_61
    throw v0

    .line 776
    :catchall_62
    move-exception v0

    goto :goto_5c
.end method

.method public a()V
    .registers 1

    .prologue
    .line 324
    invoke-virtual {p0}, Las/f;->w()V

    .line 325
    invoke-virtual {p0}, Las/f;->n()V

    .line 326
    return-void
.end method

.method public abstract a(I)V
.end method

.method public final a(Las/g;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Las/f;->f:Z

    .line 294
    invoke-virtual {p0, p1, v0}, Las/f;->a(Las/g;Z)V

    .line 295
    return-void
.end method

.method protected abstract a(Las/g;Z)V
.end method

.method public a(Las/h;)V
    .registers 7
    .parameter

    .prologue
    .line 538
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 539
    :try_start_3
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 542
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_f

    .line 544
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SystemEventListeners.  Cannot add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :catchall_5c
    move-exception v0

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v0

    .line 550
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 551
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5c

    .line 552
    return-void
.end method

.method public a(Las/i;)V
    .registers 4
    .parameter

    .prologue
    .line 651
    iget-object v1, p0, Las/f;->g:Ljava/util/Vector;

    monitor-enter v1

    .line 652
    :try_start_3
    iget-object v0, p0, Las/f;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 653
    monitor-exit v1

    .line 654
    return-void

    .line 653
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 687
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 688
    if-nez p1, :cond_16

    .line 689
    iput-object v2, p0, Las/f;->h:Ljava/lang/String;

    .line 690
    const-string v1, "CurrentAccountName"

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 691
    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 716
    :cond_15
    :goto_15
    return-void

    .line 698
    :cond_16
    iget-object v1, p0, Las/f;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 705
    iput-object p1, p0, Las/f;->h:Ljava/lang/String;

    .line 707
    :try_start_20
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 708
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 709
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 710
    const-string v2, "CurrentAccountName"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 711
    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_39} :catch_3a

    goto :goto_15

    .line 712
    :catch_3a
    move-exception v0

    .line 713
    const-string v1, "LOGIN - setting current account name failed."

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method public final b(Las/g;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Las/f;->f:Z

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Las/f;->a(Las/g;Z)V

    .line 305
    return-void
.end method

.method public b(Las/h;)V
    .registers 4
    .parameter

    .prologue
    .line 559
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 560
    :try_start_3
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 561
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public b(Las/i;)V
    .registers 4
    .parameter

    .prologue
    .line 660
    iget-object v1, p0, Las/f;->g:Ljava/util/Vector;

    monitor-enter v1

    .line 661
    :try_start_3
    iget-object v0, p0, Las/f;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Las/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_3
    iput-boolean p1, p0, Las/f;->e:Z

    .line 345
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public c(Las/g;)V
    .registers 5
    .parameter

    .prologue
    .line 390
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 391
    :try_start_3
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0, p1}, Las/e;->d(Las/g;)V

    .line 392
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 393
    invoke-interface {v0}, Las/h;->L_()V

    goto :goto_e

    .line 395
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 396
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected d(Las/g;)V
    .registers 3
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0, p1}, Las/e;->b(Las/g;)V

    .line 432
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public e(Las/g;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0, p1}, Las/e;->a(Las/g;)V

    .line 529
    return-void
.end method

.method protected abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()V
    .registers 1

    .prologue
    .line 676
    invoke-virtual {p0}, Las/f;->u()V

    .line 677
    return-void
.end method

.method protected i()V
    .registers 1

    .prologue
    .line 177
    invoke-virtual {p0}, Las/f;->n()V

    .line 178
    return-void
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Las/f;->b()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, Las/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final m()V
    .registers 1

    .prologue
    .line 262
    invoke-virtual {p0}, Las/f;->f()V

    .line 264
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    .line 316
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {p0}, Las/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lac/h;->b(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public o()Z
    .registers 3

    .prologue
    .line 333
    iget-object v1, p0, Las/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_3
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 335
    const/4 v0, 0x1

    monitor-exit v1

    .line 339
    :goto_d
    return v0

    .line 337
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 339
    iget-boolean v0, p0, Las/f;->e:Z

    goto :goto_d

    .line 337
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public p()V
    .registers 4

    .prologue
    .line 354
    iget-object v1, p0, Las/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_3
    iget-boolean v0, p0, Las/f;->e:Z

    if-eqz v0, :cond_f

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Las/f;->f:Z

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Las/f;->e:Z

    .line 362
    monitor-exit v1

    .line 375
    :goto_e
    return-void

    .line 364
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_34

    .line 366
    invoke-virtual {p0}, Las/f;->m()V

    .line 369
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 370
    :try_start_16
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->d()V

    .line 371
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 372
    invoke-interface {v0}, Las/h;->L_()V

    goto :goto_21

    .line 374
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0

    .line 364
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    .line 374
    :cond_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_31

    goto :goto_e
.end method

.method public q()V
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 403
    :try_start_3
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->e()V

    .line 404
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 405
    invoke-interface {v0}, Las/h;->F_()V

    goto :goto_e

    .line 407
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 408
    return-void
.end method

.method public r()V
    .registers 4

    .prologue
    .line 418
    iget-object v1, p0, Las/f;->b:Las/e;

    monitor-enter v1

    .line 419
    :try_start_3
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->f()V

    .line 420
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 421
    invoke-interface {v0}, Las/h;->M_()V

    goto :goto_e

    .line 423
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 424
    return-void
.end method

.method public s()V
    .registers 5

    .prologue
    .line 451
    iget-object v1, p0, Las/f;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_3
    iget-boolean v0, p0, Las/f;->f:Z

    if-eqz v0, :cond_37

    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Las/f;->f:Z

    .line 457
    invoke-virtual {p0}, Las/f;->m()V

    .line 460
    iget-object v2, p0, Las/f;->b:Las/e;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    .line 461
    :try_start_10
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->c()V

    .line 462
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 463
    invoke-interface {v0}, Las/h;->E_()V

    goto :goto_1b

    .line 465
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0

    .line 493
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2e

    throw v0

    .line 465
    :cond_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2b

    .line 492
    :goto_32
    const/4 v0, 0x0

    :try_start_33
    iput-boolean v0, p0, Las/f;->e:Z

    .line 493
    monitor-exit v1

    .line 494
    return-void

    .line 470
    :cond_37
    iget-object v2, p0, Las/f;->b:Las/e;

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_2e

    .line 471
    :try_start_3a
    invoke-virtual {p0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 474
    invoke-virtual {p0}, Las/f;->n()V

    .line 477
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->a()V

    .line 478
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 479
    invoke-interface {v0}, Las/h;->D_()V

    goto :goto_4e

    .line 488
    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_2e

    .line 483
    :cond_61
    :try_start_61
    iget-object v0, p0, Las/f;->b:Las/e;

    invoke-virtual {v0}, Las/e;->c()V

    .line 484
    iget-object v0, p0, Las/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 485
    invoke-interface {v0}, Las/h;->E_()V

    goto :goto_6c

    .line 488
    :cond_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_5e

    goto :goto_32
.end method

.method protected t()V
    .registers 3

    .prologue
    .line 497
    .line 498
    iget-object v1, p0, Las/f;->g:Ljava/util/Vector;

    monitor-enter v1

    .line 502
    :try_start_3
    iget-object v0, p0, Las/f;->g:Ljava/util/Vector;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 503
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/i;

    .line 505
    invoke-interface {v0}, Las/i;->o()V

    goto :goto_e

    .line 503
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 507
    :cond_21
    return-void
.end method

.method protected u()V
    .registers 3

    .prologue
    .line 510
    .line 511
    iget-object v1, p0, Las/f;->g:Ljava/util/Vector;

    monitor-enter v1

    .line 515
    :try_start_3
    iget-object v0, p0, Las/f;->g:Ljava/util/Vector;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 516
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 517
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/i;

    .line 518
    invoke-interface {v0}, Las/i;->p()V

    goto :goto_e

    .line 516
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 520
    :cond_21
    return-void
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Las/f;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 723
    const-string v0, "CurrentAccountName"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Las/f;->h:Ljava/lang/String;

    .line 726
    :cond_c
    iget-object v0, p0, Las/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Las/f;->h:Ljava/lang/String;

    .line 734
    invoke-virtual {p0}, Las/f;->v()Ljava/lang/String;

    .line 735
    return-void
.end method
