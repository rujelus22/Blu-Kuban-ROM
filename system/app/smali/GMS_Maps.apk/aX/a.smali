.class public Lax/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lat/B;

.field private e:Ljava/util/List;

.field private f:J

.field private g:I

.field private h:J

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lax/A;->a:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lax/A;->f:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lax/A;->g:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/A;->h:J

    .line 66
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lax/A;->o:J

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lax/A;->a:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lax/A;->f:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lax/A;->g:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/A;->h:J

    .line 66
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lax/A;->o:J

    .line 132
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/go;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-ne v0, v1, :cond_25

    .line 133
    invoke-direct {p0, p1}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 138
    :goto_24
    return-void

    .line 136
    :cond_25
    invoke-direct {p0, p1}, Lax/A;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_24
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lax/A;->a:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lax/A;->f:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lax/A;->g:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/A;->h:J

    .line 66
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lax/A;->o:J

    .line 85
    iput-object p1, p0, Lax/A;->a:Ljava/lang/String;

    .line 86
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    .line 87
    iput-object p2, p0, Lax/A;->b:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lax/A;->c:Ljava/lang/String;

    .line 89
    invoke-static {p4}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lax/A;->d:Lat/B;

    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lax/A;->e:Ljava/util/List;

    .line 91
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 72
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x5

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/A;->a:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    .line 96
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/A;->b:Ljava/lang/String;

    .line 97
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/A;->c:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 99
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lax/A;->d:Lat/B;

    .line 101
    :cond_2d
    const/16 v0, 0x8

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lax/A;->f:J

    .line 103
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ln/B;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lax/A;->e:Ljava/util/List;

    .line 105
    const/16 v0, 0x9

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lax/A;->h:J

    .line 107
    return-void
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILjava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    if-eqz p2, :cond_9

    .line 77
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 79
    :cond_9
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/A;->a:Ljava/lang/String;

    .line 111
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/A;->b:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 113
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v0

    iput-object v0, p0, Lax/A;->d:Lat/B;

    .line 115
    :cond_1f
    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lax/A;->f:J

    .line 117
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lax/A;->g:I

    .line 119
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    .line 120
    const/4 v0, 0x7

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->j:Ljava/lang/Boolean;

    .line 121
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->k:Ljava/lang/Boolean;

    .line 122
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ln/B;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lax/A;->e:Ljava/util/List;

    .line 124
    const/16 v0, 0xd

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->l:Ljava/lang/Boolean;

    .line 125
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->m:Ljava/lang/Boolean;

    .line 126
    const/16 v0, 0xb

    invoke-static {p1, v0}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->n:Ljava/lang/Boolean;

    .line 127
    const/16 v0, 0xc

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lax/A;->h:J

    .line 129
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    .line 281
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eq;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 282
    const/4 v0, 0x1

    iget-object v2, p0, Lax/A;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 283
    iget-object v0, p0, Lax/A;->b:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 284
    const/4 v0, 0x2

    iget-object v2, p0, Lax/A;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 286
    :cond_17
    iget-object v0, p0, Lax/A;->d:Lat/B;

    if-eqz v0, :cond_25

    .line 287
    const/4 v0, 0x3

    iget-object v2, p0, Lax/A;->d:Lat/B;

    invoke-static {v2}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 290
    :cond_25
    iget-wide v2, p0, Lax/A;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_33

    .line 291
    const/4 v0, 0x4

    iget-wide v2, p0, Lax/A;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 293
    :cond_33
    iget v0, p0, Lax/A;->g:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3e

    .line 294
    const/4 v0, 0x5

    iget v2, p0, Lax/A;->g:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 296
    :cond_3e
    const/4 v0, 0x6

    iget-object v2, p0, Lax/A;->i:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILjava/lang/Boolean;)V

    .line 297
    const/4 v0, 0x7

    iget-object v2, p0, Lax/A;->j:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILjava/lang/Boolean;)V

    .line 299
    iget-object v0, p0, Lax/A;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_59

    .line 300
    const/16 v0, 0xd

    iget-object v2, p0, Lax/A;->l:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 302
    :cond_59
    const/16 v0, 0x9

    iget-object v2, p0, Lax/A;->k:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILjava/lang/Boolean;)V

    .line 303
    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_88

    .line 304
    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 305
    const/16 v3, 0xa

    invoke-virtual {v0}, Ln/B;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_72

    .line 308
    :cond_88
    iget-object v0, p0, Lax/A;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_97

    .line 309
    const/16 v0, 0x10

    iget-object v2, p0, Lax/A;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 311
    :cond_97
    iget-object v0, p0, Lax/A;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_a6

    .line 312
    const/16 v0, 0xb

    iget-object v2, p0, Lax/A;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 314
    :cond_a6
    iget-wide v2, p0, Lax/A;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b5

    .line 315
    const/16 v0, 0xc

    iget-wide v2, p0, Lax/A;->h:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 319
    :cond_b5
    return-object v1
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 217
    iput-wide p1, p0, Lax/A;->f:J

    .line 218
    return-void
.end method

.method public a(Lat/B;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lax/A;->d:Lat/B;

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lax/A;->a:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lax/A;->e:Ljava/util/List;

    .line 214
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 225
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    .line 226
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput p1, p0, Lax/A;->g:I

    .line 222
    return-void
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 249
    iput-wide p1, p0, Lax/A;->h:J

    .line 250
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lax/A;->b:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public c(J)V
    .registers 3
    .parameter

    .prologue
    .line 332
    iput-wide p1, p0, Lax/A;->o:J

    .line 333
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lax/A;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lax/A;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lax/A;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lat/B;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lax/A;->d:Lat/B;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    return-object v0
.end method

.method public l()J
    .registers 3

    .prologue
    .line 161
    iget-wide v0, p0, Lax/A;->f:J

    return-wide v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lax/A;->g:I

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/A;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lax/A;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/A;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lax/A;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/A;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lax/A;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/A;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lax/A;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lax/A;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public s()J
    .registers 3

    .prologue
    .line 193
    iget-wide v0, p0, Lax/A;->h:J

    return-wide v0
.end method

.method public t()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    .line 253
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/go;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 254
    const/4 v0, 0x1

    iget-object v2, p0, Lax/A;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 255
    const/4 v0, 0x2

    iget-object v2, p0, Lax/A;->i:Ljava/lang/Boolean;

    invoke-static {v1, v0, v2}, Lax/A;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILjava/lang/Boolean;)V

    .line 256
    iget-object v0, p0, Lax/A;->b:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 257
    const/4 v0, 0x3

    iget-object v2, p0, Lax/A;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 259
    :cond_1d
    iget-object v0, p0, Lax/A;->c:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 260
    const/4 v0, 0x4

    iget-object v2, p0, Lax/A;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 262
    :cond_27
    iget-object v0, p0, Lax/A;->d:Lat/B;

    if-eqz v0, :cond_35

    .line 263
    const/4 v0, 0x5

    iget-object v2, p0, Lax/A;->d:Lat/B;

    invoke-static {v2}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 266
    :cond_35
    iget-wide v2, p0, Lax/A;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_44

    .line 267
    const/16 v0, 0x8

    iget-wide v2, p0, Lax/A;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 269
    :cond_44
    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6b

    .line 270
    iget-object v0, p0, Lax/A;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 271
    const/4 v3, 0x7

    invoke-virtual {v0}, Ln/B;->c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_56

    .line 274
    :cond_6b
    iget-wide v2, p0, Lax/A;->h:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7a

    .line 275
    const/16 v0, 0x9

    iget-wide v2, p0, Lax/A;->h:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 277
    :cond_7a
    return-object v1
.end method

.method public u()J
    .registers 3

    .prologue
    .line 328
    iget-wide v0, p0, Lax/A;->o:J

    return-wide v0
.end method
