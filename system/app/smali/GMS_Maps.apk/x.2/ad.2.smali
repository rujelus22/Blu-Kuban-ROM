.class public Lx/ad;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:I

.field private c:Z

.field private d:[B

.field private e:Ljava/lang/ref/WeakReference;

.field private final f:Ljava/util/concurrent/CountDownLatch;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx/ad;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lx/ad;->f:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/ad;->a:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lx/ad;->h:J

    return-void
.end method

.method private j()Landroid/graphics/Bitmap;
    .registers 6

    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v1, p0, Lx/ad;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lx/ad;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1b

    iput v4, p0, Lx/ad;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lx/ad;->d:[B

    :cond_1b
    return-object v0
.end method


# virtual methods
.method a(J)V
    .registers 3

    iput-wide p1, p0, Lx/ad;->h:J

    return-void
.end method

.method a(Lx/af;)V
    .registers 4

    iget-object v1, p0, Lx/ad;->a:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lx/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lx/ad;->c:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lx/ad;->c:Z

    return v0
.end method

.method a(Lam/b;)Z
    .registers 10

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v6}, Lam/b;->d(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4a

    if-eqz v3, :cond_4a

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lam/b;->e(I)J

    move-result-wide v4

    iput-wide v4, p0, Lx/ad;->g:J

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {p1, v7}, Lam/b;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lx/ad;->d:[B

    const/4 v2, 0x2

    iput v2, p0, Lx/ad;->b:I

    :goto_2f
    iget v2, p0, Lx/ad;->b:I

    if-eq v2, v0, :cond_48

    :goto_33
    return v0

    :cond_34
    const-string v3, "application/binary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {p1, v7}, Lam/b;->c(I)[B

    move-result-object v2

    iput-object v2, p0, Lx/ad;->d:[B

    iput v6, p0, Lx/ad;->b:I

    goto :goto_2f

    :cond_45
    iput v0, p0, Lx/ad;->b:I

    goto :goto_2f

    :cond_48
    move v0, v1

    goto :goto_33

    :cond_4a
    const/16 v3, 0x130

    if-ne v2, v3, :cond_50

    :goto_4e
    move v0, v1

    goto :goto_33

    :cond_50
    iput v0, p0, Lx/ad;->b:I

    goto :goto_4e
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lx/ad;->b:I

    if-eqz v1, :cond_a

    iget v1, p0, Lx/ad;->b:I

    if-eq v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lx/ad;->b:I

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lx/ad;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lx/ad;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_d
    if-nez v0, :cond_37

    iget v2, p0, Lx/ad;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lx/ad;->d:[B

    if-eqz v2, :cond_37

    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lx/ad;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lx/ad;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_25
    if-nez v0, :cond_36

    iget-object v1, p0, Lx/ad;->d:[B

    if-eqz v1, :cond_36

    invoke-direct {p0}, Lx/ad;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lx/ad;->e:Ljava/lang/ref/WeakReference;

    :cond_36
    monitor-exit p0

    :cond_37
    return-object v0

    :cond_38
    move-object v0, v1

    goto :goto_d

    :cond_3a
    move-object v0, v1

    goto :goto_25

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public e()[B
    .registers 3

    iget v0, p0, Lx/ad;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lx/ad;->d:[B

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .registers 3

    invoke-virtual {p0}, Lx/ad;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lx/ae;

    invoke-direct {v0, p0, v1}, Lx/ae;-><init>(Lx/ad;Landroid/graphics/Bitmap;)V

    goto :goto_7
.end method

.method g()J
    .registers 3

    iget-wide v0, p0, Lx/ad;->g:J

    return-wide v0
.end method

.method h()J
    .registers 3

    iget-wide v0, p0, Lx/ad;->h:J

    return-wide v0
.end method

.method i()V
    .registers 4

    iget-object v2, p0, Lx/ad;->a:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lx/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, Lx/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/af;

    invoke-interface {v0, p0}, Lx/af;->a(Lx/ad;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_1c
    iget-object v0, p0, Lx/ad;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    iget-object v0, p0, Lx/ad;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
