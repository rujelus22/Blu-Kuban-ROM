.class public final LC/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LC/l;

.field private final b:LC/u;

.field private final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method constructor <init>(LC/l;LC/u;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LC/q;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/l;

    iput-object v0, p0, LC/q;->a:LC/l;

    .line 62
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/u;

    iput-object v0, p0, LC/q;->b:LC/u;

    .line 63
    invoke-direct {p0}, LC/q;->e()V

    .line 64
    return-void
.end method

.method public constructor <init>(LC/u;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    new-instance v0, LC/m;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LC/m;-><init>(LC/u;Z)V

    invoke-direct {p0, v0, p1}, LC/q;-><init>(LC/l;LC/u;)V

    .line 50
    return-void
.end method

.method static synthetic a(LC/q;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LC/q;->c:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, LC/q;->a:LC/l;

    invoke-interface {v0}, LC/l;->a()LF/i;

    move-result-object v0

    new-instance v1, LC/s;

    invoke-direct {v1, p0}, LC/s;-><init>(LC/q;)V

    invoke-interface {v0, v1}, LF/i;->b(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, LC/q;->a:LC/l;

    invoke-interface {v0}, LC/l;->a()LF/i;

    move-result-object v0

    new-instance v1, LC/t;

    invoke-direct {v1, p0}, LC/t;-><init>(LC/q;)V

    invoke-interface {v0, v1}, LF/i;->b(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    .line 185
    iget-object v0, p0, LC/q;->b:LC/u;

    invoke-interface {v0}, LC/u;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v2, p0, LC/q;->b:LC/u;

    iget-object v3, p0, LC/q;->a:LC/l;

    invoke-interface {v2, v0, v3}, LC/u;->a(Ljava/lang/String;LC/l;)LC/b;

    move-result-object v2

    .line 188
    iget-object v3, p0, LC/q;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, LC/q;->b:LC/u;

    invoke-interface {v3, v0}, LC/u;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    iget-object v4, p0, LC/q;->a:LC/l;

    invoke-interface {v4, v0, v2}, LC/l;->a(Ljava/lang/String;LC/T;)V

    goto :goto_2d

    .line 193
    :cond_3f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, LC/q;->c()V

    .line 88
    iget-object v0, p0, LC/q;->a:LC/l;

    invoke-interface {v0}, LC/l;->a()LF/i;

    move-result-object v0

    new-instance v1, LC/r;

    invoke-direct {v1, p0}, LC/r;-><init>(LC/q;)V

    invoke-interface {v0, v1}, LF/i;->b(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public a(LC/T;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, LC/q;->a:LC/l;

    const-string v1, "integrated_location_provider"

    invoke-interface {v0, v1, p1}, LC/l;->a(Ljava/lang/String;LC/T;)V

    .line 73
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LC/q;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/b;

    .line 180
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, LC/b;->e()Z

    move-result v0

    goto :goto_b
.end method

.method a(Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, LC/q;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/b;

    .line 159
    if-nez v0, :cond_c

    .line 160
    const/4 v0, 0x0

    .line 167
    :goto_b
    return v0

    .line 162
    :cond_c
    if-eqz p2, :cond_13

    .line 163
    invoke-virtual {v0}, LC/b;->b()V

    .line 167
    :goto_11
    const/4 v0, 0x1

    goto :goto_b

    .line 165
    :cond_13
    invoke-virtual {v0}, LC/b;->d()V

    goto :goto_11
.end method

.method public b()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, LC/q;->d()V

    .line 109
    iget-object v0, p0, LC/q;->a:LC/l;

    invoke-interface {v0}, LC/l;->b()V

    .line 110
    return-void
.end method
