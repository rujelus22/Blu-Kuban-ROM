.class public final enum Lcom/google/googlenav/aM;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/aM;

.field private static final synthetic d:[Lcom/google/googlenav/aM;


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;

.field private final c:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/googlenav/aM;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/aM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/googlenav/aM;->a:Lcom/google/googlenav/aM;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/aM;

    sget-object v1, Lcom/google/googlenav/aM;->a:Lcom/google/googlenav/aM;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/googlenav/aM;->d:[Lcom/google/googlenav/aM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    new-instance v0, Lcom/google/common/collect/cF;

    invoke-direct {v0}, Lcom/google/common/collect/cF;-><init>()V

    const-wide/16 v1, 0x2a30

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/cF;->a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/cF;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/google/common/collect/cF;->a(I)Lcom/google/common/collect/cF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cF;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aM;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 48
    new-instance v0, Lcom/google/googlenav/aN;

    invoke-direct {v0, p0}, Lcom/google/googlenav/aN;-><init>(Lcom/google/googlenav/aM;)V

    iput-object v0, p0, Lcom/google/googlenav/aM;->c:Ljava/util/Comparator;

    .line 54
    return-void
.end method

.method public static a()Lcom/google/googlenav/aM;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/googlenav/aM;->a:Lcom/google/googlenav/aM;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/aM;
    .registers 2
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/googlenav/aM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aM;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/aM;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/googlenav/aM;->d:[Lcom/google/googlenav/aM;

    invoke-virtual {v0}, [Lcom/google/googlenav/aM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/aM;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/a;)V
    .registers 4
    .parameter

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 71
    iget-object v1, p0, Lcom/google/googlenav/aM;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_12
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/aM;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_b
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)Z
    .registers 4
    .parameter

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/google/googlenav/aM;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public b()Ljava/util/List;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/aM;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/googlenav/aM;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-object v0
.end method
