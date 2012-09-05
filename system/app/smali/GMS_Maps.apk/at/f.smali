.class public Lat/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lat/h;

.field private g:Laf/a;


# direct methods
.method public constructor <init>(Lat/h;Laf/a;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lat/f;->a:I

    iput-object v1, p0, Lat/f;->b:Ljava/lang/String;

    iput-object v1, p0, Lat/f;->c:Ljava/lang/String;

    iput-object p1, p0, Lat/f;->f:Lat/h;

    iput-object p2, p0, Lat/f;->g:Laf/a;

    return-void
.end method

.method private a(Ljava/lang/String;III)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-direct {p0, v1, p1, v0}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "o"

    invoke-direct {p0, v1, p1, v0}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ns"

    invoke-direct {p0, v1, p1, v0}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "|"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1, p1, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_29
    const-string v0, ""

    goto :goto_17
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    const-string v0, "s"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    const-string v0, "f"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lat/f;->f:Lat/h;

    invoke-virtual {v1}, Lat/h;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lat/f;->g:Laf/a;

    invoke-interface {v1}, Laf/a;->c()J

    move-result-wide v1

    iget-object v3, p0, Lat/f;->f:Lat/h;

    invoke-virtual {v3}, Lat/h;->n()J

    move-result-wide v3

    iget-object v5, p0, Lat/f;->f:Lat/h;

    invoke-virtual {v5}, Lat/h;->m()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2d

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_9

    :cond_2d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private d()V
    .registers 7

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lat/f;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    monitor-exit p0

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lat/f;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lat/f;->b:Ljava/lang/String;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lat/f;->b:Ljava/lang/String;

    monitor-exit p0

    goto :goto_7

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lat/f;->g:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget v2, p0, Lat/f;->a:I

    packed-switch v2, :pswitch_data_5c

    :goto_28
    iget-object v0, p0, Lat/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lat/f;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lat/f;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lat/f;->a:I

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_1a

    iget-object v0, p0, Lat/f;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lat/f;->b(Ljava/lang/String;)V

    invoke-static {}, Laf/m;->a()Laf/m;

    move-result-object v0

    invoke-virtual {v0, v5}, Laf/m;->a(Z)V

    goto :goto_7

    :pswitch_40
    :try_start_40
    iget-object v0, p0, Lat/f;->b:Ljava/lang/String;

    const-string v1, "d"

    invoke-direct {p0, v0, v1}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lat/f;->b:Ljava/lang/String;

    monitor-exit p0

    goto :goto_7

    :pswitch_4c
    iget-object v2, p0, Lat/f;->c:Ljava/lang/String;

    iget-wide v3, p0, Lat/f;->d:J

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lat/f;->a(Ljava/lang/String;J)V

    goto :goto_28

    :pswitch_55
    iget-object v0, p0, Lat/f;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lat/f;->c(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_1a

    goto :goto_28

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4c
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lat/f;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lat/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x2

    iput v0, p0, Lat/f;->a:I

    iget-object v0, p0, Lat/f;->g:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/f;->d:J

    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    iget v0, p0, Lat/f;->a:I

    if-ne v0, v2, :cond_12

    const/4 v0, 0x3

    iput v0, p0, Lat/f;->a:I

    iput-object p1, p0, Lat/f;->e:Ljava/lang/Object;

    goto :goto_12

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Ljava/lang/Object;JII)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lat/f;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lat/f;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_c

    :cond_a
    monitor-exit p0

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lat/f;->a:I

    iget-object v0, p0, Lat/f;->c:Ljava/lang/String;

    iget-wide v1, p0, Lat/f;->d:J

    const/4 v3, 0x0

    iput-object v3, p0, Lat/f;->e:Ljava/lang/Object;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    sub-long v1, p2, v1

    long-to-int v1, v1

    invoke-direct {p0, v0, v1, p4, p5}, Lat/f;->a(Ljava/lang/String;III)V

    goto :goto_b

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lat/f;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-string v0, "WiFi"

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    monitor-enter p0

    :try_start_18
    iget-object v0, p0, Lat/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string v0, "d"

    invoke-direct {p0, p1, v0}, Lat/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_6

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    iput-object p1, p0, Lat/f;->b:Ljava/lang/String;

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    iget-object v0, p0, Lat/f;->f:Lat/h;

    invoke-virtual {v0}, Lat/h;->e()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lat/f;->d()V

    goto :goto_6
.end method

.method protected b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
