.class public LaD/i;
.super Ljava/lang/Object;


# static fields
.field static final a:Lah/f;


# instance fields
.field final b:Ljava/util/EnumMap;

.field final c:Ljava/util/concurrent/ConcurrentMap;

.field private final d:Ljava/util/Set;

.field private final e:Lay/r;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/bw;->a(ZI)Lah/f;

    move-result-object v0

    sget v5, Lcom/google/googlenav/ui/bw;->bG:I

    invoke-interface {v0}, Lah/f;->a()I

    move-result v3

    invoke-interface {v0}, Lah/f;->b()I

    move-result v4

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lah/j;->a(Lah/f;IIIIIII)Lah/f;

    move-result-object v0

    sput-object v0, LaD/i;->a:Lah/f;

    return-void
.end method

.method public constructor <init>(Lay/r;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/i;->e:Lay/r;

    invoke-static {}, LK/cb;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, LaD/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LaD/i;->d:Ljava/util/Set;

    const-class v0, LaD/h;

    invoke-static {v0}, LK/cb;->a(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, LaD/i;->b:Ljava/util/EnumMap;

    invoke-static {}, LaD/h;->values()[LaD/h;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    iget-object v4, p0, LaD/i;->b:Ljava/util/EnumMap;

    invoke-static {v3}, LaD/d;->a(LaD/h;)LaD/d;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    return-void
.end method

.method static synthetic c(LaD/m;)Lcom/google/googlenav/ui/bG;
    .registers 2

    invoke-static {p0}, LaD/i;->d(LaD/m;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    return-object v0
.end method

.method private static d(LaD/m;)Lcom/google/googlenav/ui/bG;
    .registers 4

    if-eqz p0, :cond_c

    invoke-virtual {p0}, LaD/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/googlenav/ui/bG;

    invoke-virtual {p0}, LaD/m;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bw;->bG:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    goto :goto_d
.end method


# virtual methods
.method public a(LaD/h;)LaD/d;
    .registers 3

    iget-object v0, p0, LaD/i;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/d;

    return-object v0
.end method

.method public a()LaD/j;
    .registers 4

    new-instance v0, LaD/j;

    iget-object v1, p0, LaD/i;->e:Lay/r;

    iget-object v2, p0, LaD/i;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, LaD/j;-><init>(Lay/r;Ljava/util/Set;)V

    return-object v0
.end method

.method public a(J)LaD/m;
    .registers 5

    iget-object v0, p0, LaD/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/m;

    return-object v0
.end method

.method public a(LaD/m;)V
    .registers 5

    iget-object v0, p0, LaD/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, LaD/m;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6

    invoke-virtual {p0}, LaD/i;->a()LaD/j;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/m;

    invoke-virtual {p0, v0}, LaD/i;->b(LaD/m;)Lah/f;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-virtual {v1, v0}, LaD/j;->a(LaD/m;)V

    goto :goto_8

    :cond_1e
    invoke-virtual {v1}, LaD/j;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/m;

    invoke-virtual {p0, v0}, LaD/i;->b(LaD/m;)Lah/f;

    move-result-object v2

    invoke-virtual {v0, v2}, LaD/m;->a(Lah/f;)V

    goto :goto_25

    :cond_39
    return-void
.end method

.method public b(LaD/m;)Lah/f;
    .registers 4

    invoke-static {p1}, LaD/i;->d(LaD/m;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, LaD/i;->e:Lay/r;

    invoke-virtual {v1, v0}, Lay/r;->a(Lcom/google/googlenav/ui/bG;)Lah/f;

    move-result-object v0

    goto :goto_7
.end method
