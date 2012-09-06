.class public Lcom/google/googlenav/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:Lad/y;

.field private b:B

.field private c:I

.field private final d:Ljava/util/List;

.field private e:Lcom/google/googlenav/layer/m;

.field private f:Lcom/google/googlenav/T;

.field private g:Lad/y;

.field private h:Z

.field private i:I

.field private final j:Ljava/util/ArrayList;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/Y;->e:Lcom/google/googlenav/layer/m;

    .line 100
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Y;->j:Ljava/util/ArrayList;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/Y;->l:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lad/y;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    .line 72
    sget-object v0, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iput-object v0, p0, Lcom/google/googlenav/Y;->e:Lcom/google/googlenav/layer/m;

    .line 100
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/Y;->j:Ljava/util/ArrayList;

    .line 108
    iput v1, p0, Lcom/google/googlenav/Y;->l:I

    .line 115
    iput-object p1, p0, Lcom/google/googlenav/Y;->a:Lad/y;

    .line 116
    iput-object p2, p0, Lcom/google/googlenav/Y;->k:Ljava/lang/String;

    .line 117
    iput v1, p0, Lcom/google/googlenav/Y;->c:I

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/Y;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/google/googlenav/Y;->i:I

    return p1
.end method

.method static synthetic a(Lcom/google/googlenav/Y;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/Y;->g:Lad/y;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/Y;Lad/y;)Lad/y;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/Y;->g:Lad/y;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/Y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V

    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p2}, Lat/B;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    const/4 v1, 0x2

    invoke-virtual {p2}, Lat/B;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 124
    invoke-virtual {p1, p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/Y;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/googlenav/Y;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/Y;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/Y;->j:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/google/googlenav/Y;->l:I

    return v0
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-byte p1, p0, Lcom/google/googlenav/Y;->b:B

    .line 197
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/Y;->c()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/Y;->l:I

    .line 140
    iput p1, p0, Lcom/google/googlenav/Y;->c:I

    .line 141
    if-gez p1, :cond_e

    .line 142
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/googlenav/Y;->b:B

    .line 146
    :cond_d
    :goto_d
    return-void

    .line 143
    :cond_e
    iget-byte v0, p0, Lcom/google/googlenav/Y;->b:B

    if-nez v0, :cond_d

    .line 144
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/google/googlenav/Y;->b:B

    goto :goto_d
.end method

.method public a(Lcom/google/googlenav/T;)V
    .registers 2
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    .line 623
    return-void
.end method

.method public a(Lcom/google/googlenav/cq;)V
    .registers 3
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public a(Lcom/google/googlenav/layer/m;)V
    .registers 2
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/google/googlenav/Y;->e:Lcom/google/googlenav/layer/m;

    .line 631
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/googlenav/Y;->k:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public b()Lad/y;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/googlenav/Y;->a:Lad/y;

    return-object v0
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 159
    if-gez p1, :cond_4

    .line 172
    :cond_3
    :goto_3
    return-object v0

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_15

    .line 166
    iget-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/E;

    goto :goto_3

    .line 168
    :cond_15
    iget-object v1, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    .line 169
    iget-object v2, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    invoke-virtual {v2}, Lcom/google/googlenav/T;->f()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 170
    iget-object v0, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_3
.end method

.method public c()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/googlenav/Y;->c:I

    return v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 178
    return p1
.end method

.method public d()B
    .registers 2

    .prologue
    .line 191
    iget-byte v0, p0, Lcom/google/googlenav/Y;->b:B

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 3

    .prologue
    .line 201
    iget-byte v0, p0, Lcom/google/googlenav/Y;->b:B

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/googlenav/Y;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 202
    :cond_9
    const/4 v0, 0x0

    .line 205
    :goto_a
    return-object v0

    :cond_b
    iget v0, p0, Lcom/google/googlenav/Y;->c:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/Y;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_a
.end method

.method public f()I
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    invoke-virtual {v1}, Lcom/google/googlenav/T;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()Lad/y;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/googlenav/Y;->g:Lad/y;

    return-object v0
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/google/googlenav/Y;->h:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public i()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/google/googlenav/Y;->i:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/Y;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/googlenav/Y;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public l()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/googlenav/Y;->e:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/T;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    return-object v0
.end method

.method public n()V
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/googlenav/Y;->f:Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->a()V

    .line 627
    return-void
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/googlenav/Y;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
