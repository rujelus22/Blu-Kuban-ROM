.class public Lcom/google/android/location/localizer/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Li/E;

.field private final b:Lc/l;

.field private final c:Lcom/google/android/location/localizer/p;

.field private d:Z

.field private e:Le/s;


# direct methods
.method public constructor <init>(Li/E;Lc/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/location/localizer/p;

    invoke-direct {v0}, Lcom/google/android/location/localizer/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/localizer/s;->c:Lcom/google/android/location/localizer/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/localizer/s;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    iput-object p1, p0, Lcom/google/android/location/localizer/s;->a:Li/E;

    iput-object p2, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    return-void
.end method

.method private static a(Le/t;)I
    .registers 4

    sget-object v0, Lcom/google/android/location/localizer/t;->a:[I

    invoke-virtual {p0}, Le/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Programming error: unsupported request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_24
    const/4 v0, 0x3

    :goto_25
    return v0

    :pswitch_26
    const/4 v0, 0x2

    goto :goto_25

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_26
    .end packed-switch
.end method

.method private static b(Le/s;)LW/a;
    .registers 4

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->v:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Le/s;->a()Le/t;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/location/localizer/s;->a(Le/t;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Le/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LW/a;->b(ILjava/lang/String;)V

    new-instance v1, LW/a;

    sget-object v2, Lk/a;->c:LW/d;

    invoke-direct {v1, v2}, LW/a;-><init>(LW/d;)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, LW/a;->b(ILW/a;)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LW/a;->g(II)V

    new-instance v0, LW/a;

    sget-object v2, Lk/a;->ap:LW/d;

    invoke-direct {v0, v2}, LW/a;-><init>(LW/d;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, LW/a;->a(ILW/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;JZ)Le/k;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1}, Lc/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1, p2, p3}, Lc/l;->a(Ljava/lang/String;J)Le/k;

    move-result-object v0

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    move-object v0, v1

    goto :goto_11

    :cond_14
    if-eqz p4, :cond_1f

    invoke-static {p1}, Le/s;->a(Ljava/lang/String;)Le/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/localizer/s;->a(Le/s;)V

    move-object v0, v1

    goto :goto_11

    :cond_1f
    move-object v0, v1

    goto :goto_11
.end method

.method public a(JJ)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/l;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/location/localizer/s;->d:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->c:Lcom/google/android/location/localizer/p;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/p;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/localizer/s;->d:Z

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->c:Lcom/google/android/location/localizer/p;

    invoke-virtual {v0}, Lcom/google/android/location/localizer/p;->a()Le/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->a:Li/E;

    iget-object v1, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    invoke-static {v1}, Lcom/google/android/location/localizer/s;->b(Le/s;)LW/a;

    move-result-object v1

    invoke-interface {v0, v1}, Li/E;->a(LW/a;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1, p2}, Lc/l;->a(J)V

    return-void
.end method

.method public a(LW/a;J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1, p2, p3}, Lc/l;->a(LW/a;J)V

    return-void
.end method

.method declared-synchronized a(Le/s;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    invoke-virtual {v0, p1}, Le/s;->equals(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_15

    move-result v0

    if-eqz v0, :cond_f

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/location/localizer/s;->c:Lcom/google/android/location/localizer/p;

    invoke-virtual {v0, p1}, Lcom/google/android/location/localizer/p;->a(Le/s;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_d

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;JZ)Le/h;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1}, Lc/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0, p1, p2, p3}, Lc/l;->b(Ljava/lang/String;J)Le/h;

    move-result-object v0

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    move-object v0, v1

    goto :goto_11

    :cond_14
    if-eqz p4, :cond_1f

    invoke-static {p1}, Le/s;->b(Ljava/lang/String;)Le/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/localizer/s;->a(Le/s;)V

    move-object v0, v1

    goto :goto_11

    :cond_1f
    move-object v0, v1

    goto :goto_11
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    invoke-virtual {v0}, Lc/l;->b()V

    return-void
.end method

.method public declared-synchronized b(LW/a;J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/localizer/s;->b:Lc/l;

    iget-object v1, p0, Lcom/google/android/location/localizer/s;->e:Le/s;

    invoke-virtual {v0, p1, p2, p3, v1}, Lc/l;->a(LW/a;JLe/s;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/localizer/s;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/localizer/s;->e:Le/s;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
