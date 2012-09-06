.class public Lad/w;
.super Lad/b;
.source "SourceFile"


# instance fields
.field private m:I

.field private n:I

.field private o:J

.field private p:Z


# direct methods
.method public constructor <init>(Lad/k;Lcom/google/googlenav/ui/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lad/b;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lad/w;->m:I

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lad/w;->b:I

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lad/b;-><init>(Lcom/google/googlenav/ui/p;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lad/w;->m:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lad/w;->b:I

    .line 59
    return-void
.end method

.method public constructor <init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lad/b;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lad/w;->m:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lad/w;->b:I

    .line 79
    return-void
.end method


# virtual methods
.method protected J()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 258
    invoke-super {p0}, Lad/b;->J()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 259
    iget-boolean v1, p0, Lad/w;->p:Z

    if-eqz v1, :cond_e

    .line 260
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 263
    :cond_e
    return-object v0
.end method

.method L()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lad/w;->m:I

    return v0
.end method

.method public V()V
    .registers 2

    .prologue
    .line 229
    invoke-super {p0}, Lad/b;->V()V

    .line 230
    invoke-virtual {p0}, Lad/w;->X()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lad/w;->n:I

    .line 233
    :cond_c
    return-void
.end method

.method public a(ILcom/google/googlenav/ui/p;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lad/w;->a(ILcom/google/googlenav/ui/p;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/googlenav/ui/p;Z)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 155
    invoke-virtual {v0}, Lad/m;->s()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 156
    if-eqz p3, :cond_11

    .line 157
    const-string v0, ""

    .line 169
    :goto_10
    return-object v0

    .line 159
    :cond_11
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 161
    :cond_18
    invoke-virtual {v0}, Lad/m;->p()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 162
    if-eqz p3, :cond_2d

    .line 163
    invoke-virtual {p0, p1}, Lad/w;->f(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 166
    :cond_2d
    const-string v0, ""

    goto :goto_10

    .line 169
    :cond_30
    invoke-virtual {p0, p1}, Lad/w;->f(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public a(Lad/m;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x11

    const/4 v3, 0x1

    .line 186
    invoke-virtual {p1}, Lad/m;->o()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 192
    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v0

    invoke-virtual {v0}, Lad/t;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    .line 194
    invoke-virtual {p0, v0}, Lad/w;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/bn;->A:C

    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_4f
    return-object v0

    .line 196
    :cond_50
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 201
    :cond_56
    const/4 v0, 0x0

    goto :goto_4f
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 206
    invoke-super {p0, p1}, Lad/b;->a(I)V

    .line 207
    invoke-virtual {p0}, Lad/w;->c()I

    move-result v0

    iput v0, p0, Lad/w;->n:I

    .line 208
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 96
    invoke-virtual {p0, v6}, Lad/w;->d(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lad/w;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_45

    .line 102
    iget-object v1, p0, Lad/w;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 104
    iget v1, p0, Lad/w;->g:I

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 124
    :cond_15
    :goto_15
    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 125
    const/4 v1, 0x6

    iget-object v2, p0, Lad/w;->e:Lcom/google/googlenav/ui/p;

    invoke-static {v2}, Lcom/google/googlenav/ui/p;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 127
    const/16 v1, 0x21

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 129
    invoke-virtual {p0}, Lad/w;->aj()I

    move-result v1

    if-eqz v1, :cond_39

    .line 130
    const/16 v1, 0x8

    invoke-virtual {p0}, Lad/w;->aj()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 134
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lad/w;->o:J

    .line 135
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 136
    return-void

    .line 106
    :cond_45
    invoke-virtual {p0}, Lad/w;->S()Lad/l;

    move-result-object v1

    invoke-virtual {v1}, Lad/l;->b()Z

    move-result v1

    if-nez v1, :cond_15

    .line 108
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/o;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 109
    const/4 v2, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/bi;->a()I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 112
    invoke-virtual {p0}, Lad/w;->S()Lad/l;

    move-result-object v2

    invoke-virtual {v2}, Lad/l;->c()Ljava/util/Date;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 116
    invoke-virtual {v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    invoke-virtual {p0}, Lad/w;->S()Lad/l;

    move-result-object v1

    invoke-virtual {v1}, Lad/l;->d()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_15
.end method

.method public aI()Lad/b;
    .registers 4

    .prologue
    .line 84
    new-instance v0, Lad/w;

    invoke-virtual {p0}, Lad/w;->ap()Lad/j;

    move-result-object v1

    invoke-virtual {p0}, Lad/w;->H()Lcom/google/googlenav/ui/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lad/w;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    .line 86
    return-object v0
.end method

.method public aU()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lad/w;->n:I

    return v0
.end method

.method public aV()J
    .registers 3

    .prologue
    .line 245
    iget-wide v0, p0, Lad/w;->o:J

    return-wide v0
.end method

.method public aW()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lad/w;->p:Z

    return v0
.end method

.method public aX()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0}, Lad/w;->ab()Lad/h;

    move-result-object v3

    .line 283
    if-eqz v3, :cond_1a

    move v0, v1

    .line 284
    :goto_9
    invoke-virtual {v3}, Lad/h;->e()I

    move-result v4

    if-ge v0, v4, :cond_1a

    .line 285
    invoke-virtual {v3, v0}, Lad/h;->b(I)Lad/t;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lad/t;->C()I

    move-result v4

    if-ne v4, v2, :cond_1b

    move v1, v2

    .line 291
    :cond_1a
    return v1

    .line 284
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 249
    iput-boolean p1, p0, Lad/w;->p:Z

    .line 250
    return-void
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    .line 268
    invoke-super {p0, p1}, Lad/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_e

    .line 270
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    iput-boolean v1, p0, Lad/w;->p:Z

    .line 272
    :cond_e
    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x4

    return v0
.end method

.method public s(I)V
    .registers 3
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0}, Lad/w;->az()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lad/w;->n:I

    .line 216
    :cond_9
    invoke-super {p0, p1}, Lad/b;->s(I)V

    .line 217
    return-void
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public w(I)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput p1, p0, Lad/w;->m:I

    .line 150
    return-void
.end method
