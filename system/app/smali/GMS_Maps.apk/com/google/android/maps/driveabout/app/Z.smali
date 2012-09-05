.class Lcom/google/android/maps/driveabout/app/Z;
.super Lcom/google/android/maps/driveabout/app/S;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/app/ae;

.field private final d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;ZZZ)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/S;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/Z;->c:Lcom/google/android/maps/driveabout/app/ae;

    iput-boolean p5, p0, Lcom/google/android/maps/driveabout/app/Z;->f:Z

    if-eqz p3, :cond_4e

    if-eqz p4, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b7

    const v2, 0x7f02011a

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/X;->a(II)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b6

    const v2, 0x7f02011c

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/X;->a(II)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b8

    const v2, 0x7f020119

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/X;->a(II)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    const v1, 0x7f0b00b9

    const v2, 0x7f02011b

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/X;->a(II)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/X;->a()Lcom/google/android/maps/driveabout/app/X;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/Z;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aa;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aa;-><init>(Lcom/google/android/maps/driveabout/app/Z;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/Z;Lt/o;Lu/P;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/Z;->b(Lt/o;Lu/P;Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Lt/o;Lu/P;Ljava/util/ArrayList;)V
    .registers 9

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/Z;->e:Z

    if-eqz v0, :cond_8

    monitor-exit p0

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/Z;->e:Z

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_4c

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-nez p2, :cond_1d

    if-eqz p3, :cond_27

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1d
    const v0, 0x7f0b00bd

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/X;->a(I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    if-eqz p2, :cond_31

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/maps/driveabout/app/X;->a(Lu/P;I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/P;

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/X;->a(Lu/P;I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Z;->c:Lcom/google/android/maps/driveabout/app/ae;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/app/ae;->a(Lt/o;I)Ljava/util/List;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/Z;->f:Z

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_6b

    const v2, 0x7f0b00be

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/X;->a(I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/P;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/X;->a(Lu/P;I)Lcom/google/android/maps/driveabout/app/X;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_83
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/Z;->b(Ljava/util/ArrayList;)V

    goto :goto_7
.end method


# virtual methods
.method public a(Lt/o;Lu/P;Ljava/util/ArrayList;)V
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/app/ab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/ab;-><init>(Lcom/google/android/maps/driveabout/app/Z;Lt/o;Lu/P;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ab;->start()V

    return-void
.end method
