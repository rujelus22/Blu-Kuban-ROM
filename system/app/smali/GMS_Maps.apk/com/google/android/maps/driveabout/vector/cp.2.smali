.class public Lcom/google/android/maps/driveabout/vector/cP;
.super Lcom/google/android/maps/driveabout/vector/cM;
.source "SourceFile"


# instance fields
.field private final k:[I

.field private volatile l:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 49
    return-void
.end method

.method protected constructor <init>(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(IIIZ)V

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 57
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(IZ)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 53
    return-void
.end method

.method public static b(II)Lcom/google/android/maps/driveabout/vector/cP;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cP;

    const/16 v1, 0x1402

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(III)V

    return-object v0
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 8
    .parameter

    .prologue
    const v5, 0x8892

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_c

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cP;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 208
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 218
    :goto_15
    return v0

    .line 212
    :cond_16
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 213
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    invoke-interface {v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 214
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v1, v3, v1

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 215
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->g:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->a:I

    .line 216
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->a:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    const v4, 0x88e4

    invoke-interface {v0, v5, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    move v0, v2

    .line 218
    goto :goto_15
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aput v1, v0, v1

    .line 77
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x8892

    const/4 v5, 0x0

    .line 179
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 180
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-nez v0, :cond_12

    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 201
    :cond_11
    :goto_11
    return-void

    .line 185
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v0, v0, v5

    if-nez v0, :cond_1e

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cP;->f(Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 190
    :cond_1e
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 191
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v1, v1, v5

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 197
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->f:I

    mul-int/lit8 v3, p2, 0x2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cP;->g:I

    mul-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 200
    invoke-interface {v0, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_11
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    .line 93
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 94
    if-ne v0, p1, :cond_1f

    if-eqz v0, :cond_1f

    .line 95
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 96
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 98
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aput v3, v0, v3

    .line 99
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->a:I

    .line 101
    :cond_25
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 102
    return-void
.end method

.method public c()I
    .registers 3

    .prologue
    .line 227
    const/16 v0, 0x38

    .line 228
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    if-eqz v1, :cond_10

    .line 230
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    invoke-virtual {v1}, Lv/f;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 234
    :cond_f
    :goto_f
    return v0

    .line 231
    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->b:[I

    if-eqz v1, :cond_f

    .line 232
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 154
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->l:J

    .line 155
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-nez v0, :cond_12

    .line 156
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 175
    :cond_11
    :goto_11
    return-void

    .line 160
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v0, v0, v3

    if-nez v0, :cond_1e

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cP;->f(Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    :cond_1e
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 166
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cP;->k:[I

    aget v1, v1, v3

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 172
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->f:I

    invoke-interface {v0, v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 174
    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_11
.end method

.method protected e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-eqz v0, :cond_a6

    .line 108
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->d:I

    mul-int/lit8 v1, v0, 0x2

    .line 110
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->f:I

    const/16 v2, 0x1402

    if-ne v0, v2, :cond_50

    .line 111
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dC;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    if-nez v0, :cond_41

    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cP;->a(Ljava/nio/ShortBuffer;I)V

    .line 136
    :goto_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 140
    sget-boolean v0, Lcom/google/googlenav/android/E;->a:Z

    if-nez v0, :cond_40

    .line 141
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    if-eqz v0, :cond_3e

    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    invoke-virtual {v0}, Lv/f;->c()V

    .line 143
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    .line 145
    :cond_3e
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/cP;->b:[I

    .line 150
    :cond_40
    :goto_40
    return-void

    .line 115
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cP;->a()V

    .line 116
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->h:I

    invoke-virtual {v2, v0, v3}, Lv/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_25

    .line 118
    :cond_50
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->f:I

    const/16 v2, 0x1401

    if-eq v0, v2, :cond_5c

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->f:I

    const/16 v2, 0x1400

    if-ne v0, v2, :cond_81

    .line 119
    :cond_5c
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dC;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    if-nez v0, :cond_72

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cP;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_25

    .line 123
    :cond_72
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cP;->a()V

    .line 124
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cP;->h:I

    invoke-virtual {v2, v0, v3}, Lv/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_25

    .line 127
    :cond_81
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dC;->c()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    .line 128
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    if-nez v0, :cond_99

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->b:[I

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_25

    .line 131
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cP;->a()V

    .line 132
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cP;->j:Lv/f;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cP;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, Lv/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_25

    .line 148
    :cond_a6
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_40
.end method
