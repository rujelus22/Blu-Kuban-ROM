.class public Lah/a;
.super Ljava/lang/Object;

# interfaces
.implements Lah/g;


# instance fields
.field private final a:[Lah/g;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lah/g;Lah/g;)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lah/g;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0}, Lah/a;-><init>([Lah/g;)V

    return-void
.end method

.method public constructor <init>([Lah/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lah/a;->b:Ljava/util/Map;

    iput-object p1, p0, Lah/a;->a:[Lah/g;

    invoke-direct {p0}, Lah/a;->b()V

    return-void
.end method

.method private b()V
    .registers 1

    return-void
.end method

.method private f(C)Lah/g;
    .registers 5

    iget-object v0, p0, Lah/a;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lah/g;

    if-nez v0, :cond_2d

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lah/a;->a:[Lah/g;

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    iget-object v2, p0, Lah/a;->a:[Lah/g;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lah/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v0, p0, Lah/a;->a:[Lah/g;

    aget-object v0, v0, v1

    iget-object v1, p0, Lah/a;->b:Ljava/util/Map;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return-object v0

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lah/a;->a:[Lah/g;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lah/a;->a:[Lah/g;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lah/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(C)Z
    .registers 3

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(CLah/e;II)Z
    .registers 6

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3, p4}, Lah/g;->a(CLah/e;II)Z

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(C)I
    .registers 4

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lah/g;->b(C)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lah/a;->a:[Lah/g;

    iget-object v1, p0, Lah/a;->a:[Lah/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lah/g;->b(C)I

    move-result v0

    goto :goto_a
.end method

.method public c(C)I
    .registers 4

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lah/g;->c(C)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lah/a;->a:[Lah/g;

    iget-object v1, p0, Lah/a;->a:[Lah/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lah/g;->c(C)I

    move-result v0

    goto :goto_a
.end method

.method public d(C)I
    .registers 4

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lah/g;->d(C)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lah/a;->a:[Lah/g;

    iget-object v1, p0, Lah/a;->a:[Lah/g;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lah/g;->d(C)I

    move-result v0

    goto :goto_a
.end method

.method public e(C)Lah/f;
    .registers 3

    invoke-direct {p0, p1}, Lah/a;->f(C)Lah/g;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lah/g;->e(C)Lah/f;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()Lar/k;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lah/a;->a:[Lah/g;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    iget-object v2, p0, Lah/a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    new-instance v1, Lar/k;

    const-string v3, "CompositeIconProvider"

    invoke-direct {v1, v3, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    :goto_17
    iget-object v2, p0, Lah/a;->a:[Lah/g;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lah/a;->a:[Lah/g;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lah/g;->g()Lar/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2b
    return-object v1
.end method
