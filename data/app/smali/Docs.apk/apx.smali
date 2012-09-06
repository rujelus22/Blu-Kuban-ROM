.class public final Lapx;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lanz;


# instance fields
.field private final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<*>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "delegate"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lapx;->a:Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lapx;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v0

    iput-object v0, p0, Lapx;->a:LanP;

    .line 53
    return-void
.end method

.method public static a(Lanz;)Lanz;
    .registers 2
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Lapx;->a(Ljava/lang/Object;)Lanz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lanz;
    .registers 2
    .parameter

    .prologue
    .line 68
    instance-of v0, p0, Lapx;

    if-eqz v0, :cond_7

    .line 69
    sget-object v0, LaqV;->a:Lanz;

    .line 72
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Lapx;

    invoke-direct {v0, p0}, Lapx;-><init>(Ljava/lang/Object;)V

    goto :goto_6
.end method


# virtual methods
.method a(Laoy;LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lant;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laoy;",
            "LanP",
            "<TT;>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1, p3, p4}, LanY;->a(Laoy;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 132
    if-nez v0, :cond_b

    invoke-static {p2}, Lant;->a(LanP;)Lant;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p2, v0}, Lant;->a(LanP;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    goto :goto_a
.end method

.method a(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lapw;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lapw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1, p2}, Lcom/google/inject/Binder;->a(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v2

    .line 94
    new-instance v3, Laoy;

    invoke-direct {v3, p2}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 98
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 99
    iget-object v0, p0, Lapx;->a:LanP;

    invoke-virtual {v0, p2}, LanP;->a(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v6

    .line 100
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_63

    .line 102
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanP;

    aget-object v8, v7, v1

    invoke-virtual {p0, v3, v0, p2, v8}, Lapx;->a(Laoy;LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    .line 103
    const-class v8, Ljava/util/logging/Logger;

    invoke-static {v8}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v8

    invoke-virtual {v0, v8}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 107
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {}, LapR;->a()Ljava/lang/annotation/Annotation;

    move-result-object v8

    invoke-static {v0, v8}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v0

    .line 108
    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->a(Lant;)LanU;

    move-result-object v8

    new-instance v9, Lapy;

    invoke-direct {v9, p2}, Lapy;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v8, v9}, LanU;->a(LanD;)LanV;

    .line 111
    :cond_51
    invoke-static {v0}, Laqk;->a(Lant;)Laqk;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->a(Lant;)LanD;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 116
    :cond_63
    iget-object v0, p0, Lapx;->a:LanP;

    invoke-virtual {v0, p2}, LanP;->a(Ljava/lang/reflect/Method;)LanP;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v3, v0, p2, v1}, Lapx;->a(Laoy;LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v1

    .line 119
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v3, v0}, LanY;->a(Laoy;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v6

    .line 122
    invoke-virtual {v3}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_81
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaqF;

    .line 123
    invoke-interface {v2, v0}, Lcom/google/inject/Binder;->a(LaqF;)V

    goto :goto_81

    .line 126
    :cond_91
    new-instance v0, Lapw;

    iget-object v3, p0, Lapx;->a:Ljava/lang/Object;

    invoke-static {v4}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v4

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lapw;-><init>(Lant;Ljava/lang/reflect/Method;Ljava/lang/Object;LaiE;Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Lcom/google/inject/Binder;)Ljava/util/List;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lapw",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 82
    iget-object v0, p0, Lapx;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_a
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_2f

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v4, :cond_2a

    aget-object v5, v3, v1

    .line 84
    const-class v6, LanE;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 85
    invoke-virtual {p0, p1, v5}, Lapx;->a(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lapw;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 82
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 89
    :cond_2f
    return-object v2
.end method

.method public declared-synchronized a(Lcom/google/inject/Binder;)V
    .registers 4
    .parameter

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lapx;->a(Lcom/google/inject/Binder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapw;

    .line 76
    invoke-virtual {v0, p1}, Lapw;->a(Lcom/google/inject/Binder;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 75
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 136
    instance-of v0, p1, Lapx;

    if-eqz v0, :cond_e

    check-cast p1, Lapx;

    iget-object v0, p1, Lapx;->a:Ljava/lang/Object;

    iget-object v1, p0, Lapx;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lapx;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
