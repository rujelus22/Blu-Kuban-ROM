.class public Lcom/google/googlenav/friend/ay;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Lat/B;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:Z

.field private k:J

.field private l:F

.field private m:F

.field private n:D

.field private o:I

.field private p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private q:Ljava/lang/Boolean;

.field private r:Ljava/lang/Boolean;

.field private s:Lcom/google/googlenav/friend/as;

.field private t:Lcom/google/googlenav/android/Y;

.field private u:Lcom/google/googlenav/friend/aA;

.field private v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/az;)V
    .registers 4
    .parameter

    .prologue
    const/high16 v0, -0x4080

    .line 88
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 57
    iput v0, p0, Lcom/google/googlenav/friend/ay;->l:F

    .line 58
    iput v0, p0, Lcom/google/googlenav/friend/ay;->m:F

    .line 59
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/googlenav/friend/ay;->n:D

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/friend/ay;->o:I

    .line 89
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->a(Lcom/google/googlenav/friend/az;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->a:Lat/B;

    .line 90
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->b(Lcom/google/googlenav/friend/az;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->c:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->c(Lcom/google/googlenav/friend/az;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/ay;->d:I

    .line 92
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->d(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->e(Lcom/google/googlenav/friend/az;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/ay;->e:Z

    .line 94
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->f(Lcom/google/googlenav/friend/az;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/ay;->h:J

    .line 95
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->g(Lcom/google/googlenav/friend/az;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/ay;->i:I

    .line 96
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->h(Lcom/google/googlenav/friend/az;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/ay;->g:Z

    .line 97
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->i(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/friend/as;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->s:Lcom/google/googlenav/friend/as;

    .line 98
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->j(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/android/Y;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->t:Lcom/google/googlenav/android/Y;

    .line 99
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->k(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/friend/aA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->u:Lcom/google/googlenav/friend/aA;

    .line 100
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->l(Lcom/google/googlenav/friend/az;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/ay;->j:Z

    .line 101
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->m(Lcom/google/googlenav/friend/az;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/ay;->k:J

    .line 102
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->n(Lcom/google/googlenav/friend/az;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/ay;->o:I

    .line 103
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->o(Lcom/google/googlenav/friend/az;)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/ay;->l:F

    .line 104
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->p(Lcom/google/googlenav/friend/az;)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/friend/ay;->m:F

    .line 105
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->q(Lcom/google/googlenav/friend/az;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/friend/ay;->n:D

    .line 106
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->r(Lcom/google/googlenav/friend/az;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 107
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->s(Lcom/google/googlenav/friend/az;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->q:Ljava/lang/Boolean;

    .line 108
    invoke-static {p1}, Lcom/google/googlenav/friend/az;->t(Lcom/google/googlenav/friend/az;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/ay;->r:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 269
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ay;->e:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/googlenav/friend/ay;->g:Z

    if-nez v0, :cond_1b

    .line 270
    new-instance v0, Lcom/google/googlenav/friend/aq;

    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->t:Lcom/google/googlenav/android/Y;

    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->s:Lcom/google/googlenav/friend/as;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/aq;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/as;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/aq;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 274
    :cond_1b
    return-void
.end method

.method private k()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/high16 v5, -0x4080

    const/4 v0, 0x1

    .line 142
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bJ;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 143
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 144
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/do;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 145
    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->a:Lat/B;

    invoke-virtual {v3}, Lat/B;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 146
    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->a:Lat/B;

    invoke-virtual {v3}, Lat/B;->e()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 147
    invoke-virtual {v1, v0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 148
    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 149
    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 150
    iget v1, p0, Lcom/google/googlenav/friend/ay;->d:I

    const v2, 0x1869f

    if-eq v1, v2, :cond_46

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget v2, p0, Lcom/google/googlenav/friend/ay;->d:I

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 153
    :cond_46
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_53

    .line 154
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 156
    :cond_53
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 157
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/googlenav/friend/ay;->j:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 158
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0xb

    iget-wide v3, p0, Lcom/google/googlenav/friend/ay;->k:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 159
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/googlenav/friend/ay;->e:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 160
    iget-object v1, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/google/googlenav/friend/ay;->f:Z

    if-nez v3, :cond_11e

    :goto_7d
    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 161
    iget-wide v0, p0, Lcom/google/googlenav/friend/ay;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_90

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/googlenav/friend/ay;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 164
    :cond_90
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/googlenav/friend/ay;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->a:Lat/B;

    invoke-virtual {v2}, Lat/B;->d()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->a:Lat/B;

    invoke-virtual {v3}, Lat/B;->f()I

    move-result v3

    invoke-static {v2, v3}, Lan/d;->a(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 171
    iget v0, p0, Lcom/google/googlenav/friend/ay;->l:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_be

    .line 172
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/googlenav/friend/ay;->l:F

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 176
    :cond_be
    iget v0, p0, Lcom/google/googlenav/friend/ay;->m:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_cd

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/googlenav/friend/ay;->m:F

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 181
    :cond_cd
    iget-wide v0, p0, Lcom/google/googlenav/friend/ay;->n:D

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_de

    .line 182
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x10

    iget-wide v2, p0, Lcom/google/googlenav/friend/ay;->n:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setDouble(ID)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 186
    :cond_de
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_eb

    .line 187
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 190
    :cond_eb
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->q:Ljava/lang/Boolean;

    if-eqz v0, :cond_fc

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->q:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 194
    :cond_fc
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->r:Ljava/lang/Boolean;

    if-eqz v0, :cond_10d

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/googlenav/friend/ay;->r:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 199
    :cond_10d
    iget v0, p0, Lcom/google/googlenav/friend/ay;->o:I

    int-to-float v0, v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_11d

    .line 200
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    iget v2, p0, Lcom/google/googlenav/friend/ay;->o:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 202
    :cond_11d
    return-void

    .line 160
    :cond_11e
    const/4 v0, 0x0

    goto/16 :goto_7d
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 118
    const/16 v0, 0x20

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_7

    .line 130
    invoke-direct {p0}, Lcom/google/googlenav/friend/ay;->k()V

    .line 134
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 135
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 206
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 209
    invoke-static {v2, v1, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 213
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 215
    invoke-static {v3, v1, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 218
    packed-switch v0, :pswitch_data_38

    .line 231
    :goto_18
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Las/f;->a(I)V

    .line 235
    :goto_1f
    if-nez v0, :cond_36

    move v0, v1

    .line 236
    :goto_22
    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->u:Lcom/google/googlenav/friend/aA;

    if-eqz v3, :cond_2d

    .line 237
    iget-object v3, p0, Lcom/google/googlenav/friend/ay;->u:Lcom/google/googlenav/friend/aA;

    iget-object v4, p0, Lcom/google/googlenav/friend/ay;->v:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v3, v2, v0, v4}, Lcom/google/googlenav/friend/aA;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 240
    :cond_2d
    return v1

    .line 221
    :pswitch_2e
    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/ay;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_1f

    .line 226
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/google/googlenav/friend/ay;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_18

    .line 235
    :cond_36
    const/4 v0, 0x0

    goto :goto_22

    .line 218
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method public j_()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 252
    iget-wide v1, p0, Lcom/google/googlenav/friend/ay;->h:J

    const-wide/32 v3, 0x1d4c0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_b

    .line 256
    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/friend/ay;->aQ()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/googlenav/friend/ay;->j:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
