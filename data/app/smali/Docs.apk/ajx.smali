.class Lajx;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;
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
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Lakr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakr",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/logging/Logger;

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
.field final transient a:I

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

.field final a:Lage;

.field final transient a:LajB;

.field final a:Lajv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajv",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final a:Lakh;

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
            "Lajw",
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

.field final transient a:[Lakb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient b:I

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

.field final b:Lakh;

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

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    const-class v0, Lajx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lajx;->a:Ljava/util/logging/Logger;

    .line 630
    new-instance v0, Lajy;

    invoke-direct {v0}, Lajy;-><init>()V

    sput-object v0, Lajx;->a:Lakr;

    .line 920
    new-instance v0, Lajz;

    invoke-direct {v0}, Lajz;-><init>()V

    sput-object v0, Lajx;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lajl;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 197
    invoke-virtual {p1}, Lajl;->b()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lajx;->c:I

    .line 199
    invoke-virtual {p1}, Lajl;->a()Lakh;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:Lakh;

    .line 200
    invoke-virtual {p1}, Lajl;->b()Lakh;

    move-result-object v0

    iput-object v0, p0, Lajx;->b:Lakh;

    .line 202
    invoke-virtual {p1}, Lajl;->a()LafD;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:LafD;

    .line 203
    invoke-virtual {p1}, Lajl;->b()LafD;

    move-result-object v0

    iput-object v0, p0, Lajx;->b:LafD;

    .line 205
    iget v0, p1, Lajl;->c:I

    iput v0, p0, Lajx;->d:I

    .line 206
    invoke-virtual {p1}, Lajl;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lajx;->a:J

    .line 207
    invoke-virtual {p1}, Lajl;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lajx;->b:J

    .line 209
    iget-object v0, p0, Lajx;->a:Lakh;

    invoke-virtual {p0}, Lajx;->b()Z

    move-result v1

    invoke-virtual {p0}, Lajx;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, LajB;->a(Lakh;ZZ)LajB;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:LajB;

    .line 210
    invoke-virtual {p1}, Lajl;->a()Lage;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:Lage;

    .line 212
    invoke-virtual {p1}, Lajl;->a()Lajv;

    move-result-object v0

    iput-object v0, p0, Lajx;->a:Lajv;

    .line 213
    iget-object v0, p0, Lajx;->a:Lajv;

    sget-object v1, Lair;->a:Lair;

    if-ne v0, v1, :cond_8e

    invoke-static {}, Lajx;->a()Ljava/util/Queue;

    move-result-object v0

    :goto_5f
    iput-object v0, p0, Lajx;->a:Ljava/util/Queue;

    .line 217
    invoke-virtual {p1}, Lajl;->a()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lajx;->a()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 219
    iget v1, p0, Lajx;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_77
    move v1, v2

    move v3, v4

    .line 228
    :goto_79
    iget v5, p0, Lajx;->c:I

    if-ge v1, v5, :cond_94

    invoke-virtual {p0}, Lajx;->a()Z

    move-result v5

    if-eqz v5, :cond_89

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Lajx;->d:I

    if-gt v5, v6, :cond_94

    .line 229
    :cond_89
    add-int/lit8 v3, v3, 0x1

    .line 230
    shl-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 213
    :cond_8e
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_5f

    .line 232
    :cond_94
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lajx;->b:I

    .line 233
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lajx;->a:I

    .line 235
    invoke-virtual {p0, v1}, Lajx;->a(I)[Lakb;

    move-result-object v3

    iput-object v3, p0, Lajx;->a:[Lakb;

    .line 237
    div-int v3, v0, v1

    .line 238
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_e4

    .line 239
    add-int/lit8 v0, v3, 0x1

    .line 243
    :goto_aa
    if-ge v2, v0, :cond_af

    .line 244
    shl-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 247
    :cond_af
    invoke-virtual {p0}, Lajx;->a()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 249
    iget v0, p0, Lajx;->d:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 250
    iget v3, p0, Lajx;->d:I

    rem-int v1, v3, v1

    .line 251
    :goto_be
    iget-object v3, p0, Lajx;->a:[Lakb;

    array-length v3, v3

    if-ge v4, v3, :cond_e3

    .line 252
    if-ne v4, v1, :cond_c7

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 255
    :cond_c7
    iget-object v3, p0, Lajx;->a:[Lakb;

    invoke-virtual {p0, v2, v0}, Lajx;->a(II)Lakb;

    move-result-object v5

    aput-object v5, v3, v4

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    .line 259
    :cond_d2
    :goto_d2
    iget-object v0, p0, Lajx;->a:[Lakb;

    array-length v0, v0

    if-ge v4, v0, :cond_e3

    .line 260
    iget-object v0, p0, Lajx;->a:[Lakb;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Lajx;->a(II)Lakb;

    move-result-object v1

    aput-object v1, v0, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_d2

    .line 264
    :cond_e3
    return-void

    :cond_e4
    move v0, v3

    goto :goto_aa
.end method

.method static a(I)I
    .registers 4
    .parameter

    .prologue
    .line 1863
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1864
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1865
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1866
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1867
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1868
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static a()Laka;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 917
    sget-object v0, LajZ;->a:LajZ;

    return-object v0
.end method

.method static a()Lakr;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 666
    sget-object v0, Lajx;->a:Lakr;

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
    .line 952
    sget-object v0, Lajx;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static a(Laka;Laka;)V
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
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1979
    invoke-interface {p0, p1}, Laka;->a(Laka;)V

    .line 1980
    invoke-interface {p1, p0}, Laka;->b(Laka;)V

    .line 1981
    return-void
.end method

.method static b(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    .line 1986
    invoke-interface {p0, v0}, Laka;->a(Laka;)V

    .line 1987
    invoke-interface {p0, v0}, Laka;->b(Laka;)V

    .line 1988
    return-void
.end method

.method static b(Laka;Laka;)V
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
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2011
    invoke-interface {p0, p1}, Laka;->c(Laka;)V

    .line 2012
    invoke-interface {p1, p0}, Laka;->d(Laka;)V

    .line 2013
    return-void
.end method

.method static c(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2017
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    .line 2018
    invoke-interface {p0, v0}, Laka;->c(Laka;)V

    .line 2019
    invoke-interface {p0, v0}, Laka;->d(Laka;)V

    .line 2020
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1901
    iget-object v0, p0, Lajx;->a:LafD;

    invoke-virtual {v0, p1}, LafD;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1902
    invoke-static {v0}, Lajx;->a(I)I

    move-result v0

    return v0
.end method

.method a(I)Lakb;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1933
    iget-object v0, p0, Lajx;->a:[Lakb;

    iget v1, p0, Lajx;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lajx;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method a(II)Lakb;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lakb;

    invoke-direct {v0, p0, p1, p2}, Lakb;-><init>(Lajx;II)V

    return-object v0
.end method

.method a(Laka;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1946
    invoke-interface {p1}, Laka;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1957
    :cond_7
    :goto_7
    return-object v0

    .line 1949
    :cond_8
    invoke-interface {p1}, Laka;->a()Lakr;

    move-result-object v1

    invoke-interface {v1}, Lakr;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_7

    .line 1954
    invoke-virtual {p0}, Lajx;->b()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, p1}, Lajx;->a(Laka;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1e
    move-object v0, v1

    .line 1957
    goto :goto_7
.end method

.method a()V
    .registers 5

    .prologue
    .line 1999
    :goto_0
    iget-object v0, p0, Lajx;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    if-eqz v0, :cond_1b

    .line 2001
    :try_start_a
    iget-object v1, p0, Lajx;->a:Lajv;

    invoke-interface {v1, v0}, Lajv;->a(Lajw;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_0

    .line 2002
    :catch_10
    move-exception v0

    .line 2003
    sget-object v1, Lajx;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2006
    :cond_1b
    return-void
.end method

.method a(Laka;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1912
    invoke-interface {p1}, Laka;->a()I

    move-result v0

    .line 1913
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lakb;->a(Laka;I)Z

    .line 1914
    return-void
.end method

.method a(Lakr;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1906
    invoke-interface {p1}, Lakr;->a()Laka;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Laka;->a()I

    move-result v1

    .line 1908
    invoke-virtual {p0, v1}, Lajx;->a(I)Lakb;

    move-result-object v2

    invoke-interface {v0}, Laka;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lakb;->a(Ljava/lang/Object;ILakr;)Z

    .line 1909
    return-void
.end method

.method a()Z
    .registers 3

    .prologue
    .line 267
    iget v0, p0, Lajx;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method a(Laka;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1966
    iget-object v0, p0, Lajx;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lajx;->a(Laka;J)Z

    move-result v0

    return v0
.end method

.method a(Laka;J)Z
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1974
    invoke-interface {p1}, Laka;->a()J

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

.method final a(I)[Lakb;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2024
    new-array v0, p1, [Lakb;

    return-object v0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lajx;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lajx;->d()Z

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

.method c()Z
    .registers 5

    .prologue
    .line 275
    iget-wide v0, p0, Lajx;->b:J

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
    .line 3615
    iget-object v1, p0, Lajx;->a:[Lakb;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 3616
    invoke-virtual {v3}, Lakb;->l()V

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3618
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3507
    if-nez p1, :cond_4

    .line 3508
    const/4 v0, 0x0

    .line 3511
    :goto_3
    return v0

    .line 3510
    :cond_4
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3511
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lakb;->a(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 16
    .parameter

    .prologue
    .line 3516
    if-nez p1, :cond_4

    .line 3517
    const/4 v0, 0x0

    .line 3550
    :goto_3
    return v0

    .line 3525
    :cond_4
    iget-object v8, p0, Lajx;->a:[Lakb;

    .line 3526
    const-wide/16 v3, -0x1

    .line 3527
    const/4 v0, 0x0

    move v5, v0

    move-wide v6, v3

    :goto_b
    const/4 v0, 0x3

    if-ge v5, v0, :cond_51

    .line 3528
    const-wide/16 v1, 0x0

    .line 3529
    array-length v9, v8

    const/4 v0, 0x0

    move-wide v3, v1

    move v2, v0

    :goto_14
    if-ge v2, v9, :cond_4d

    aget-object v10, v8, v2

    .line 3532
    iget v0, v10, Lakb;->a:I

    .line 3534
    iget-object v11, v10, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3535
    const/4 v0, 0x0

    move v1, v0

    :goto_1e
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 3536
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    :goto_2a
    if-eqz v0, :cond_41

    .line 3537
    invoke-virtual {v10, v0}, Lakb;->a(Laka;)Ljava/lang/Object;

    move-result-object v12

    .line 3538
    if-eqz v12, :cond_3c

    iget-object v13, p0, Lajx;->b:LafD;

    invoke-virtual {v13, p1, v12}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3c

    .line 3539
    const/4 v0, 0x1

    goto :goto_3

    .line 3536
    :cond_3c
    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v0

    goto :goto_2a

    .line 3535
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 3543
    :cond_45
    iget v0, v10, Lakb;->b:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 3529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 3545
    :cond_4d
    cmp-long v0, v3, v6

    if-nez v0, :cond_53

    .line 3550
    :cond_51
    const/4 v0, 0x0

    goto :goto_3

    .line 3527
    :cond_53
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v6, v3

    goto :goto_b
.end method

.method d()Z
    .registers 5

    .prologue
    .line 279
    iget-wide v0, p0, Lajx;->a:J

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
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lajx;->a:Lakh;

    sget-object v1, Lakh;->a:Lakh;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 3640
    iget-object v0, p0, Lajx;->b:Ljava/util/Set;

    .line 3641
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LajP;

    invoke-direct {v0, p0}, LajP;-><init>(Lajx;)V

    iput-object v0, p0, Lajx;->b:Ljava/util/Set;

    goto :goto_4
.end method

.method f()Z
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lajx;->b:Lakh;

    sget-object v1, Lakh;->a:Lakh;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 3475
    if-nez p1, :cond_4

    .line 3476
    const/4 v0, 0x0

    .line 3479
    :goto_3
    return-object v0

    .line 3478
    :cond_4
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3479
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lakb;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public isEmpty()Z
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3440
    .line 3441
    iget-object v6, p0, Lajx;->a:[Lakb;

    move v0, v1

    move-wide v2, v4

    .line 3442
    :goto_7
    array-length v7, v6

    if-ge v0, v7, :cond_1a

    .line 3443
    aget-object v7, v6, v0

    iget v7, v7, Lakb;->a:I

    if-eqz v7, :cond_11

    .line 3460
    :cond_10
    :goto_10
    return v1

    .line 3446
    :cond_11
    aget-object v7, v6, v0

    iget v7, v7, Lakb;->b:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3449
    :cond_1a
    cmp-long v0, v2, v4

    if-eqz v0, :cond_35

    move v0, v1

    .line 3450
    :goto_1f
    array-length v7, v6

    if-ge v0, v7, :cond_31

    .line 3451
    aget-object v7, v6, v0

    iget v7, v7, Lakb;->a:I

    if-nez v7, :cond_10

    .line 3454
    aget-object v7, v6, v0

    iget v7, v7, Lakb;->b:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3450
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 3456
    :cond_31
    cmp-long v0, v2, v4

    if-nez v0, :cond_10

    .line 3460
    :cond_35
    const/4 v1, 0x1

    goto :goto_10
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
    .line 3624
    iget-object v0, p0, Lajx;->a:Ljava/util/Set;

    .line 3625
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, LajY;

    invoke-direct {v0, p0}, LajY;-><init>(Lajx;)V

    iput-object v0, p0, Lajx;->a:Ljava/util/Set;

    goto :goto_4
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
    .line 3555
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3557
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3558
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3571
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

    .line 3572
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lajx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3574
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
    .line 3563
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3564
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3565
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3566
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3578
    if-nez p1, :cond_4

    .line 3579
    const/4 v0, 0x0

    .line 3582
    :goto_3
    return-object v0

    .line 3581
    :cond_4
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3582
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lakb;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3587
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 3588
    :cond_4
    const/4 v0, 0x0

    .line 3591
    :goto_5
    return v0

    .line 3590
    :cond_6
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3591
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;)Z

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
    .line 3607
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3609
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3610
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 3596
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3597
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3598
    if-nez p2, :cond_a

    .line 3599
    const/4 v0, 0x0

    .line 3602
    :goto_9
    return v0

    .line 3601
    :cond_a
    invoke-virtual {p0, p1}, Lajx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3602
    invoke-virtual {p0, v0}, Lajx;->a(I)Lakb;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method public size()I
    .registers 7

    .prologue
    .line 3465
    iget-object v3, p0, Lajx;->a:[Lakb;

    .line 3466
    const-wide/16 v1, 0x0

    .line 3467
    const/4 v0, 0x0

    :goto_5
    array-length v4, v3

    if-ge v0, v4, :cond_11

    .line 3468
    aget-object v4, v3, v0

    iget v4, v4, Lakb;->a:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3467
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3470
    :cond_11
    invoke-static {v1, v2}, LalA;->a(J)I

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
    .line 3632
    iget-object v0, p0, Lajx;->a:Ljava/util/Collection;

    .line 3633
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Lajx;)V

    iput-object v0, p0, Lajx;->a:Ljava/util/Collection;

    goto :goto_4
.end method
