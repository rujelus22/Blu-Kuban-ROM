.class Lby/l;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/io/DataInputStream;

.field final b:Lby/c;

.field c:Lbw/o;

.field d:Ljava/lang/Exception;

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/util/Vector;

.field i:Ljava/util/Vector;

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:J

.field r:J

.field s:I

.field t:I

.field final synthetic u:Lby/h;


# direct methods
.method private a(I)[Lby/f;
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.createRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lby/l;->g:Ljava/lang/String;

    if-nez v1, :cond_60

    const-string v1, "WindowResumeService.Control.createRequest(): serverTicket == null"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5f

    iget v0, p0, Lby/l;->m:I

    iget-object v1, p0, Lby/l;->u:Lby/h;

    invoke-static {v1}, Lby/h;->b(Lby/h;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0}, Lby/l;->b()Lby/f;

    move-result-object v1

    const-string v2, "Length"

    iget v4, p0, Lby/l;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lby/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lby/l;->b(II)[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lby/f;->a(I[B)V

    iget-object v0, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v0}, Lby/c;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lby/f;->e(I)V

    new-array v0, v5, [Lby/f;

    aput-object v1, v0, v3

    :cond_5f
    :goto_5f
    return-object v0

    :cond_60
    iget-object v1, p0, Lby/l;->i:Ljava/util/Vector;

    if-nez v1, :cond_96

    const-string v1, "WindowResumeService.Control.createRequest(): chunkVector == null"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_5f

    invoke-direct {p0}, Lby/l;->b()Lby/f;

    move-result-object v1

    iget-object v2, p0, Lby/l;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lby/f;->b(Ljava/lang/String;)V

    const-string v2, "Length"

    iget v4, p0, Lby/l;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lby/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lby/f;->a(I[B)V

    iget-object v0, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v0}, Lby/c;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lby/f;->e(I)V

    new-array v0, v5, [Lby/f;

    aput-object v1, v0, v3

    goto :goto_5f

    :cond_96
    const-string v0, "WindowResumeService.Control.createRequest(): chunkVector != null"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    new-array v1, p1, [Lby/f;

    move v2, v3

    :goto_9e
    if-ge v2, p1, :cond_e8

    iget-object v0, p0, Lby/l;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e8

    iget-object v0, p0, Lby/l;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lby/k;

    iget v4, v0, Lby/k;->a:I

    iget v5, v0, Lby/k;->b:I

    iget-object v6, p0, Lby/l;->u:Lby/h;

    invoke-static {v6}, Lby/h;->b(Lby/h;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v0, Lby/k;->b:I

    if-le v6, v5, :cond_e2

    iget v6, v0, Lby/k;->a:I

    add-int/2addr v6, v5

    iput v6, v0, Lby/k;->a:I

    iget v6, v0, Lby/k;->b:I

    sub-int/2addr v6, v5

    iput v6, v0, Lby/k;->b:I

    :goto_cc
    invoke-direct {p0}, Lby/l;->b()Lby/f;

    move-result-object v0

    iget-object v6, p0, Lby/l;->g:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lby/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lby/l;->b(II)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lby/f;->a(I[B)V

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9e

    :cond_e2
    iget-object v0, p0, Lby/l;->i:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_cc

    :cond_e8
    move-object v0, v1

    goto/16 :goto_5f
.end method

.method private b()Lby/f;
    .registers 5

    new-instance v0, Lby/f;

    invoke-direct {v0}, Lby/f;-><init>()V

    new-instance v1, Lby/m;

    iget-object v2, p0, Lby/l;->u:Lby/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lby/m;-><init>(Lby/h;Lby/i;)V

    invoke-virtual {v0, v1}, Lby/f;->a(Lbw/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lby/f;->b(I)V

    return-object v0
.end method

.method private b(II)[B
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Control.getRequestPayload("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget v0, p0, Lby/l;->l:I

    if-ge p1, v0, :cond_32

    iget-object v0, p0, Lby/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lby/l;->a:Ljava/io/DataInputStream;

    :cond_32
    iget-object v0, p0, Lby/l;->a:Ljava/io/DataInputStream;

    if-nez v0, :cond_66

    const/4 v0, 0x0

    iput v0, p0, Lby/l;->l:I

    iget-object v0, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v0}, Lby/c;->e()I

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v0}, Lby/c;->e()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7a

    :cond_4a
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, LU/p;

    iget-object v2, p0, Lby/l;->u:Lby/h;

    invoke-static {v2}, Lby/h;->a(Lby/h;)Lbw/d;

    move-result-object v2

    invoke-virtual {v2}, Lbw/d;->b_()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v3}, Lby/c;->b_()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LU/p;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lby/l;->a:Ljava/io/DataInputStream;

    :cond_66
    :goto_66
    iget v0, p0, Lby/l;->l:I

    if-le p1, v0, :cond_88

    iget v0, p0, Lby/l;->l:I

    iget-object v1, p0, Lby/l;->a:Ljava/io/DataInputStream;

    iget v2, p0, Lby/l;->l:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lby/l;->l:I

    goto :goto_66

    :cond_7a
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lby/l;->b:Lby/c;

    invoke-virtual {v1}, Lby/c;->b_()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lby/l;->a:Ljava/io/DataInputStream;

    goto :goto_66

    :cond_88
    new-array v0, p2, [B

    iget-object v1, p0, Lby/l;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    iget v1, p0, Lby/l;->l:I

    add-int/2addr v1, p2

    iput v1, p0, Lby/l;->l:I

    return-object v0
.end method

.method private c()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lby/l;->a(J)V

    return-void
.end method


# virtual methods
.method a(II)I
    .registers 6

    if-nez p2, :cond_3

    const/4 p2, 0x1

    :cond_3
    mul-int/lit16 v0, p1, 0x3e8

    div-int/2addr v0, p2

    iget v1, p0, Lby/l;->t:I

    iget v2, p0, Lby/l;->t:I

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): bandwidthEstimate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    return v0
.end method

.method a(JJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    div-long v0, p3, p1

    goto :goto_8
.end method

.method public declared-synchronized a()V
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    const-string v0, "WindowResumeService.Control.run()"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowResumeService.Control.run(): requestVector.size() == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_29
    if-lez v0, :cond_b1

    add-int/lit8 v2, v0, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowResumeService.Control.run(): i == "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lby/f;

    invoke-virtual {v0}, Lby/f;->f()Lby/g;

    move-result-object v3

    if-eqz v3, :cond_74

    iget v4, p0, Lby/l;->p:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lby/l;->p:I

    invoke-virtual {p0, v3}, Lby/l;->a(Lby/g;)Z

    move-result v4

    if-eqz v4, :cond_76

    iget v0, p0, Lby/l;->k:I

    iget v4, p0, Lby/l;->j:I

    if-ge v0, v4, :cond_6c

    iget v0, p0, Lby/l;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lby/l;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lby/l;->o:I

    :cond_6c
    iget-object v0, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_71
    invoke-virtual {v3}, Lby/g;->a()V

    :cond_74
    move v0, v2

    goto :goto_29

    :cond_76
    iget v4, p0, Lby/l;->o:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lby/l;->o:I

    iget v4, p0, Lby/l;->o:I

    iget v5, p0, Lby/l;->n:I

    if-ge v4, v5, :cond_93

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lby/f;->a(Lby/g;)V

    iget-object v4, p0, Lby/l;->u:Lby/h;

    invoke-static {v4}, Lby/h;->c(Lby/h;)Lbv/g;

    move-result-object v4

    invoke-virtual {v4, v0}, Lbv/g;->a(Lbw/m;)V
    :try_end_8f
    .catchall {:try_start_2 .. :try_end_8f} :catchall_90

    goto :goto_71

    :catchall_90
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_93
    :try_start_93
    invoke-virtual {v3}, Lby/g;->b()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {v3}, Lby/g;->c()Ljava/lang/Exception;

    move-result-object v0

    iput-object v0, p0, Lby/l;->d:Ljava/lang/Exception;

    :goto_9f
    iget-object v0, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_71

    :cond_a5
    new-instance v0, Lbv/d;

    invoke-virtual {v3}, Lby/g;->d()I

    move-result v4

    invoke-direct {v0, v4}, Lbv/d;-><init>(I)V

    iput-object v0, p0, Lby/l;->d:Ljava/lang/Exception;

    goto :goto_9f

    :cond_b1
    invoke-direct {p0}, Lby/l;->c()V

    iget-object v0, p0, Lby/l;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_f3

    const-string v0, "WindowResumeService.Control.run(): exception != null"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->d(Lby/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_c4
    .catchall {:try_start_93 .. :try_end_c4} :catchall_90

    :try_start_c4
    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->e(Lby/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_c4 .. :try_end_ce} :catchall_f0

    :try_start_ce
    new-instance v0, LY/b;

    iget-object v1, p0, Lby/l;->u:Lby/h;

    invoke-static {v1}, Lby/h;->f(Lby/h;)LY/c;

    move-result-object v1

    new-instance v2, Lby/j;

    iget-object v3, p0, Lby/l;->b:Lby/c;

    iget-object v4, p0, Lby/l;->d:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Lby/j;-><init>(Lby/c;Ljava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->f()V

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V
    :try_end_ee
    .catchall {:try_start_ce .. :try_end_ee} :catchall_90

    :cond_ee
    :goto_ee
    monitor-exit p0

    return-void

    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v0

    :cond_f3
    iget-boolean v0, p0, Lby/l;->e:Z

    if-eqz v0, :cond_131

    const-string v0, "WindowResumeService.Control.run(): done == true"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->d(Lby/h;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_103
    .catchall {:try_start_f2 .. :try_end_103} :catchall_90

    :try_start_103
    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->e(Lby/h;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_103 .. :try_end_10d} :catchall_12e

    :try_start_10d
    new-instance v0, LY/b;

    iget-object v1, p0, Lby/l;->u:Lby/h;

    invoke-static {v1}, Lby/h;->f(Lby/h;)LY/c;

    move-result-object v1

    new-instance v2, Lby/j;

    iget-object v3, p0, Lby/l;->b:Lby/c;

    iget-object v4, p0, Lby/l;->c:Lbw/o;

    invoke-direct {v2, v3, v4}, Lby/j;-><init>(Lby/c;Lbw/o;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->f()V

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V
    :try_end_12d
    .catchall {:try_start_10d .. :try_end_12d} :catchall_90

    goto :goto_ee

    :catchall_12e
    move-exception v0

    :try_start_12f
    monitor-exit v1
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    :try_start_130
    throw v0

    :cond_131
    const-string v0, "WindowResumeService.Control.run(): queuing requests"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->i:Ljava/util/Vector;

    if-eqz v0, :cond_152

    iget-object v0, p0, Lby/l;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_152

    iget-object v0, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_152

    const-string v0, "WindowResumeService.Control.run(): resetting chunkVector"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lby/l;->i:Ljava/util/Vector;
    :try_end_152
    .catchall {:try_start_130 .. :try_end_152} :catchall_90

    :cond_152
    :try_start_152
    iget v0, p0, Lby/l;->k:I

    iget-object v2, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lby/l;->a(I)[Lby/f;

    move-result-object v2

    if-eqz v2, :cond_ee

    move v0, v1

    :goto_162
    array-length v1, v2

    if-ge v0, v1, :cond_ee

    aget-object v1, v2, v0

    if-eqz v1, :cond_18d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.run(): request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lby/l;->h:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lby/l;->u:Lby/h;

    invoke-static {v3}, Lby/h;->c(Lby/h;)Lbv/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lbv/g;->a(Lbw/m;)V
    :try_end_18d
    .catchall {:try_start_152 .. :try_end_18d} :catchall_90
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_18d} :catch_190

    :cond_18d
    add-int/lit8 v0, v0, 0x1

    goto :goto_162

    :catch_190
    move-exception v0

    :try_start_191
    iput-object v0, p0, Lby/l;->d:Ljava/lang/Exception;

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->g(Lby/h;)LY/b;

    move-result-object v0

    invoke-virtual {v0}, LY/b;->f()V
    :try_end_19c
    .catchall {:try_start_191 .. :try_end_19c} :catchall_90

    goto/16 :goto_ee
.end method

.method a(J)V
    .registers 11

    const-string v0, "WindowResumeService.Control.updateProgress()"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-wide v0, p0, Lby/l;->q:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-wide v1, p0, Lby/l;->q:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    iput-wide p1, p0, Lby/l;->q:J

    const/4 v0, 0x0

    :cond_15
    const/16 v1, 0x64

    if-lt v0, v1, :cond_44

    iget v1, p0, Lby/l;->p:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_44

    iget v1, p0, Lby/l;->l:I

    iget v2, p0, Lby/l;->s:I

    if-le v1, v2, :cond_3e

    iget v1, p0, Lby/l;->l:I

    iget v2, p0, Lby/l;->s:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lby/l;->a(II)I

    move-result v0

    iput v0, p0, Lby/l;->t:I

    iget v0, p0, Lby/l;->t:I

    int-to-long v0, v0

    iget v2, p0, Lby/l;->m:I

    iget v3, p0, Lby/l;->l:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lby/l;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lby/l;->r:J

    :cond_3e
    iget v0, p0, Lby/l;->l:I

    iput v0, p0, Lby/l;->s:I

    iput-wide p1, p0, Lby/l;->q:J

    :cond_44
    iget v0, p0, Lby/l;->p:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_63

    new-instance v6, LY/b;

    iget-object v0, p0, Lby/l;->u:Lby/h;

    invoke-static {v0}, Lby/h;->f(Lby/h;)LY/c;

    move-result-object v7

    new-instance v0, Lby/j;

    iget-object v1, p0, Lby/l;->b:Lby/c;

    iget v2, p0, Lby/l;->l:I

    int-to-long v2, v2

    iget-wide v4, p0, Lby/l;->r:J

    invoke-direct/range {v0 .. v5}, Lby/j;-><init>(Lby/c;JJ)V

    invoke-direct {v6, v7, v0}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v6}, LY/b;->f()V

    :cond_63
    return-void
.end method

.method public a(Lby/g;)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowResumeService.Control.processResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lby/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lby/g;->b()Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v1, "WindowResumeService.Control.processResponse(): exception != null"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    :goto_2a
    return v0

    :cond_2b
    invoke-virtual {p1}, Lby/g;->d()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lby/h;->b(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_f8

    :pswitch_48
    const-string v1, "WindowResumeService.Control.processResponse(): default"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    goto :goto_2a

    :pswitch_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowResumeService.Control.processResponse(): statusCode == OK ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lby/l;->g:Ljava/lang/String;

    if-nez v3, :cond_82

    const-string v3, "WindowResumeService.Control.processResponse(): serverTicket == null"

    invoke-static {v3}, Lby/h;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lby/g;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lby/l;->g:Ljava/lang/String;

    iget-object v3, p0, Lby/l;->u:Lby/h;

    iget-object v4, p0, Lby/l;->f:Ljava/lang/String;

    iget-object v5, p0, Lby/l;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lby/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    invoke-virtual {p1}, Lby/g;->f()I

    move-result v3

    if-nez v3, :cond_a7

    if-nez v2, :cond_a7

    const-string v0, "WindowResumeService.Control.processResponse(): missingChunkCount == 0"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    :try_start_8f
    invoke-virtual {p1}, Lby/g;->i()Ljava/io/DataInputStream;

    move-result-object v0

    new-instance v2, Lbw/l;

    invoke-direct {v2, v0}, Lbw/l;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v2}, Lbw/l;->b()Lbw/o;

    move-result-object v0

    iput-object v0, p0, Lby/l;->c:Lbw/o;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lby/l;->e:Z
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a1} :catch_a3

    :cond_a1
    :goto_a1
    move v0, v1

    goto :goto_2a

    :catch_a3
    move-exception v0

    iput-object v0, p0, Lby/l;->d:Ljava/lang/Exception;

    goto :goto_a1

    :cond_a7
    const-string v2, "WindowResumeService.Control.processResponse(): missingChunkCount > 0"

    invoke-static {v2}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lby/l;->i:Ljava/util/Vector;

    if-nez v2, :cond_a1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lby/l;->i:Ljava/util/Vector;

    invoke-virtual {p1}, Lby/g;->g()[I

    move-result-object v2

    invoke-virtual {p1}, Lby/g;->h()[I

    move-result-object v4

    :goto_bf
    if-ge v0, v3, :cond_a1

    iget-object v5, p0, Lby/l;->i:Ljava/util/Vector;

    new-instance v6, Lby/k;

    iget-object v7, p0, Lby/l;->u:Lby/h;

    aget v8, v2, v0

    aget v9, v4, v0

    invoke-direct {v6, v7, v8, v9}, Lby/k;-><init>(Lby/h;II)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :pswitch_d4
    const-string v0, "WindowResumeServiceControl.processResponse(): statusCode == CONTINUE (2)"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iput-boolean v1, p0, Lby/l;->e:Z

    move v0, v1

    goto/16 :goto_2a

    :pswitch_de
    const-string v0, "WindowResumeService.Control.processResponse(): statusCode == BAD TICKET (-4)"

    invoke-static {v0}, Lby/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lby/l;->u:Lby/h;

    iget-object v2, p0, Lby/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lby/h;->a(Ljava/lang/String;)V

    iput-object v5, p0, Lby/l;->g:Ljava/lang/String;

    iput-object v5, p0, Lby/l;->i:Ljava/util/Vector;

    move v0, v1

    goto/16 :goto_2a

    :pswitch_f1
    const-string v1, "WindowResumeService.Control.processResponse(): statusCode == CANNOT_EXTEND (-5)"

    invoke-static {v1}, Lby/h;->b(Ljava/lang/String;)V

    goto/16 :goto_2a

    :pswitch_data_f8
    .packed-switch -0x5
        :pswitch_f1
        :pswitch_de
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_4e
        :pswitch_48
        :pswitch_d4
        :pswitch_4e
    .end packed-switch
.end method
