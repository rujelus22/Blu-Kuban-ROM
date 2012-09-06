.class public Lcom/google/android/maps/driveabout/vector/bX;
.super Lcom/google/android/maps/driveabout/vector/e;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/ArrayList;

.field private e:Lcom/google/android/maps/driveabout/vector/cb;

.field private final f:I


# direct methods
.method public constructor <init>(ILcom/google/android/maps/driveabout/vector/S;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/e;-><init>(Lcom/google/android/maps/driveabout/vector/S;)V

    .line 40
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->e:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->d()Lcom/google/android/maps/driveabout/vector/ce;

    move-result-object v0

    .line 100
    :cond_b
    :goto_b
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 101
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ce;->a()Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v1

    .line 102
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->y()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_20
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ad;->y()Z

    move-result v2

    if-nez v2, :cond_b

    .line 106
    :cond_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 108
    :cond_31
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->e:Lcom/google/android/maps/driveabout/vector/cb;

    if-eqz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v0, v1, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v0, v1, :cond_1b

    .line 93
    :cond_1a
    :goto_1a
    return-void

    .line 72
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 73
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 74
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 80
    monitor-enter p0

    .line 81
    :try_start_32
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bX;->e()V

    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_54

    .line 83
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 88
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

.method public a(Lcom/google/android/maps/driveabout/vector/cb;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bX;->e:Lcom/google/android/maps/driveabout/vector/cb;

    .line 49
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 114
    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v2, :cond_7

    .line 117
    check-cast v0, Lcom/google/android/maps/driveabout/vector/d;

    .line 118
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/d;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v2

    .line 119
    if-ge v2, p6, :cond_7

    .line 120
    new-instance v3, Lcom/google/android/maps/driveabout/vector/H;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/H;-><init>(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/e;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_7

    .line 113
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_2b
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public u_()I
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bX;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const v0, 0x493e0

    :goto_8
    return v0

    :cond_9
    const v0, 0x30d40

    goto :goto_8
.end method
