.class final LWG;
.super Ljava/lang/Object;
.source "GellyInjector.java"

# interfaces
.implements Lans;


# static fields
.field private static final a:Lany;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lany",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "LWZ",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lany",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "LanG;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "Lang",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, LWH;

    invoke-direct {v0}, LWH;-><init>()V

    sput-object v0, LWG;->a:Lany;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "LWZ",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lany",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "LanG;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "Lang",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, LaiC;->a(Ljava/util/Map;)LaiC;

    move-result-object v0

    iput-object v0, p0, LWG;->a:Ljava/util/Map;

    .line 55
    invoke-static {p2}, LaiC;->a(Ljava/util/Map;)LaiC;

    move-result-object v0

    iput-object v0, p0, LWG;->b:Ljava/util/Map;

    .line 56
    invoke-static {p3}, LaiC;->a(Ljava/util/Map;)LaiC;

    move-result-object v0

    iput-object v0, p0, LWG;->c:Ljava/util/Map;

    .line 57
    invoke-static {p4}, LaiC;->a(Ljava/util/Map;)LaiC;

    move-result-object v0

    iput-object v0, p0, LWG;->d:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lant;)LanD;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, LWG;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    .line 69
    if-nez v0, :cond_2c

    .line 70
    new-instance v0, LaqF;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find a provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LaqF;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lani;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v1

    .line 73
    :cond_2c
    return-object v0
.end method

.method public a(LanP;)Lany;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "Lany",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LWG;->a(Ljava/lang/Class;)Lany;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lany;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lany",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, LWG;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lany;

    .line 112
    if-nez v0, :cond_c

    .line 113
    sget-object v0, LWG;->a:Lany;

    .line 115
    :cond_c
    return-object v0
.end method

.method public final a(Lant;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, LXe;->a(Lant;)Lant;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_b

    .line 87
    invoke-virtual {p0, v0}, LWG;->a(Lant;)LanD;

    move-result-object v0

    .line 90
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0, p1}, LWG;->a(Lant;)LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, LWG;->a(Lant;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LWG;->a(Ljava/lang/Class;)Lany;

    move-result-object v0

    .line 99
    invoke-interface {v0, p1}, Lany;->a(Ljava/lang/Object;)V

    .line 100
    return-void
.end method
