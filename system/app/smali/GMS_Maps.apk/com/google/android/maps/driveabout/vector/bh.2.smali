.class public Lcom/google/android/maps/driveabout/vector/bH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bJ;
.implements Lcom/google/android/maps/driveabout/vector/cO;
.implements Lcom/google/android/maps/driveabout/vector/ea;


# instance fields
.field private a:[F

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:[F

    .line 27
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    .line 42
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->k:I

    .line 43
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    .line 44
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    .line 45
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    .line 70
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bH;->o:I

    .line 71
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_7a

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->g:Z

    .line 72
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->h:Z

    .line 73
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_7e

    :goto_2a
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->i:Z

    .line 74
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    .line 75
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->h:Z

    if-eqz v0, :cond_40

    .line 76
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    .line 77
    invoke-static {p1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    .line 79
    :cond_40
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->g:Z

    if-eqz v0, :cond_50

    .line 80
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    .line 81
    invoke-static {p1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    .line 84
    :cond_50
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->i:Z

    if-eqz v0, :cond_60

    .line 85
    invoke-static {p1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    .line 86
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    .line 89
    :cond_60
    if-eqz p3, :cond_68

    .line 90
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    .line 94
    :cond_68
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    .line 97
    return-void

    :cond_7a
    move v0, v2

    .line 71
    goto :goto_1d

    :cond_7c
    move v0, v2

    .line 72
    goto :goto_24

    :cond_7e
    move v1, v2

    .line 73
    goto :goto_2a
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bH;->c()V

    .line 218
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    return v0
.end method

.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    .line 102
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->g:Z

    if-nez v0, :cond_12

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture coordinate 0 not enabled in this VBO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public a(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    .line 138
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_16

    .line 144
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    .line 172
    :cond_15
    :goto_15
    return-void

    .line 146
    :cond_16
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_15

    .line 147
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->j:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_48

    .line 151
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 155
    :cond_3e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 158
    :cond_48
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    goto :goto_15
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4780

    .line 405
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    .line 406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    int-to-float v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public a(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    .line 447
    return-void
.end method

.method public a(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    .line 439
    return-void
.end method

.method public a(Ln/Q;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->h()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    if-eqz v0, :cond_3c

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting styleIndex"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_3c
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    .line 119
    return-void
.end method

.method public a(Ln/Q;IB)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-virtual {p1}, Ln/Q;->h()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_3d
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    .line 130
    return-void
.end method

.method public a([I)V
    .registers 4
    .parameter

    .prologue
    .line 391
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    .line 392
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bH;->a([III)V

    .line 393
    return-void
.end method

.method public a([III)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    move v0, p2

    .line 398
    :goto_8
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1e

    .line 399
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    aget v2, p1, v0

    int-to-float v2, v2

    const/high16 v3, 0x4780

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 401
    :cond_1e
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    return v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 229
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 318
    :cond_8
    :goto_8
    return-void

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v2, v0, 0x3

    .line 246
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->g:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-eq v2, v0, :cond_48

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer mismatch verts = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tex coords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_48
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->h:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-eq v2, v0, :cond_5e

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_5e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->i:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_72

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_72
    const/4 v0, 0x0

    move v1, v0

    :goto_74
    if-ge v1, v2, :cond_157

    .line 266
    :try_start_76
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 268
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 274
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->h:Z

    if-eqz v0, :cond_109

    .line 276
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 277
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 278
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 279
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x4

    add-int/lit8 v4, v4, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 287
    :cond_109
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->g:Z

    if-eqz v0, :cond_135

    .line 289
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 290
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 296
    :cond_135
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->i:Z

    if-eqz v0, :cond_14a

    .line 298
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_14a} :catch_14f

    .line 264
    :cond_14a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_74

    .line 302
    :catch_14f
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 308
    :cond_157
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    if-eqz v0, :cond_165

    .line 310
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    :cond_165
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    if-eqz v0, :cond_16e

    .line 313
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    :cond_16e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 316
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_8
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 418
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->o:I

    return v0
.end method

.method public d(I)V
    .registers 4
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    int-to-short v1, p1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    .line 428
    return-void
.end method

.method public e()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bH;->c()V

    .line 333
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    .line 337
    return-object v0
.end method

.method public f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->a:[F

    .line 370
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 371
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 373
    :cond_d
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->m:I

    .line 374
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->l:I

    .line 375
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 378
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 380
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 383
    :cond_2a
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bH;->k:I

    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_35

    .line 385
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 387
    :cond_35
    return-void
.end method

.method public g()I
    .registers 2

    .prologue
    .line 412
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bH;->n:I

    return v0
.end method
