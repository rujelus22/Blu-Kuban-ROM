.class Lcom/google/common/collect/X;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final q:Lcom/google/common/collect/aS; = null

.field static final r:Ljava/util/Queue; = null

.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final transient a:I

.field final transient b:I

.field final transient c:[Lcom/google/common/collect/av;

.field final d:I

.field final e:Lcom/google/common/base/q;

.field final f:Lcom/google/common/base/q;

.field final g:Lcom/google/common/collect/aI;

.field final h:Lcom/google/common/collect/aI;

.field final i:I

.field final j:J

.field final k:J

.field final l:Ljava/util/Queue;

.field final m:Lcom/google/common/collect/cE;

.field final transient n:Lcom/google/common/collect/aa;

.field final o:Ljava/util/concurrent/Executor;

.field final p:Lcom/google/common/base/ai;

.field s:Ljava/util/Set;

.field t:Ljava/util/Collection;

.field u:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 615
    new-instance v0, Lcom/google/common/collect/Y;

    invoke-direct {v0}, Lcom/google/common/collect/Y;-><init>()V

    sput-object v0, Lcom/google/common/collect/X;->q:Lcom/google/common/collect/aS;

    .line 804
    new-instance v0, Lcom/google/common/collect/Z;

    invoke-direct {v0}, Lcom/google/common/collect/Z;-><init>()V

    sput-object v0, Lcom/google/common/collect/X;->r:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/cF;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/X;->d:I

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->e()Lcom/google/common/collect/aI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->g:Lcom/google/common/collect/aI;

    .line 205
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->f()Lcom/google/common/collect/aI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->h:Lcom/google/common/collect/aI;

    .line 207
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->a()Lcom/google/common/base/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    .line 208
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->b()Lcom/google/common/base/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->f:Lcom/google/common/base/q;

    .line 210
    iget v0, p1, Lcom/google/common/collect/cF;->f:I

    iput v0, p0, Lcom/google/common/collect/X;->i:I

    .line 211
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/X;->j:J

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/X;->k:J

    .line 214
    iget-object v0, p0, Lcom/google/common/collect/X;->g:Lcom/google/common/collect/aI;

    invoke-virtual {p0}, Lcom/google/common/collect/X;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/X;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lcom/google/common/collect/aa;->a(Lcom/google/common/collect/aI;ZZ)Lcom/google/common/collect/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->n:Lcom/google/common/collect/aa;

    .line 216
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->i()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->o:Ljava/util/concurrent/Executor;

    .line 217
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->j()Lcom/google/common/base/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->p:Lcom/google/common/base/ai;

    .line 219
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->k()Lcom/google/common/collect/cE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/X;->m:Lcom/google/common/collect/cE;

    .line 220
    iget-object v0, p0, Lcom/google/common/collect/X;->m:Lcom/google/common/collect/cE;

    sget-object v1, Lcom/google/common/collect/cJ;->a:Lcom/google/common/collect/cJ;

    if-ne v0, v1, :cond_94

    invoke-static {}, Lcom/google/common/collect/X;->h()Ljava/util/Queue;

    move-result-object v0

    :goto_65
    iput-object v0, p0, Lcom/google/common/collect/X;->l:Ljava/util/Queue;

    .line 224
    invoke-virtual {p1}, Lcom/google/common/collect/cF;->c()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 226
    invoke-virtual {p0}, Lcom/google/common/collect/X;->a()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 227
    iget v1, p0, Lcom/google/common/collect/X;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_7d
    move v1, v2

    move v3, v4

    .line 236
    :goto_7f
    iget v5, p0, Lcom/google/common/collect/X;->d:I

    if-ge v1, v5, :cond_9a

    invoke-virtual {p0}, Lcom/google/common/collect/X;->a()Z

    move-result v5

    if-eqz v5, :cond_8f

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lcom/google/common/collect/X;->i:I

    if-gt v5, v6, :cond_9a

    .line 237
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    .line 238
    shl-int/lit8 v1, v1, 0x1

    goto :goto_7f

    .line 220
    :cond_94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_65

    .line 240
    :cond_9a
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/common/collect/X;->b:I

    .line 241
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/google/common/collect/X;->a:I

    .line 243
    invoke-virtual {p0, v1}, Lcom/google/common/collect/X;->a(I)[Lcom/google/common/collect/av;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    .line 245
    div-int v3, v0, v1

    .line 246
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_ea

    .line 247
    add-int/lit8 v0, v3, 0x1

    .line 251
    :goto_b0
    if-ge v2, v0, :cond_b5

    .line 252
    shl-int/lit8 v2, v2, 0x1

    goto :goto_b0

    .line 255
    :cond_b5
    invoke-virtual {p0}, Lcom/google/common/collect/X;->a()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 257
    iget v0, p0, Lcom/google/common/collect/X;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 258
    iget v3, p0, Lcom/google/common/collect/X;->i:I

    rem-int v1, v3, v1

    .line 259
    :goto_c4
    iget-object v3, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    array-length v3, v3

    if-ge v4, v3, :cond_e9

    .line 260
    if-ne v4, v1, :cond_cd

    .line 261
    add-int/lit8 v0, v0, -0x1

    .line 263
    :cond_cd
    iget-object v3, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/X;->a(II)Lcom/google/common/collect/av;

    move-result-object v5

    aput-object v5, v3, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 266
    :cond_d8
    :goto_d8
    iget-object v0, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    array-length v0, v0

    if-ge v4, v0, :cond_e9

    .line 267
    iget-object v0, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/X;->a(II)Lcom/google/common/collect/av;

    move-result-object v1

    aput-object v1, v0, v4

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_d8

    .line 271
    :cond_e9
    return-void

    :cond_ea
    move v0, v3

    goto :goto_b0
.end method

.method static b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1810
    invoke-interface {p0, p1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/au;)V

    .line 1811
    invoke-interface {p1, p0}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/au;)V

    .line 1812
    return-void
.end method

.method private static c(I)I
    .registers 4
    .parameter

    .prologue
    .line 1705
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1706
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1707
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1708
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1709
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1710
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1853
    invoke-interface {p0, p1}, Lcom/google/common/collect/au;->c(Lcom/google/common/collect/au;)V

    .line 1854
    invoke-interface {p1, p0}, Lcom/google/common/collect/au;->d(Lcom/google/common/collect/au;)V

    .line 1855
    return-void
.end method

.method static e(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1816
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    .line 1817
    invoke-interface {p0, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/au;)V

    .line 1818
    invoke-interface {p0, v0}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/au;)V

    .line 1819
    return-void
.end method

.method static f()Lcom/google/common/collect/aS;
    .registers 1

    .prologue
    .line 646
    sget-object v0, Lcom/google/common/collect/X;->q:Lcom/google/common/collect/aS;

    return-object v0
.end method

.method static f(Lcom/google/common/collect/au;)V
    .registers 2
    .parameter

    .prologue
    .line 1859
    invoke-static {}, Lcom/google/common/collect/X;->g()Lcom/google/common/collect/au;

    move-result-object v0

    .line 1860
    invoke-interface {p0, v0}, Lcom/google/common/collect/au;->c(Lcom/google/common/collect/au;)V

    .line 1861
    invoke-interface {p0, v0}, Lcom/google/common/collect/au;->d(Lcom/google/common/collect/au;)V

    .line 1862
    return-void
.end method

.method static g()Lcom/google/common/collect/au;
    .registers 1

    .prologue
    .line 801
    sget-object v0, Lcom/google/common/collect/as;->a:Lcom/google/common/collect/as;

    return-object v0
.end method

.method static h()Ljava/util/Queue;
    .registers 1

    .prologue
    .line 838
    sget-object v0, Lcom/google/common/collect/X;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1736
    invoke-static {v0}, Lcom/google/common/collect/X;->c(I)I

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/google/common/collect/X;->h:Lcom/google/common/collect/aI;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/aI;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1722
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v0

    .line 1723
    iget-object v1, p0, Lcom/google/common/collect/X;->n:Lcom/google/common/collect/aa;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/aa;->a(Lcom/google/common/collect/X;Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v1

    .line 1725
    invoke-interface {v0, v1}, Lcom/google/common/collect/aS;->a(Lcom/google/common/collect/au;)Lcom/google/common/collect/aS;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/aS;)V

    .line 1726
    return-object v1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/google/common/collect/X;->n:Lcom/google/common/collect/aa;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/aa;->a(Lcom/google/common/collect/X;Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method a(II)Lcom/google/common/collect/av;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1888
    new-instance v0, Lcom/google/common/collect/av;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/av;-><init>(Lcom/google/common/collect/X;II)V

    return-object v0
.end method

.method a(Lcom/google/common/collect/au;)V
    .registers 4
    .parameter

    .prologue
    .line 1750
    invoke-interface {p1}, Lcom/google/common/collect/au;->c()I

    move-result v0

    .line 1751
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;I)Z

    .line 1752
    return-void
.end method

.method a(Lcom/google/common/collect/au;Lcom/google/common/collect/aS;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1741
    invoke-interface {p1}, Lcom/google/common/collect/au;->c()I

    move-result v0

    .line 1742
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    .line 1743
    invoke-interface {p1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;ILcom/google/common/collect/aS;)Z

    .line 1744
    invoke-virtual {v1}, Lcom/google/common/collect/av;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1745
    invoke-virtual {v1}, Lcom/google/common/collect/av;->i()V

    .line 1747
    :cond_18
    return-void
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/aS;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/google/common/collect/X;->l:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/X;->r:Ljava/util/Queue;

    if-ne v0, v1, :cond_7

    .line 1832
    :goto_6
    return-void

    .line 1829
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 1830
    invoke-interface {p3, v0}, Lcom/google/common/collect/aS;->a(Lcom/google/common/collect/au;)Lcom/google/common/collect/aS;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/aS;)V

    .line 1831
    iget-object v1, p0, Lcom/google/common/collect/X;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method a()Z
    .registers 3

    .prologue
    .line 274
    iget v0, p0, Lcom/google/common/collect/X;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method a(Lcom/google/common/collect/aS;)Z
    .registers 3
    .parameter

    .prologue
    .line 1802
    sget-object v0, Lcom/google/common/collect/X;->q:Lcom/google/common/collect/aS;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method a(Lcom/google/common/collect/au;J)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1779
    invoke-interface {p1}, Lcom/google/common/collect/au;->e()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final a(I)[Lcom/google/common/collect/av;
    .registers 3
    .parameter

    .prologue
    .line 1871
    const-class v0, Lcom/google/common/collect/av;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/av;

    check-cast v0, [Lcom/google/common/collect/av;

    return-object v0
.end method

.method b(I)Lcom/google/common/collect/av;
    .registers 5
    .parameter

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    iget v1, p0, Lcom/google/common/collect/X;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/X;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/X;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/X;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method b(Lcom/google/common/collect/au;)Z
    .registers 4
    .parameter

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/google/common/collect/X;->p:Lcom/google/common/base/ai;

    invoke-interface {v0}, Lcom/google/common/base/ai;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;J)Z

    move-result v0

    return v0
.end method

.method c()Z
    .registers 5

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/google/common/collect/X;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method c(Lcom/google/common/collect/au;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1787
    invoke-interface {p1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 1794
    :cond_8
    :goto_8
    return v0

    .line 1790
    :cond_9
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v2

    .line 1791
    invoke-interface {v2}, Lcom/google/common/collect/aS;->a()Z

    move-result v3

    if-eqz v3, :cond_15

    move v0, v1

    .line 1792
    goto :goto_8

    .line 1794
    :cond_15
    invoke-interface {v2}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 3398
    iget-object v1, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 3399
    invoke-virtual {v3}, Lcom/google/common/collect/av;->m()V

    .line 3398
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3401
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3324
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3325
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/av;->b(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3330
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    iget-object v2, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    move v0, v1

    .line 3333
    :goto_7
    array-length v3, v2

    if-ge v0, v3, :cond_17

    .line 3336
    aget-object v3, v2, v0

    iget v3, v3, Lcom/google/common/collect/av;->a:I

    .line 3337
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3338
    const/4 v1, 0x1

    .line 3341
    :cond_17
    return v1

    .line 3333
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method d()Z
    .registers 5

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/google/common/collect/X;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method d(Lcom/google/common/collect/au;)Z
    .registers 3
    .parameter

    .prologue
    .line 1798
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/aS;)Z

    move-result v0

    return v0
.end method

.method e()Z
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/X;->o:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/common/collect/cF;->b:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/google/common/collect/X;->u:Ljava/util/Set;

    .line 3421
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/ao;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ao;-><init>(Lcom/google/common/collect/X;)V

    iput-object v0, p0, Lcom/google/common/collect/X;->u:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3310
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3311
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method i()V
    .registers 4

    .prologue
    .line 1843
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/X;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    if-eqz v0, :cond_1c

    .line 1844
    iget-object v1, p0, Lcom/google/common/collect/X;->m:Lcom/google/common/collect/cE;

    invoke-interface {v0}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/common/collect/cE;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1847
    :cond_1c
    return-void
.end method

.method public isEmpty()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 3267
    iget-object v3, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    .line 3277
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 3279
    :goto_8
    array-length v5, v3

    if-ge v0, v5, :cond_1c

    .line 3280
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/av;->a:I

    if-eqz v5, :cond_12

    .line 3297
    :cond_11
    :goto_11
    return v1

    .line 3283
    :cond_12
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/av;->b:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 3279
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3289
    :cond_1c
    if-eqz v2, :cond_33

    move v0, v1

    .line 3290
    :goto_1f
    array-length v2, v3

    if-ge v0, v2, :cond_33

    .line 3291
    aget-object v2, v3, v0

    iget v2, v2, Lcom/google/common/collect/av;->a:I

    if-nez v2, :cond_11

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/av;->b:I

    if-ne v2, v5, :cond_11

    .line 3290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3297
    :cond_33
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 3406
    iget-object v0, p0, Lcom/google/common/collect/X;->s:Ljava/util/Set;

    .line 3407
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/ar;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ar;-><init>(Lcom/google/common/collect/X;)V

    iput-object v0, p0, Lcom/google/common/collect/X;->s:Ljava/util/Set;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3345
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3346
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 3355
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/X;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3358
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3350
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3351
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3361
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3362
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/av;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3371
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3372
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/av;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3393
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3394
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3381
    invoke-virtual {p0, p1}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3382
    invoke-virtual {p0, v0}, Lcom/google/common/collect/X;->b(I)Lcom/google/common/collect/av;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/av;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 7

    .prologue
    .line 3301
    iget-object v3, p0, Lcom/google/common/collect/X;->c:[Lcom/google/common/collect/av;

    .line 3302
    const-wide/16 v1, 0x0

    .line 3303
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 3304
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/common/collect/av;->a:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3303
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3306
    :cond_11
    invoke-static {v1, v2}, LJ/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 3413
    iget-object v0, p0, Lcom/google/common/collect/X;->t:Ljava/util/Collection;

    .line 3414
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/aT;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aT;-><init>(Lcom/google/common/collect/X;)V

    iput-object v0, p0, Lcom/google/common/collect/X;->t:Ljava/util/Collection;

    goto :goto_4
.end method
