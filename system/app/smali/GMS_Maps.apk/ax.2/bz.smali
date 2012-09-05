.class public Lax/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lam/b;

.field private c:J

.field private d:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lam/b;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/bz;->b:Lam/b;

    iget-object v0, p0, Lax/bz;->b:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v0

    iput v0, p0, Lax/bz;->d:I

    iput-wide p2, p0, Lax/bz;->c:J

    invoke-static {p1, p0}, Lax/bz;->a(Lam/b;Lax/bz;)V

    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lax/bz;
    .registers 5

    sget-object v0, LbD/Z;->y:Lam/e;

    invoke-static {v0, p0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    new-instance v1, Lax/bz;

    invoke-direct {v1}, Lax/bz;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lam/b;->e(I)J

    move-result-wide v2

    iput-wide v2, v1, Lax/bz;->c:J

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->d(I)I

    move-result v2

    iput v2, v1, Lax/bz;->d:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, v1, Lax/bz;->b:Lam/b;

    iget-object v0, v1, Lax/bz;->b:Lam/b;

    invoke-static {v0, v1}, Lax/bz;->a(Lam/b;Lax/bz;)V

    return-object v1
.end method

.method static synthetic a(Lax/bz;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lax/bz;->a:Ljava/util/List;

    return-object v0
.end method

.method private static a(Lam/b;Lax/bz;)V
    .registers 8

    const/4 v5, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lax/bz;->a:Ljava/util/List;

    invoke-virtual {p0, v5}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_20

    invoke-virtual {p0, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p1, Lax/bz;->a:Ljava/util/List;

    new-instance v4, Lax/by;

    invoke-direct {v4, v2}, Lax/by;-><init>(Lam/b;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_20
    return-void
.end method

.method static synthetic b(Lax/bz;)Lam/b;
    .registers 2

    iget-object v0, p0, Lax/bz;->b:Lam/b;

    return-object v0
.end method


# virtual methods
.method a(I)V
    .registers 4

    iget-object v0, p0, Lax/bz;->b:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->g(II)V

    iget-object v0, p0, Lax/bz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public a(Lax/aS;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lax/bz;->b()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_1f

    invoke-virtual {p0, v1}, Lax/bz;->b(I)Lax/by;

    move-result-object v2

    invoke-virtual {v2}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lax/aS;->a(Ljava/lang/Long;)Lax/aP;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0, v1}, Lax/bz;->a(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/bz;->b()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_18

    invoke-virtual {p0, v0}, Lax/bz;->b(I)Lax/by;

    move-result-object v2

    invoke-virtual {v2}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0, v0}, Lax/bz;->a(I)V

    :cond_18
    return-void

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a()Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lax/bz;->c:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-lez v0, :cond_25

    move v0, v1

    :goto_19
    invoke-virtual {p0}, Lax/bz;->b()I

    move-result v3

    iget v4, p0, Lax/bz;->d:I

    if-ne v3, v4, :cond_23

    if-eqz v0, :cond_24

    :cond_23
    move v2, v1

    :cond_24
    return v2

    :cond_25
    move v0, v2

    goto :goto_19
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lax/bz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lax/by;
    .registers 3

    iget-object v0, p0, Lax/bz;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/by;

    return-object v0
.end method

.method public c()Lam/b;
    .registers 5

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->y:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lax/bz;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    const/4 v1, 0x2

    iget v2, p0, Lax/bz;->d:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x3

    iget-object v2, p0, Lax/bz;->b:Lam/b;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Lax/bA;

    invoke-direct {v0, p0}, Lax/bA;-><init>(Lax/bz;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lax/bz;->b()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_51

    invoke-virtual {p0, v0}, Lax/bz;->b(I)Lax/by;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lax/by;->a()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lax/by;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lax/by;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lax/by;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_4e

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
