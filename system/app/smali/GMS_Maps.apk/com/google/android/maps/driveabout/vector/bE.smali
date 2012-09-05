.class public Lcom/google/android/maps/driveabout/vector/bE;
.super Lcom/google/android/maps/driveabout/vector/n;


# instance fields
.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/maps/driveabout/vector/bI;

.field private final f:I


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/vector/U;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/n;-><init>(Lcom/google/android/maps/driveabout/vector/U;)V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/U;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/bE;-><init>(ILcom/google/android/maps/driveabout/vector/U;)V

    return-void
.end method

.method private e()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()Lcom/google/android/maps/driveabout/vector/bL;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->w()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_20
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->w()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_31
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v0, v1, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v0, v1, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    monitor-enter p0

    :try_start_32
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bE;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/af;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    :cond_54
    monitor-exit p0

    goto :goto_1a

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_32 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Lcom/google/android/maps/driveabout/vector/bI;

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/af;

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/m;->a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v2

    if-ge v2, p6, :cond_7

    new-instance v3, Lcom/google/android/maps/driveabout/vector/N;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/N;-><init>(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/n;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_7

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    monitor-exit p0

    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public s_()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const v0, 0x493e0

    :goto_8
    return v0

    :cond_9
    const v0, 0x30d40

    goto :goto_8
.end method
