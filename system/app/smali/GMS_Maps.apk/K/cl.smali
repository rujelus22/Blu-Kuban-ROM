.class final LK/cl;
.super LK/bp;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:[LK/co;

.field private final transient b:[LK/co;

.field private final transient c:I

.field private final transient d:I

.field private transient e:LK/bu;

.field private transient f:LK/bu;

.field private transient g:LK/bi;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, LK/bp;-><init>()V

    array-length v6, p1

    invoke-direct {p0, v6}, LK/cl;->b(I)[LK/co;

    move-result-object v0

    iput-object v0, p0, LK/cl;->a:[LK/co;

    invoke-static {v6}, LK/cl;->a(I)I

    move-result v0

    invoke-direct {p0, v0}, LK/cl;->b(I)[LK/co;

    move-result-object v3

    iput-object v3, p0, LK/cl;->b:[LK/co;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LK/cl;->c:I

    move v4, v2

    move v0, v2

    :goto_1c
    if-ge v4, v6, :cond_69

    aget-object v3, p1, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int v5, v0, v8

    invoke-static {v8}, LK/bg;->a(I)I

    move-result v0

    iget v8, p0, LK/cl;->c:I

    and-int/2addr v8, v0

    iget-object v0, p0, LK/cl;->b:[LK/co;

    aget-object v0, v0, v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3, v0}, LK/cl;->a(Ljava/lang/Object;Ljava/lang/Object;LK/co;)LK/co;

    move-result-object v3

    iget-object v9, p0, LK/cl;->b:[LK/co;

    aput-object v3, v9, v8

    iget-object v8, p0, LK/cl;->a:[LK/co;

    aput-object v3, v8, v4

    move-object v3, v0

    :goto_46
    if-eqz v3, :cond_64

    invoke-interface {v3}, LK/co;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    move v0, v1

    :goto_53
    const-string v8, "duplicate key: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-static {v0, v8, v9}, Lcom/google/common/base/v;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, LK/co;->a()LK/co;

    move-result-object v0

    move-object v3, v0

    goto :goto_46

    :cond_62
    move v0, v2

    goto :goto_53

    :cond_64
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v5

    goto :goto_1c

    :cond_69
    iput v0, p0, LK/cl;->d:I

    return-void
.end method

.method private static a(I)I
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    if-lez v3, :cond_19

    move v0, v1

    :goto_b
    const-string v4, "table too large: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/v;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_19
    move v0, v2

    goto :goto_b
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;LK/co;)LK/co;
    .registers 4

    if-nez p2, :cond_8

    new-instance v0, LK/cq;

    invoke-direct {v0, p0, p1}, LK/cq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, LK/cp;

    invoke-direct {v0, p0, p1, p2}, LK/cp;-><init>(Ljava/lang/Object;Ljava/lang/Object;LK/co;)V

    goto :goto_7
.end method

.method static synthetic a(LK/cl;)[LK/co;
    .registers 2

    iget-object v0, p0, LK/cl;->a:[LK/co;

    return-object v0
.end method

.method static synthetic b(LK/cl;)I
    .registers 2

    iget v0, p0, LK/cl;->d:I

    return v0
.end method

.method private b(I)[LK/co;
    .registers 3

    new-array v0, p1, [LK/co;

    return-object v0
.end method


# virtual methods
.method public a()LK/bu;
    .registers 2

    iget-object v0, p0, LK/cl;->e:LK/bu;

    if-nez v0, :cond_b

    new-instance v0, LK/cm;

    invoke-direct {v0, p0}, LK/cm;-><init>(LK/cl;)V

    iput-object v0, p0, LK/cl;->e:LK/bu;

    :cond_b
    return-object v0
.end method

.method public b()LK/bu;
    .registers 2

    iget-object v0, p0, LK/cl;->f:LK/bu;

    if-nez v0, :cond_b

    new-instance v0, LK/cn;

    invoke-direct {v0, p0}, LK/cn;-><init>(LK/cl;)V

    iput-object v0, p0, LK/cl;->f:LK/bu;

    :cond_b
    return-object v0
.end method

.method public c()LK/bi;
    .registers 2

    iget-object v0, p0, LK/cl;->g:LK/bi;

    if-nez v0, :cond_b

    new-instance v0, LK/cr;

    invoke-direct {v0, p0}, LK/cr;-><init>(LK/cl;)V

    iput-object v0, p0, LK/cl;->g:LK/bi;

    :cond_b
    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    iget-object v2, p0, LK/cl;->a:[LK/co;

    array-length v3, v2

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v0, 0x1

    goto :goto_3

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/cl;->a()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, LK/bg;->a(I)I

    move-result v1

    iget v2, p0, LK/cl;->c:I

    and-int/2addr v1, v2

    iget-object v2, p0, LK/cl;->b:[LK/co;

    aget-object v1, v2, v1

    :goto_13
    if-eqz v1, :cond_3

    invoke-interface {v1}, LK/co;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, LK/co;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_24
    invoke-interface {v1}, LK/co;->a()LK/co;

    move-result-object v1

    goto :goto_13
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/cl;->b()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/cl;->a:[LK/co;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, LK/cl;->size()I

    move-result v0

    invoke-static {v0}, LK/J;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LK/J;->a:Lcom/google/common/base/p;

    iget-object v2, p0, LK/cl;->a:[LK/co;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/p;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/cl;->c()LK/bi;

    move-result-object v0

    return-object v0
.end method
