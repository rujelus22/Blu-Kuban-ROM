.class public Lcom/google/googlenav/W;
.super Lcom/google/googlenav/ai;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:J

.field private m:Ljava/lang/String;

.field private n:J

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 69
    iput-boolean v2, p0, Lcom/google/googlenav/W;->k:Z

    .line 97
    iput v1, p0, Lcom/google/googlenav/W;->o:I

    .line 107
    iput-object p2, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    .line 110
    iput v1, p0, Lcom/google/googlenav/W;->f:I

    .line 111
    iput v1, p0, Lcom/google/googlenav/W;->g:I

    .line 112
    iput v1, p0, Lcom/google/googlenav/W;->h:I

    .line 113
    iput v2, p0, Lcom/google/googlenav/W;->i:I

    .line 114
    iput v2, p0, Lcom/google/googlenav/W;->j:I

    .line 115
    iput-boolean v2, p0, Lcom/google/googlenav/W;->k:Z

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/W;->l:J

    .line 117
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/W;->n:J

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/layer/o;Lcom/google/googlenav/layer/j;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->a()Lat/B;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "msid:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x3

    :goto_15
    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->e()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;ILjava/util/List;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/W;->k:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/W;->o:I

    .line 126
    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/google/googlenav/layer/o;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->d()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/W;->f:I

    .line 130
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->e()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/W;->g:I

    .line 131
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->f()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/W;->h:I

    .line 132
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/W;->i:I

    .line 133
    invoke-virtual {p2}, Lcom/google/googlenav/layer/j;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/W;->j:I

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/W;->k:Z

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/W;->l:J

    .line 136
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/W;->n:J

    .line 137
    return-void

    .line 122
    :cond_61
    const/4 v0, 0x7

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lat/B;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 141
    invoke-direct {p0, p3, p4}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;)V

    .line 69
    iput-boolean v2, p0, Lcom/google/googlenav/W;->k:Z

    .line 97
    iput v1, p0, Lcom/google/googlenav/W;->o:I

    .line 142
    iput-object p1, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    .line 145
    iput v1, p0, Lcom/google/googlenav/W;->f:I

    .line 146
    iput v1, p0, Lcom/google/googlenav/W;->g:I

    .line 147
    iput v1, p0, Lcom/google/googlenav/W;->h:I

    .line 148
    iput v2, p0, Lcom/google/googlenav/W;->i:I

    .line 149
    iput v2, p0, Lcom/google/googlenav/W;->j:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/W;->k:Z

    .line 151
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/googlenav/W;->l:J

    .line 152
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/W;->n:J

    .line 153
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/W;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Lcom/google/googlenav/W;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput p1, p0, Lcom/google/googlenav/W;->f:I

    .line 211
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 258
    iput-wide p1, p0, Lcom/google/googlenav/W;->l:J

    .line 259
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/google/googlenav/W;->k:Z

    .line 251
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput p1, p0, Lcom/google/googlenav/W;->g:I

    .line 219
    return-void
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/google/googlenav/W;->n:J

    .line 280
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/googlenav/W;->m:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/googlenav/W;->q:Z

    .line 334
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput p1, p0, Lcom/google/googlenav/W;->h:I

    .line 227
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/googlenav/W;->p:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput p1, p0, Lcom/google/googlenav/W;->i:I

    .line 235
    return-void
.end method

.method public e(I)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput p1, p0, Lcom/google/googlenav/W;->j:I

    .line 243
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput p1, p0, Lcom/google/googlenav/W;->o:I

    .line 289
    return-void
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 180
    const/16 v0, 0x35

    .line 181
    iget-object v1, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 182
    iget-object v1, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_d
    iget-object v1, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 185
    iget-object v1, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_18
    iget-object v1, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 188
    iget-object v1, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_23
    iget-object v1, p0, Lcom/google/googlenav/W;->m:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 191
    iget-object v1, p0, Lcom/google/googlenav/W;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_2e
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "LayerPlacemark"

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-super {p0}, Lcom/google/googlenav/ai;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/googlenav/W;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/googlenav/W;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/googlenav/W;->f:I

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/google/googlenav/W;->g:I

    return v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 222
    iget v0, p0, Lcom/google/googlenav/W;->h:I

    return v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/google/googlenav/W;->i:I

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 238
    iget v0, p0, Lcom/google/googlenav/W;->j:I

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/google/googlenav/W;->k:Z

    return v0
.end method

.method public r()J
    .registers 3

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/google/googlenav/W;->l:J

    return-wide v0
.end method

.method public s()J
    .registers 3

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/googlenav/W;->n:J

    return-wide v0
.end method

.method public t()I
    .registers 2

    .prologue
    .line 292
    iget v0, p0, Lcom/google/googlenav/W;->o:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/googlenav/W;->p:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 5

    .prologue
    .line 308
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "l="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/W;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/googlenav/W;->t()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5a

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "z="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/W;->t()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 314
    :cond_5a
    invoke-virtual {p0}, Lcom/google/googlenav/W;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ae

    const/4 v0, 0x0

    .line 315
    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 318
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 319
    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p0}, Lcom/google/googlenav/W;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/W;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :cond_ad
    return-object v0

    .line 314
    :cond_ae
    const/4 v0, 0x1

    goto :goto_65
.end method

.method public w()Z
    .registers 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/google/googlenav/ai;->w()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/googlenav/W;->q:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/googlenav/W;->c:Ljava/lang/String;

    const-string v1, "TransitStations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
