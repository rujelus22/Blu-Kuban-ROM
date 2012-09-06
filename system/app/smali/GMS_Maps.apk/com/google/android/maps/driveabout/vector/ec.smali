.class public Lcom/google/android/maps/driveabout/vector/ec;
.super Lcom/google/android/maps/driveabout/vector/dY;
.source "SourceFile"


# instance fields
.field private final h:[I

.field private volatile i:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->i:J

    .line 49
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(IZ)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->i:J

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    if-eqz v0, :cond_c

    .line 59
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aput v1, v0, v1

    .line 61
    :cond_c
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    .line 77
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->i:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 78
    if-ne v0, p1, :cond_1f

    if-eqz v0, :cond_1f

    .line 79
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 82
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aput v3, v0, v3

    .line 83
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/ec;->a:I

    .line 85
    :cond_25
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->i:J

    .line 86
    return-void
.end method

.method public d()I
    .registers 3

    .prologue
    .line 158
    const/16 v0, 0x38

    .line 159
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    if-eqz v1, :cond_10

    .line 161
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    invoke-virtual {v1}, Lv/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 165
    :cond_f
    :goto_f
    return v0

    .line 162
    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->b:[I

    if-eqz v1, :cond_f

    .line 163
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x8892

    const/4 v4, 0x0

    .line 118
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->i:J

    .line 119
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-nez v0, :cond_12

    .line 120
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 150
    :cond_11
    :goto_11
    return-void

    .line 124
    :cond_12
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aget v1, v1, v4

    if-nez v1, :cond_4f

    .line 126
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    if-nez v1, :cond_23

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ec;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 129
    :cond_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_11

    .line 133
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 134
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 135
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->a:I

    .line 136
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    .line 140
    :cond_4f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 147
    const/4 v1, 0x3

    const/16 v2, 0x140c

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 149
    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_11
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 91
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-eqz v0, :cond_46

    .line 92
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->d:I

    mul-int/lit8 v0, v0, 0x3

    .line 93
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dC;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    .line 94
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    if-nez v1, :cond_3b

    .line 95
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ec;->b:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 100
    :goto_1f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    sget-boolean v0, Lcom/google/googlenav/android/E;->a:Z

    if-nez v0, :cond_3a

    .line 105
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    if-eqz v0, :cond_38

    .line 106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 107
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    .line 109
    :cond_38
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ec;->b:[I

    .line 114
    :cond_3a
    :goto_3a
    return-void

    .line 97
    :cond_3b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ec;->b()V

    .line 98
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ec;->g:Lv/f;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ec;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Lv/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_1f

    .line 112
    :cond_46
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_3a
.end method
