.class public Lcom/google/android/maps/driveabout/vector/v;
.super Lcom/google/android/maps/driveabout/vector/p;
.source "SourceFile"


# instance fields
.field private final g:[I

.field private volatile h:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(I)V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:J

    .line 47
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/p;-><init>(IZ)V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:J

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    .line 75
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 76
    if-ne v0, p1, :cond_1f

    if-eqz v0, :cond_1f

    .line 77
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 78
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 80
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    aput v3, v0, v3

    .line 81
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/v;->e:I

    .line 83
    :cond_25
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:J

    .line 84
    return-void
.end method

.method public c()I
    .registers 3

    .prologue
    .line 143
    const/16 v0, 0x38

    .line 144
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Lv/b;

    if-eqz v1, :cond_e

    .line 146
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->f:Lv/b;

    invoke-virtual {v1}, Lv/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_d
    :goto_d
    return v0

    .line 147
    :cond_e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->a:[B

    if-eqz v1, :cond_d

    .line 148
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 103
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/v;->h:J

    .line 104
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-nez v0, :cond_12

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 135
    :cond_11
    :goto_11
    return-void

    .line 109
    :cond_12
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 110
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    aget v1, v1, v4

    if-nez v1, :cond_4d

    .line 111
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_23

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/v;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 114
    :cond_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_11

    .line 118
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 119
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 120
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/v;->e:I

    .line 121
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/v;->e:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    .line 125
    :cond_4d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/v;->g:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 132
    const/4 v1, 0x4

    const/16 v2, 0x1401

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 134
    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_11
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-eqz v0, :cond_1d

    .line 90
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/v;->c:I

    mul-int/lit8 v1, v0, 0x4

    .line 91
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dC;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/v;->d:Ljava/nio/ByteBuffer;

    .line 94
    sget-boolean v0, Lcom/google/googlenav/android/E;->a:Z

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/v;->a(IZ)V

    .line 98
    :goto_1a
    return-void

    .line 94
    :cond_1b
    const/4 v0, 0x0

    goto :goto_17

    .line 96
    :cond_1d
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/p;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_1a
.end method
