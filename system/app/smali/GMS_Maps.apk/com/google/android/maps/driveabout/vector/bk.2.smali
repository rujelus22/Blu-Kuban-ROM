.class public Lcom/google/android/maps/driveabout/vector/bK;
.super Lcom/google/android/maps/driveabout/vector/bI;
.source "SourceFile"


# instance fields
.field private final h:[I

.field private volatile i:J


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:J

    .line 43
    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(IZ)V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:J

    .line 47
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aput v1, v0, v1

    .line 55
    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const v5, 0x8893

    const/4 v4, 0x0

    .line 112
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:J

    .line 113
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    if-nez v0, :cond_12

    .line 114
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 138
    :cond_11
    :goto_11
    return-void

    .line 118
    :cond_12
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 119
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aget v1, v1, v4

    if-nez v1, :cond_4f

    .line 120
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_23

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bK;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 123
    :cond_23
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_11

    .line 127
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 128
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 129
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    .line 130
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 132
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    .line 135
    :cond_4f
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 136
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:I

    const/16 v2, 0x1403

    invoke-interface {v0, p2, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 137
    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_11
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aget v0, v0, v3

    if-eqz v0, :cond_25

    .line 71
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 72
    if-ne v0, p1, :cond_1f

    if-eqz v0, :cond_1f

    .line 73
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 74
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 76
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:[I

    aput v3, v0, v3

    .line 77
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    .line 79
    :cond_25
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:J

    .line 80
    return-void
.end method

.method public d()I
    .registers 3

    .prologue
    .line 146
    const/16 v0, 0x38

    .line 147
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    if-eqz v1, :cond_10

    .line 149
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    invoke-virtual {v1}, Lv/h;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 153
    :cond_f
    :goto_f
    return v0

    .line 150
    :cond_10
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:[S

    if-eqz v1, :cond_f

    .line 151
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_f
.end method

.method protected d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->E()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 86
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->I()Lcom/google/android/maps/driveabout/vector/dC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dC;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    if-nez v0, :cond_3d

    .line 88
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 93
    :goto_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    sget-boolean v0, Lcom/google/googlenav/android/E;->a:Z

    if-nez v0, :cond_3c

    .line 98
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    if-eqz v0, :cond_3a

    .line 99
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    invoke-virtual {v0}, Lv/h;->c()V

    .line 100
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    .line 102
    :cond_3a
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:[S

    .line 107
    :cond_3c
    :goto_3c
    return-void

    .line 90
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bK;->a()V

    .line 91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:Lv/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lv/h;->a(Ljava/nio/ShortBuffer;)V

    goto :goto_1f

    .line 105
    :cond_48
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_3c
.end method
