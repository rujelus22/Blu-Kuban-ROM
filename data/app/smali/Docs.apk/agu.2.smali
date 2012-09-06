.class Lagu;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Lahi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lahi",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final a:LalW;

.field static final a:Ljava/util/logging/Logger;

.field static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final a:J

.field final a:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final a:LagB;

.field final a:LagY;

.field final a:Lage;

.field final a:Lagi;

.field final a:Lagq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagq",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field final a:LahC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LahC",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final a:LahE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LahE",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LahD",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final a:[LagV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LagV",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:I

.field final b:J

.field final b:LafD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafD",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:LagY;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final c:J

.field final d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    const-class v0, Lagu;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lagu;->a:Ljava/util/logging/Logger;

    .line 155
    invoke-static {}, LalX;->a()LalW;

    move-result-object v0

    sput-object v0, Lagu;->a:LalW;

    .line 679
    new-instance v0, Lagv;

    invoke-direct {v0}, Lagv;-><init>()V

    sput-object v0, Lagu;->a:Lahi;

    .line 1010
    new-instance v0, Lagw;

    invoke-direct {v0}, Lagw;-><init>()V

    sput-object v0, Lagu;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lagk;Lagq;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagk",
            "<-TK;-TV;>;",
            "Lagq",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 234
    invoke-virtual {p1}, Lagk;->b()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lagu;->c:I

    .line 236
    invoke-virtual {p1}, Lagk;->a()LagY;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:LagY;

    .line 237
    invoke-virtual {p1}, Lagk;->b()LagY;

    move-result-object v0

    iput-object v0, p0, Lagu;->b:LagY;

    .line 239
    invoke-virtual {p1}, Lagk;->a()LafD;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:LafD;

    .line 240
    invoke-virtual {p1}, Lagk;->b()LafD;

    move-result-object v0

    iput-object v0, p0, Lagu;->b:LafD;

    .line 242
    invoke-virtual {p1}, Lagk;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lagu;->a:J

    .line 243
    invoke-virtual {p1}, Lagk;->a()LahE;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:LahE;

    .line 244
    invoke-virtual {p1}, Lagk;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lagu;->b:J

    .line 245
    invoke-virtual {p1}, Lagk;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lagu;->c:J

    .line 246
    invoke-virtual {p1}, Lagk;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lagu;->d:J

    .line 248
    invoke-virtual {p1}, Lagk;->a()LahC;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:LahC;

    .line 249
    iget-object v0, p0, Lagu;->a:LahC;

    sget-object v1, Lago;->a:Lago;

    if-ne v0, v1, :cond_c0

    invoke-static {}, Lagu;->a()Ljava/util/Queue;

    move-result-object v0

    :goto_59
    iput-object v0, p0, Lagu;->a:Ljava/util/Queue;

    .line 253
    invoke-virtual {p0}, Lagu;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lagk;->a(Z)Lage;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:Lage;

    .line 254
    iget-object v0, p0, Lagu;->a:LagY;

    invoke-virtual {p0}, Lagu;->l()Z

    move-result v1

    invoke-virtual {p0}, Lagu;->k()Z

    move-result v3

    invoke-static {v0, v1, v3}, LagB;->a(LagY;ZZ)LagB;

    move-result-object v0

    iput-object v0, p0, Lagu;->a:LagB;

    .line 255
    invoke-virtual {p1}, Lagk;->a()Laga;

    move-result-object v0

    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagi;

    iput-object v0, p0, Lagu;->a:Lagi;

    .line 256
    iput-object p2, p0, Lagu;->a:Lagq;

    .line 258
    invoke-virtual {p1}, Lagk;->a()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lagu;->a()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-virtual {p0}, Lagu;->b()Z

    move-result v1

    if-nez v1, :cond_a0

    .line 260
    iget-wide v5, p0, Lagu;->a:J

    long-to-int v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_a0
    move v1, v2

    move v3, v4

    .line 269
    :goto_a2
    iget v5, p0, Lagu;->c:I

    if-ge v1, v5, :cond_c6

    invoke-virtual {p0}, Lagu;->a()Z

    move-result v5

    if-eqz v5, :cond_bb

    invoke-virtual {p0}, Lagu;->b()Z

    move-result v5

    if-nez v5, :cond_bb

    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    iget-wide v7, p0, Lagu;->a:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_c6

    .line 270
    :cond_bb
    add-int/lit8 v3, v3, 0x1

    .line 271
    shl-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 249
    :cond_c0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_59

    .line 273
    :cond_c6
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lagu;->b:I

    .line 274
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lagu;->a:I

    .line 276
    invoke-virtual {p0, v1}, Lagu;->a(I)[LagV;

    move-result-object v3

    iput-object v3, p0, Lagu;->a:[LagV;

    .line 278
    div-int v3, v0, v1

    .line 279
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_134

    .line 280
    add-int/lit8 v0, v3, 0x1

    :goto_dc
    move v5, v2

    .line 284
    :goto_dd
    if-ge v5, v0, :cond_e3

    .line 285
    shl-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_dd

    .line 288
    :cond_e3
    invoke-virtual {p0}, Lagu;->a()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 290
    iget-wide v2, p0, Lagu;->a:J

    int-to-long v6, v1

    div-long/2addr v2, v6

    add-long/2addr v2, v9

    .line 291
    iget-wide v6, p0, Lagu;->a:J

    int-to-long v0, v1

    rem-long/2addr v6, v0

    move-wide v0, v2

    .line 292
    :goto_f3
    iget-object v2, p0, Lagu;->a:[LagV;

    array-length v2, v2

    if-ge v4, v2, :cond_131

    .line 293
    int-to-long v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_132

    .line 294
    sub-long v1, v0, v9

    .line 296
    :goto_ff
    iget-object v3, p0, Lagu;->a:[LagV;

    invoke-virtual {p1}, Lagk;->a()Laga;

    move-result-object v0

    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagi;

    invoke-virtual {p0, v5, v1, v2, v0}, Lagu;->a(IJLagi;)LagV;

    move-result-object v0

    aput-object v0, v3, v4

    .line 292
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v1

    goto :goto_f3

    .line 300
    :cond_115
    :goto_115
    iget-object v0, p0, Lagu;->a:[LagV;

    array-length v0, v0

    if-ge v4, v0, :cond_131

    .line 301
    iget-object v1, p0, Lagu;->a:[LagV;

    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Lagk;->a()Laga;

    move-result-object v0

    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagi;

    invoke-virtual {p0, v5, v2, v3, v0}, Lagu;->a(IJLagi;)LagV;

    move-result-object v0

    aput-object v0, v1, v4

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_115

    .line 305
    :cond_131
    return-void

    :cond_132
    move-wide v1, v0

    goto :goto_ff

    :cond_134
    move v0, v3

    goto :goto_dc
.end method

.method static a(I)I
    .registers 4
    .parameter

    .prologue
    .line 1850
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1851
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1852
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1853
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1854
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1855
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static a()LagU;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1007
    sget-object v0, LagT;->a:LagT;

    return-object v0
.end method

.method static a()Lahi;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 725
    sget-object v0, Lagu;->a:Lahi;

    return-object v0
.end method

.method static a()Ljava/util/Queue;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1042
    sget-object v0, Lagu;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static a(LagU;LagU;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1971
    invoke-interface {p0, p1}, LagU;->a(LagU;)V

    .line 1972
    invoke-interface {p1, p0}, LagU;->b(LagU;)V

    .line 1973
    return-void
.end method

.method static b(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1977
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    .line 1978
    invoke-interface {p0, v0}, LagU;->a(LagU;)V

    .line 1979
    invoke-interface {p0, v0}, LagU;->b(LagU;)V

    .line 1980
    return-void
.end method

.method static b(LagU;LagU;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1984
    invoke-interface {p0, p1}, LagU;->c(LagU;)V

    .line 1985
    invoke-interface {p1, p0}, LagU;->d(LagU;)V

    .line 1986
    return-void
.end method

.method static c(LagU;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1990
    invoke-static {}, Lagu;->a()LagU;

    move-result-object v0

    .line 1991
    invoke-interface {p0, v0}, LagU;->c(LagU;)V

    .line 1992
    invoke-interface {p0, v0}, LagU;->d(LagU;)V

    .line 1993
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1888
    iget-object v0, p0, Lagu;->a:LafD;

    invoke-virtual {v0, p1}, LafD;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1889
    invoke-static {v0}, Lagu;->a(I)I

    move-result v0

    return v0
.end method

.method a()J
    .registers 7

    .prologue
    .line 3928
    iget-object v3, p0, Lagu;->a:[LagV;

    .line 3929
    const-wide/16 v1, 0x0

    .line 3930
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 3931
    aget-object v4, v3, v0

    iget v4, v4, LagV;->a:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3930
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3933
    :cond_11
    return-wide v1
.end method

.method a(I)LagV;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LagV",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1920
    iget-object v0, p0, Lagu;->a:[LagV;

    iget v1, p0, Lagu;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lagu;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method a(IJLagi;)LagV;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lagi;",
            ")",
            "LagV",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1925
    new-instance v0, LagV;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LagV;-><init>(Lagu;IJLagi;)V

    return-object v0
.end method

.method a(LagU;J)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1936
    invoke-interface {p1}, LagU;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1947
    :cond_7
    :goto_7
    return-object v0

    .line 1939
    :cond_8
    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v1

    invoke-interface {v1}, Lahi;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1940
    if-eqz v1, :cond_7

    .line 1944
    invoke-virtual {p0, p1, p2, p3}, Lagu;->a(LagU;J)Z

    move-result v2

    if-nez v2, :cond_7

    move-object v0, v1

    .line 1947
    goto :goto_7
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 3969
    iget-object v0, p0, Lagu;->a:Lagq;

    invoke-virtual {p0, p1, v0}, Lagu;->a(Ljava/lang/Object;Lagq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Lagq;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3964
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3965
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, LagV;->a(Ljava/lang/Object;ILagq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .registers 5

    .prologue
    .line 2002
    :goto_0
    iget-object v0, p0, Lagu;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LahD;

    if-eqz v0, :cond_1b

    .line 2004
    :try_start_a
    iget-object v1, p0, Lagu;->a:LahC;

    invoke-interface {v1, v0}, LahC;->a(LahD;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_0

    .line 2005
    :catch_10
    move-exception v0

    .line 2006
    sget-object v1, Lagu;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2009
    :cond_1b
    return-void
.end method

.method a(LagU;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1899
    invoke-interface {p1}, LagU;->a()I

    move-result v0

    .line 1900
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LagV;->a(LagU;I)Z

    .line 1901
    return-void
.end method

.method a(Lahi;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahi",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1893
    invoke-interface {p1}, Lahi;->a()LagU;

    move-result-object v0

    .line 1894
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    .line 1895
    invoke-virtual {p0, v1}, Lagu;->a(I)LagV;

    move-result-object v2

    invoke-interface {v0}, LagU;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, LagV;->a(Ljava/lang/Object;ILahi;)Z

    .line 1896
    return-void
.end method

.method a()Z
    .registers 5

    .prologue
    .line 308
    iget-wide v0, p0, Lagu;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method a(LagU;J)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1956
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, LagU;->a()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lagu;->b:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_14

    .line 1964
    :cond_13
    :goto_13
    return v0

    .line 1960
    :cond_14
    invoke-virtual {p0}, Lagu;->c()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, LagU;->b()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lagu;->c:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_13

    .line 1964
    :cond_26
    const/4 v0, 0x0

    goto :goto_13
.end method

.method final a(I)[LagV;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "LagV",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2013
    new-array v0, p1, [LagV;

    return-object v0
.end method

.method b()Z
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lagu;->a:LahE;

    sget-object v1, Lagp;->a:Lagp;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method c()Z
    .registers 5

    .prologue
    .line 320
    iget-wide v0, p0, Lagu;->c:J

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

.method public clear()V
    .registers 5

    .prologue
    .line 4239
    iget-object v1, p0, Lagu;->a:[LagV;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 4240
    invoke-virtual {v3}, LagV;->k()V

    .line 4239
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4242
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 4129
    if-nez p1, :cond_4

    .line 4130
    const/4 v0, 0x0

    .line 4133
    :goto_3
    return v0

    .line 4132
    :cond_4
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4133
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LagV;->a(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 21
    .parameter

    .prologue
    .line 4139
    if-nez p1, :cond_4

    .line 4140
    const/4 v3, 0x0

    .line 4174
    :goto_3
    return v3

    .line 4148
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lagu;->a:Lage;

    invoke-virtual {v3}, Lage;->a()J

    move-result-wide v11

    .line 4149
    move-object/from16 v0, p0

    iget-object v13, v0, Lagu;->a:[LagV;

    .line 4150
    const-wide/16 v6, -0x1

    .line 4151
    const/4 v3, 0x0

    move v8, v3

    move-wide v9, v6

    :goto_15
    const/4 v3, 0x3

    if-ge v8, v3, :cond_69

    .line 4152
    const-wide/16 v4, 0x0

    .line 4153
    array-length v14, v13

    const/4 v3, 0x0

    move-wide v6, v4

    move v5, v3

    :goto_1e
    if-ge v5, v14, :cond_65

    aget-object v15, v13, v5

    .line 4156
    iget v3, v15, LagV;->a:I

    .line 4158
    iget-object v0, v15, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 4159
    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_5d

    .line 4160
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LagU;

    :goto_38
    if-eqz v3, :cond_59

    .line 4161
    invoke-virtual {v15, v3, v11, v12}, LagV;->a(LagU;J)Ljava/lang/Object;

    move-result-object v17

    .line 4162
    if-eqz v17, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lagu;->b:LafD;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_54

    .line 4163
    const/4 v3, 0x1

    goto :goto_3

    .line 4160
    :cond_54
    invoke-interface {v3}, LagU;->a()LagU;

    move-result-object v3

    goto :goto_38

    .line 4159
    :cond_59
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2a

    .line 4167
    :cond_5d
    iget v3, v15, LagV;->c:I

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 4153
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1e

    .line 4169
    :cond_65
    cmp-long v3, v6, v9

    if-nez v3, :cond_6b

    .line 4174
    :cond_69
    const/4 v3, 0x0

    goto :goto_3

    .line 4151
    :cond_6b
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v9, v6

    goto :goto_15
.end method

.method d()Z
    .registers 5

    .prologue
    .line 324
    iget-wide v0, p0, Lagu;->b:J

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

.method e()Z
    .registers 5

    .prologue
    .line 328
    iget-wide v0, p0, Lagu;->d:J

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

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4274
    iget-object v0, p0, Lagu;->b:Ljava/util/Set;

    .line 4275
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LagL;

    invoke-direct {v0, p0}, LagL;-><init>(Lagu;)V

    iput-object v0, p0, Lagu;->b:Ljava/util/Set;

    goto :goto_4
.end method

.method f()Z
    .registers 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lagu;->a()Z

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

.method g()Z
    .registers 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lagu;->c()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 3944
    if-nez p1, :cond_4

    .line 3945
    const/4 v0, 0x0

    .line 3948
    :goto_3
    return-object v0

    .line 3947
    :cond_4
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3948
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LagV;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method h()Z
    .registers 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lagu;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lagu;->e()Z

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

.method i()Z
    .registers 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3904
    .line 3905
    iget-object v6, p0, Lagu;->a:[LagV;

    move v0, v1

    move-wide v2, v4

    .line 3906
    :goto_7
    array-length v7, v6

    if-ge v0, v7, :cond_1a

    .line 3907
    aget-object v7, v6, v0

    iget v7, v7, LagV;->a:I

    if-eqz v7, :cond_11

    .line 3924
    :cond_10
    :goto_10
    return v1

    .line 3910
    :cond_11
    aget-object v7, v6, v0

    iget v7, v7, LagV;->c:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3906
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3913
    :cond_1a
    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    move v0, v1

    .line 3914
    :goto_1f
    array-length v7, v6

    if-ge v0, v7, :cond_31

    .line 3915
    aget-object v7, v6, v0

    iget v7, v7, LagV;->a:I

    if-nez v7, :cond_10

    .line 3918
    aget-object v7, v6, v0

    iget v7, v7, LagV;->c:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3914
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3920
    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    .line 3924
    :cond_35
    const/4 v1, 0x1

    goto :goto_10
.end method

.method j()Z
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, Lagu;->h()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lagu;->i()Z

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

.method k()Z
    .registers 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lagu;->g()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lagu;->h()Z

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

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4256
    iget-object v0, p0, Lagu;->a:Ljava/util/Set;

    .line 4257
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LagO;

    invoke-direct {v0, p0}, LagO;-><init>(Lagu;)V

    iput-object v0, p0, Lagu;->a:Ljava/util/Set;

    goto :goto_4
.end method

.method l()Z
    .registers 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lagu;->f()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lagu;->i()Z

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

.method m()Z
    .registers 3

    .prologue
    .line 360
    iget-object v0, p0, Lagu;->a:LagY;

    sget-object v1, LagY;->a:LagY;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method n()Z
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lagu;->b:LagY;

    sget-object v1, LagY;->a:LagY;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4179
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4180
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4182
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, LagV;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4195
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

    .line 4196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lagu;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4198
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4187
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4188
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4190
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, LagV;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4202
    if-nez p1, :cond_4

    .line 4203
    const/4 v0, 0x0

    .line 4206
    :goto_3
    return-object v0

    .line 4205
    :cond_4
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4206
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, LagV;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4211
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 4212
    :cond_4
    const/4 v0, 0x0

    .line 4215
    :goto_5
    return v0

    .line 4214
    :cond_6
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4215
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, LagV;->a(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4231
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4234
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, LagV;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4220
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    if-nez p2, :cond_a

    .line 4223
    const/4 v0, 0x0

    .line 4226
    :goto_9
    return v0

    .line 4225
    :cond_a
    invoke-virtual {p0, p1}, Lagu;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4226
    invoke-virtual {p0, v0}, Lagu;->a(I)LagV;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, LagV;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public size()I
    .registers 3

    .prologue
    .line 3938
    invoke-virtual {p0}, Lagu;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, LalA;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4265
    iget-object v0, p0, Lagu;->a:Ljava/util/Collection;

    .line 4266
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lahj;

    invoke-direct {v0, p0}, Lahj;-><init>(Lagu;)V

    iput-object v0, p0, Lagu;->a:Ljava/util/Collection;

    goto :goto_4
.end method
