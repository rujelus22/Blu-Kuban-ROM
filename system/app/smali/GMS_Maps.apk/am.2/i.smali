.class public Lam/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:LS/f;


# instance fields
.field final b:Ljava/util/EnumMap;

.field final c:Ljava/util/concurrent/ConcurrentMap;

.field private final d:Ljava/util/Set;

.field private final e:Lah/s;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v0

    .line 46
    sget v5, Lcom/google/googlenav/ui/bn;->bF:I

    .line 47
    invoke-interface {v0}, LS/f;->a()I

    move-result v3

    invoke-interface {v0}, LS/f;->b()I

    move-result v4

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, LS/j;->a(LS/f;IIIIIII)LS/f;

    move-result-object v0

    sput-object v0, Lam/i;->a:LS/f;

    .line 50
    return-void
.end method

.method public constructor <init>(Lah/s;)V
    .registers 8
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lam/i;->e:Lah/s;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Maps;->c()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lam/i;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 71
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lam/i;->d:Ljava/util/Set;

    .line 73
    const-class v0, Lam/h;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lam/i;->b:Ljava/util/EnumMap;

    .line 74
    invoke-static {}, Lam/h;->values()[Lam/h;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_33

    aget-object v3, v1, v0

    .line 75
    iget-object v4, p0, Lam/i;->b:Ljava/util/EnumMap;

    invoke-static {v3}, Lam/d;->a(Lam/h;)Lam/d;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 77
    :cond_33
    return-void
.end method

.method static synthetic c(Lam/m;)Lcom/google/googlenav/ui/bx;
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lam/i;->d(Lam/m;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lam/m;)Lcom/google/googlenav/ui/bx;
    .registers 4
    .parameter

    .prologue
    .line 131
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lam/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 132
    :cond_c
    const/4 v0, 0x0

    .line 134
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0}, Lam/m;->c()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bn;->bF:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    goto :goto_d
.end method


# virtual methods
.method public a(Lam/h;)Lam/d;
    .registers 3
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lam/i;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/d;

    return-object v0
.end method

.method public a()Lam/j;
    .registers 4

    .prologue
    .line 102
    new-instance v0, Lam/j;

    iget-object v1, p0, Lam/i;->e:Lah/s;

    iget-object v2, p0, Lam/i;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lam/j;-><init>(Lah/s;Ljava/util/Set;)V

    return-object v0
.end method

.method public a(J)Lam/m;
    .registers 5
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lam/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/m;

    return-object v0
.end method

.method public a(Lam/m;)V
    .registers 5
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lam/i;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lam/m;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lam/i;->a()Lam/j;

    move-result-object v1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/m;

    .line 108
    invoke-virtual {p0, v0}, Lam/i;->b(Lam/m;)LS/f;

    move-result-object v3

    if-nez v3, :cond_8

    .line 109
    invoke-virtual {v1, v0}, Lam/j;->a(Lam/m;)V

    goto :goto_8

    .line 112
    :cond_1e
    invoke-virtual {v1}, Lam/j;->a()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/m;

    .line 114
    invoke-virtual {p0, v0}, Lam/i;->b(Lam/m;)LS/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lam/m;->a(LS/f;)V

    goto :goto_25

    .line 116
    :cond_39
    return-void
.end method

.method public b(Lam/m;)LS/f;
    .registers 4
    .parameter

    .prologue
    .line 123
    invoke-static {p1}, Lam/i;->d(Lam/m;)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lam/i;->e:Lah/s;

    invoke-virtual {v1, v0}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    goto :goto_7
.end method
