.class public Lr/ac;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lr/ac;->b:I

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lr/ac;->f:Ljava/util/concurrent/CountDownLatch;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr/ac;->a:Ljava/util/ArrayList;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr/ac;->h:J

    .line 52
    return-void
.end method

.method private j()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 205
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 206
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 207
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 208
    iget-object v1, p0, Lr/ac;->d:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lr/ac;->d:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    if-nez v0, :cond_1b

    .line 212
    iput v4, p0, Lr/ac;->b:I

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lr/ac;->d:[B

    .line 216
    :cond_1b
    return-object v0
.end method


# virtual methods
.method a(J)V
    .registers 3
    .parameter

    .prologue
    .line 150
    iput-wide p1, p0, Lr/ac;->h:J

    .line 151
    return-void
.end method

.method a(Lr/ae;)V
    .registers 4
    .parameter

    .prologue
    .line 165
    iget-object v1, p0, Lr/ac;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    :try_start_3
    iget-object v0, p0, Lr/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lr/ac;->c:Z

    .line 60
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lr/ac;->c:Z

    return v0
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 181
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4a

    if-eqz v3, :cond_4a

    .line 183
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lr/ac;->g:J

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 186
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    iput-object v2, p0, Lr/ac;->d:[B

    .line 187
    const/4 v2, 0x2

    iput v2, p0, Lr/ac;->b:I

    .line 195
    :goto_2f
    iget v2, p0, Lr/ac;->b:I

    if-eq v2, v0, :cond_48

    .line 201
    :goto_33
    return v0

    .line 188
    :cond_34
    const-string v3, "application/binary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 189
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    iput-object v2, p0, Lr/ac;->d:[B

    .line 190
    iput v6, p0, Lr/ac;->b:I

    goto :goto_2f

    .line 193
    :cond_45
    iput v0, p0, Lr/ac;->b:I

    goto :goto_2f

    :cond_48
    move v0, v1

    .line 195
    goto :goto_33

    .line 196
    :cond_4a
    const/16 v3, 0x130

    if-ne v2, v3, :cond_50

    :goto_4e
    move v0, v1

    .line 201
    goto :goto_33

    .line 199
    :cond_50
    iput v0, p0, Lr/ac;->b:I

    goto :goto_4e
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 72
    iget v1, p0, Lr/ac;->b:I

    if-eqz v1, :cond_a

    iget v1, p0, Lr/ac;->b:I

    if-eq v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lr/ac;->b:I

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lr/ac;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lr/ac;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 90
    :goto_d
    if-nez v0, :cond_37

    iget v2, p0, Lr/ac;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lr/ac;->d:[B

    if-eqz v2, :cond_37

    .line 91
    monitor-enter p0

    .line 92
    :try_start_19
    iget-object v0, p0, Lr/ac;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lr/ac;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 93
    :goto_25
    if-nez v0, :cond_36

    iget-object v1, p0, Lr/ac;->d:[B

    if-eqz v1, :cond_36

    .line 94
    invoke-direct {p0}, Lr/ac;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lr/ac;->e:Ljava/lang/ref/WeakReference;

    .line 97
    :cond_36
    monitor-exit p0

    .line 99
    :cond_37
    return-object v0

    :cond_38
    move-object v0, v1

    .line 89
    goto :goto_d

    :cond_3a
    move-object v0, v1

    .line 92
    goto :goto_25

    .line 97
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public e()[B
    .registers 3

    .prologue
    .line 106
    iget v0, p0, Lr/ac;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 107
    iget-object v0, p0, Lr/ac;->d:[B

    .line 109
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lr/ac;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lr/ad;

    invoke-direct {v0, v1}, Lr/ad;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_7
.end method

.method g()J
    .registers 3

    .prologue
    .line 143
    iget-wide v0, p0, Lr/ac;->g:J

    return-wide v0
.end method

.method h()J
    .registers 3

    .prologue
    .line 157
    iget-wide v0, p0, Lr/ac;->h:J

    return-wide v0
.end method

.method i()V
    .registers 4

    .prologue
    .line 224
    iget-object v2, p0, Lr/ac;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    :try_start_5
    iget-object v0, p0, Lr/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 226
    iget-object v0, p0, Lr/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/ae;

    invoke-interface {v0, p0}, Lr/ae;->a(Lr/ac;)V

    .line 225
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 228
    :cond_1c
    iget-object v0, p0, Lr/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_28

    .line 230
    iget-object v0, p0, Lr/ac;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    return-void

    .line 229
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
