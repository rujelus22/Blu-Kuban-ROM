.class public final Lt/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final A:I

.field private final B:I

.field private final C:Lt/l;

.field private final D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private final a:D

.field private final b:D

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:D

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:F

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:D

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:Z

.field private final z:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x1d

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lt/k;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D

    move-result-wide v0

    iput-wide v0, p0, Lt/k;->a:D

    .line 62
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lt/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D

    move-result-wide v0

    iput-wide v0, p0, Lt/k;->b:D

    .line 64
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->c:I

    .line 66
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->d:I

    .line 68
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->e:I

    .line 70
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->f:I

    .line 72
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->g:I

    .line 74
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lt/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D

    move-result-wide v0

    iput-wide v0, p0, Lt/k;->h:D

    .line 77
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->i:I

    .line 79
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->j:I

    .line 82
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->k:I

    .line 83
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->l:I

    .line 85
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->m:I

    .line 87
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->n:I

    .line 89
    const/16 v0, 0x1b

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a

    mul-float/2addr v0, v1

    iput v0, p0, Lt/k;->o:F

    .line 92
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->p:I

    .line 94
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->q:I

    .line 96
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->r:I

    .line 98
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lt/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D

    move-result-wide v0

    iput-wide v0, p0, Lt/k;->s:D

    .line 101
    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->t:I

    .line 102
    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->u:I

    .line 104
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->v:I

    .line 106
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->w:I

    .line 109
    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->x:I

    .line 111
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lt/k;->y:Z

    .line 113
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->z:I

    .line 116
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->A:I

    .line 117
    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->B:I

    .line 120
    new-instance v1, Lt/l;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    :goto_ef
    invoke-direct {v1, v0}, Lt/l;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, Lt/k;->C:Lt/l;

    .line 125
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lt/k;->D:Z

    .line 128
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lt/k;->E:I

    .line 131
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lt/k;->F:Z

    .line 134
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lt/k;->G:Z

    .line 136
    return-void

    .line 120
    :cond_115
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    goto :goto_ef
.end method

.method private static final a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static final b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)D
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 373
    const-wide/high16 v0, 0x4024

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public A()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lt/k;->A:I

    return v0
.end method

.method public B()I
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lt/k;->B:I

    return v0
.end method

.method public C()Lt/l;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lt/k;->C:Lt/l;

    return-object v0
.end method

.method public D()Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lt/k;->D:Z

    return v0
.end method

.method public E()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lt/k;->E:I

    return v0
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 389
    iget-boolean v0, p0, Lt/k;->F:Z

    return v0
.end method

.method public G()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, Lt/k;->G:Z

    return v0
.end method

.method public a()D
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, Lt/k;->a:D

    return-wide v0
.end method

.method public b()D
    .registers 3

    .prologue
    .line 155
    iget-wide v0, p0, Lt/k;->b:D

    return-wide v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lt/k;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lt/k;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lt/k;->e:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lt/k;->f:I

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lt/k;->g:I

    return v0
.end method

.method public h()D
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lt/k;->h:D

    return-wide v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Lt/k;->i:I

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lt/k;->j:I

    return v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lt/k;->k:I

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lt/k;->l:I

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lt/k;->m:I

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lt/k;->n:I

    return v0
.end method

.method public o()F
    .registers 2

    .prologue
    .line 254
    iget v0, p0, Lt/k;->o:F

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lt/k;->p:I

    return v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lt/k;->q:I

    return v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lt/k;->r:I

    return v0
.end method

.method public s()D
    .registers 3

    .prologue
    .line 283
    iget-wide v0, p0, Lt/k;->s:D

    return-wide v0
.end method

.method public t()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lt/k;->t:I

    return v0
.end method

.method public u()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lt/k;->u:I

    return v0
.end method

.method public v()I
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Lt/k;->v:I

    return v0
.end method

.method public w()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lt/k;->w:I

    return v0
.end method

.method public x()I
    .registers 2

    .prologue
    .line 320
    iget v0, p0, Lt/k;->x:I

    return v0
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lt/k;->y:Z

    return v0
.end method

.method public z()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lt/k;->z:I

    return v0
.end method
