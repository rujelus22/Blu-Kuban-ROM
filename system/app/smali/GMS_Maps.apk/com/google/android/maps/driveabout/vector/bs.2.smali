.class public Lcom/google/android/maps/driveabout/vector/bS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private final c:Z

.field private final d:Z

.field private e:I

.field private final f:[I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:I

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:I

    .line 68
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    .line 80
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->b:I

    .line 81
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_44

    move v0, v1

    :goto_1b
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->c:Z

    .line 82
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_46

    :goto_21
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Z

    .line 83
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    .line 84
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Z

    if-eqz v0, :cond_36

    .line 85
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    .line 87
    :cond_36
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->c:Z

    if-eqz v0, :cond_43

    .line 88
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    .line 90
    :cond_43
    return-void

    :cond_44
    move v0, v2

    .line 81
    goto :goto_1b

    :cond_46
    move v1, v2

    .line 82
    goto :goto_21
.end method

.method private e(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 171
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 172
    const v1, 0x8892

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 173
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:I

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x8892

    const/16 v5, 0x1406

    const/4 v4, 0x0

    .line 112
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 113
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    aget v1, v1, v4

    if-nez v1, :cond_5c

    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->e(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 121
    :goto_13
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    if-eqz v1, :cond_2c

    .line 122
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v6, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 125
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    .line 135
    :cond_2c
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    invoke-interface {v0, v1, v5, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 137
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->h:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v4

    .line 139
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->d:Z

    if-eqz v2, :cond_48

    .line 145
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    invoke-interface {v0, v2, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    .line 147
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->g:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 152
    :cond_48
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->c:Z

    if-eqz v2, :cond_58

    .line 158
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    invoke-interface {v0, v2, v5, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 160
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->i:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 165
    :cond_58
    invoke-interface {v0, v6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 166
    return-void

    .line 116
    :cond_5c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    aget v1, v1, v4

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_13
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->j:Z

    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bS;->e:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->k:I

    .line 99
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    .line 179
    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 187
    return-void
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    aget v0, v0, v3

    if-eqz v0, :cond_20

    .line 203
    if-eqz p1, :cond_13

    .line 204
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 205
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 207
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->f:[I

    aput v3, v0, v3

    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_20

    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bS;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 212
    :cond_20
    return-void
.end method
