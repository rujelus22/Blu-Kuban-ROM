.class public abstract LaE/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Z

.field private b:LaJ/B;

.field protected c:J

.field protected d:Z

.field protected volatile e:Z

.field protected final f:Ljava/lang/Object;

.field protected g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:Lt/y;

.field private l:LaE/h;


# direct methods
.method protected constructor <init>(ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaE/c;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaE/c;->f:Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, LaE/c;->g:J

    iput-boolean p1, p0, LaE/c;->d:Z

    iput-boolean p2, p0, LaE/c;->a:Z

    invoke-virtual {p0}, LaE/c;->l()V

    invoke-direct {p0}, LaE/c;->f()V

    return-void
.end method

.method private C()V
    .registers 5

    invoke-virtual {p0}, LaE/c;->s()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_11
    iget-wide v2, p0, LaE/c;->c:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    iget v2, p0, LaE/c;->j:I

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v2, p0, LaE/c;->b:LaJ/B;

    invoke-static {v2, v1}, LaJ/B;->a(LaJ/B;Ljava/io/DataOutput;)V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-direct {p0}, LaE/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lak/m;->a(Ljava/lang/String;[B)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_33} :catch_34

    goto :goto_6

    :catch_34
    move-exception v0

    goto :goto_6
.end method

.method private a(LaJ/B;Z)V
    .registers 5

    iget-object v1, p0, LaE/c;->l:LaE/h;

    monitor-enter v1

    if-eqz p2, :cond_c

    :try_start_5
    iget-object v0, p0, LaE/c;->l:LaE/h;

    invoke-virtual {v0, p1, p0}, LaE/h;->b(LaJ/B;LaE/c;)V

    :goto_a
    monitor-exit v1

    return-void

    :cond_c
    iget-object v0, p0, LaE/c;->l:LaE/h;

    invoke-virtual {v0, p1, p0}, LaE/h;->a(LaJ/B;LaE/c;)V

    goto :goto_a

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private b(LaJ/B;IIILt/y;J)LaJ/B;
    .registers 11

    iget-object v0, p0, LaE/c;->b:LaJ/B;

    iput-object p1, p0, LaE/c;->b:LaJ/B;

    iput p2, p0, LaE/c;->h:I

    iput p3, p0, LaE/c;->i:I

    iput p4, p0, LaE/c;->j:I

    iput-object p5, p0, LaE/c;->k:Lt/y;

    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_18

    :goto_12
    iput-wide p6, p0, LaE/c;->c:J

    const/4 v1, 0x1

    iput-boolean v1, p0, LaE/c;->d:Z

    return-object v0

    :cond_18
    invoke-virtual {p0}, LaE/c;->z()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide p6

    goto :goto_12
.end method

.method private f()V
    .registers 9

    const/4 v7, 0x0

    iput-object v7, p0, LaE/c;->b:LaJ/B;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaE/c;->c:J

    invoke-direct {p0}, LaE/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laf/l;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-eqz v0, :cond_42

    :try_start_11
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, LaE/c;->z()Laf/a;

    move-result-object v3

    invoke-interface {v3}, Laf/a;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0xafc80

    cmp-long v3, v3, v5

    if-gez v3, :cond_33

    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    invoke-static {v0}, LaJ/B;->a(Ljava/io/DataInput;)LaJ/B;

    move-result-object v0

    iput-object v0, p0, LaE/c;->b:LaJ/B;

    iput-wide v1, p0, LaE/c;->c:J

    iput v3, p0, LaE/c;->j:I
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_33} :catch_43

    :cond_33
    :goto_33
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-direct {p0}, LaE/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lak/m;->a(Ljava/lang/String;[B)Z

    :cond_42
    return-void

    :catch_43
    move-exception v0

    goto :goto_33
.end method

.method private g()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastLocation_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Lt/y;
    .registers 2

    iget-object v0, p0, LaE/c;->k:Lt/y;

    return-object v0
.end method

.method public B()LaE/l;
    .registers 4

    new-instance v0, LaE/l;

    invoke-virtual {p0}, LaE/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LaE/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LaE/c;->v()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaE/l;->a(LaJ/B;)V

    invoke-virtual {p0}, LaE/c;->o()I

    move-result v1

    invoke-virtual {v0, v1}, LaE/l;->a(I)V

    invoke-virtual {p0}, LaE/c;->n()I

    move-result v1

    invoke-virtual {v0, v1}, LaE/l;->b(I)V

    invoke-virtual {p0}, LaE/c;->m()I

    move-result v1

    invoke-virtual {v0, v1}, LaE/l;->c(I)V

    iget-wide v1, p0, LaE/c;->c:J

    invoke-virtual {v0, v1, v2}, LaE/l;->a(J)V

    iget-object v1, p0, LaE/c;->k:Lt/y;

    invoke-virtual {v0, v1}, LaE/l;->a(Lt/y;)V

    return-object v0
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method protected a(I)V
    .registers 4

    iget-object v1, p0, LaE/c;->l:LaE/h;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaE/c;->l:LaE/h;

    invoke-virtual {v0, p1, p0}, LaE/h;->a(ILaE/c;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(LaE/h;)V
    .registers 2

    iput-object p1, p0, LaE/c;->l:LaE/h;

    return-void
.end method

.method protected final a(LaJ/B;IIILt/y;J)V
    .registers 10

    invoke-direct/range {p0 .. p7}, LaE/c;->b(LaJ/B;IIILt/y;J)LaJ/B;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LaE/c;->a(LaJ/B;Z)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaE/c;->a(LaJ/B;Z)V

    return-void
.end method

.method protected final a(LaJ/B;IIILt/y;JZ)V
    .registers 10

    invoke-direct/range {p0 .. p7}, LaE/c;->b(LaJ/B;IIILt/y;J)LaJ/B;

    move-result-object v0

    invoke-direct {p0, v0, p8}, LaE/c;->a(LaJ/B;Z)V

    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public d()LaE/l;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l()V
    .registers 2

    const v0, 0x1869f

    iput v0, p0, LaE/c;->j:I

    return-void
.end method

.method public m()I
    .registers 2

    iget v0, p0, LaE/c;->h:I

    return v0
.end method

.method public n()I
    .registers 2

    iget v0, p0, LaE/c;->i:I

    return v0
.end method

.method public o()I
    .registers 5

    iget-boolean v0, p0, LaE/c;->d:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, LaE/c;->z()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, LaE/c;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    invoke-virtual {p0}, LaE/c;->l()V

    :cond_19
    iget-boolean v0, p0, LaE/c;->d:Z

    if-eqz v0, :cond_20

    iget v0, p0, LaE/c;->j:I

    :goto_1f
    return v0

    :cond_20
    const v0, 0x1869f

    goto :goto_1f
.end method

.method public p()J
    .registers 3

    iget-wide v0, p0, LaE/c;->c:J

    return-wide v0
.end method

.method protected q()Lam/b;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, LaE/c;->d:Z

    return v0
.end method

.method public run()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, LaE/c;->c()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaE/c;->a(I)V

    goto :goto_3
.end method

.method public s()Z
    .registers 3

    invoke-virtual {p0}, LaE/c;->o()I

    move-result v0

    const v1, 0x1869f

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized t()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaE/c;->e:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, LaE/c;->e:Z

    iget-object v1, p0, LaE/c;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    :try_start_b
    iget-object v0, p0, LaE/c;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    :try_start_11
    invoke-virtual {p0}, LaE/c;->b()V

    invoke-direct {p0}, LaE/c;->C()V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, LaE/c;->k:Lt/y;

    if-nez v0, :cond_6f

    const-string v0, ""

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaE/c;->b:LaJ/B;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " azimuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed (m/s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/c;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accuracy (m): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LaE/c;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastFix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, LaE/c;->c:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, LaE/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, LaE/c;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaE/c;->k:Lt/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public declared-synchronized u()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LaE/c;->e:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, LaE/c;->e:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BaseLocationProvider"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()LaJ/B;
    .registers 2

    iget-object v0, p0, LaE/c;->b:LaJ/B;

    return-object v0
.end method

.method public w()V
    .registers 1

    return-void
.end method

.method public x()Z
    .registers 2

    iget-boolean v0, p0, LaE/c;->a:Z

    return v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, LaE/c;->d:Z

    return v0
.end method

.method protected z()Laf/a;
    .registers 2

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    return-object v0
.end method
