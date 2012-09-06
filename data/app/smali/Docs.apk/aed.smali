.class public final Laed;
.super Ljava/lang/Object;
.source "ArrayValueMap.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laee;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Laee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, LadZ;->a()LadZ;

    move-result-object v0

    iput-object v0, p0, Laed;->a:Ljava/util/Map;

    .line 85
    invoke-static {}, LadZ;->a()LadZ;

    move-result-object v0

    iput-object v0, p0, Laed;->b:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Laed;->a:Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Laed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    iget-object v1, p0, Laed;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 106
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laee;

    invoke-virtual {v0}, Laee;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 108
    :cond_2c
    iget-object v0, p0, Laed;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    iget-object v3, p0, Laed;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laee;

    invoke-virtual {v0}, Laee;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Laen;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    .line 111
    :cond_58
    return-void
.end method

.method public a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Laed;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laee;

    .line 123
    if-nez v0, :cond_14

    .line 124
    new-instance v0, Laee;

    invoke-direct {v0, p2}, Laee;-><init>(Ljava/lang/Class;)V

    .line 125
    iget-object v1, p0, Laed;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_14
    invoke-virtual {v0, p2, p3}, Laee;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 128
    return-void
.end method
