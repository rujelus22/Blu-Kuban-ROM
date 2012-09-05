.class public abstract Lcom/google/googlenav/login/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/googlenav/login/g;

.field private static final j:Landroid/net/Uri;


# instance fields
.field private final b:Lcom/google/googlenav/login/e;

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

    const-string v0, "https://www.google.com/accounts/TokenAuth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/login/g;->j:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlenav/login/e;

    invoke-direct {v0}, Lcom/google/googlenav/login/e;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/g;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/g;->i:Landroid/net/Uri;

    return-void
.end method

.method public static a(Lcom/google/googlenav/login/g;)V
    .registers 1

    sput-object p0, Lcom/google/googlenav/login/g;->a:Lcom/google/googlenav/login/g;

    return-void
.end method

.method public static j()Lcom/google/googlenav/login/g;
    .registers 1

    sget-object v0, Lcom/google/googlenav/login/g;->a:Lcom/google/googlenav/login/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/login/g;->i:Landroid/net/Uri;

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

    const/4 v2, 0x0

    :try_start_1b
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_5a

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/login/g;->j:Landroid/net/Uri;

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

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_59
    return-object v0

    :catchall_5a
    move-exception v0

    move-object v1, v2

    :goto_5c
    if-eqz v1, :cond_61

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_61
    throw v0

    :catchall_62
    move-exception v0

    goto :goto_5c
.end method

.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->w()V

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->n()V

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Lcom/google/googlenav/login/h;)V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/e;->d(Lcom/google/googlenav/login/h;)V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->F_()V

    goto :goto_e

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

    return-void
.end method

.method public a(Lcom/google/googlenav/login/i;)V
    .registers 7

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Laf/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_f

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

    :catchall_5c
    move-exception v0

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v0

    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5c

    return-void
.end method

.method public a(Lcom/google/googlenav/login/j;)V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    if-nez p1, :cond_16

    iput-object v2, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    const-string v1, "CurrentAccountName"

    invoke-interface {v0, v1, v2}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Lak/m;->a()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iput-object p1, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    :try_start_20
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string v2, "CurrentAccountName"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lak/m;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Lak/m;->a()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_39} :catch_3a

    goto :goto_15

    :catch_3a
    move-exception v0

    const-string v1, "LOGIN - setting current account name failed."

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
.end method

.method protected b(Lcom/google/googlenav/login/h;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/e;->b(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public b(Lcom/google/googlenav/login/i;)V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public b(Lcom/google/googlenav/login/j;)V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/g;->f:Z

    invoke-virtual/range {p0 .. p5}, Lcom/google/googlenav/login/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/googlenav/login/g;->e:Z

    monitor-exit v1

    return-void

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

.method public c(Lcom/google/googlenav/login/h;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/login/e;->a(Lcom/google/googlenav/login/h;)V

    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method protected abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->u()V

    return-void
.end method

.method protected i()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->n()V

    return-void
.end method

.method public final k()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->b()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final m()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->f()V

    return-void
.end method

.method public n()V
    .registers 3

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public o()Z
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    monitor-exit v1

    :goto_d
    return v0

    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    iget-boolean v0, p0, Lcom/google/googlenav/login/g;->e:Z

    goto :goto_d

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

    iget-object v1, p0, Lcom/google/googlenav/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/googlenav/login/g;->e:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/login/g;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/g;->e:Z

    monitor-exit v1

    :goto_e
    return-void

    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_34

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->m()V

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->d()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->F_()V

    goto :goto_21

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_31

    throw v0

    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_31

    goto :goto_e
.end method

.method public q()V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->e()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->B_()V

    goto :goto_e

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

    return-void
.end method

.method public r()V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->f()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->C_()V

    goto :goto_e

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

    return-void
.end method

.method public s()V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/login/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/googlenav/login/g;->f:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/login/g;->f:Z

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->m()V

    iget-object v2, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    :try_start_10
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->c()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->i()V

    goto :goto_1b

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2b

    :goto_32
    const/4 v0, 0x0

    :try_start_33
    iput-boolean v0, p0, Lcom/google/googlenav/login/g;->e:Z

    monitor-exit v1

    return-void

    :cond_37
    iget-object v2, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    monitor-enter v2
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_2e

    :try_start_3a
    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->n()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->a()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->E_()V

    goto :goto_4e

    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_2e

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/google/googlenav/login/g;->b:Lcom/google/googlenav/login/e;

    invoke-virtual {v0}, Lcom/google/googlenav/login/e;->c()V

    iget-object v0, p0, Lcom/google/googlenav/login/g;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/i;

    invoke-interface {v0}, Lcom/google/googlenav/login/i;->i()V

    goto :goto_6c

    :cond_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_61 .. :try_end_7d} :catchall_5e

    goto :goto_32
.end method

.method protected t()V
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/j;

    invoke-interface {v0}, Lcom/google/googlenav/login/j;->o()V

    goto :goto_e

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    return-void
.end method

.method protected u()V
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/login/g;->g:Ljava/util/Vector;

    invoke-static {v0}, LK/bn;->a(Ljava/util/Collection;)LK/bn;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/login/j;

    invoke-interface {v0}, Lcom/google/googlenav/login/j;->p()V

    goto :goto_e

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    return-void
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, "CurrentAccountName"

    invoke-static {v0}, Laf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/login/g;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/login/g;->v()Ljava/lang/String;

    return-void
.end method
