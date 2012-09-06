.class public Laeo;
.super Ljava/util/AbstractMap;
.source "GenericData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field final a:Laef;

.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    const-class v0, Laer;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Laeo;-><init>(Ljava/util/EnumSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Laer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 50
    invoke-static {}, LadZ;->a()LadZ;

    move-result-object v0

    iput-object v0, p0, Laeo;->a:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Laer;->a:Laer;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Laef;->a(Ljava/lang/Class;Z)Laef;

    move-result-object v0

    iput-object v0, p0, Laeo;->a:Laef;

    .line 80
    return-void
.end method


# virtual methods
.method public final a()Laef;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Laeo;->a:Laef;

    return-object v0
.end method

.method public a()Laeo;
    .registers 3

    .prologue
    .line 165
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laeo;

    .line 166
    invoke-static {p0, v0}, Laeh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Laeo;->a:Ljava/util/Map;

    invoke-static {v1}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Laeo;->a:Ljava/util/Map;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_13} :catch_14

    .line 168
    return-object v0

    .line 169
    :catch_14
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_10

    .line 102
    invoke-virtual {v1, p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    invoke-virtual {v1, p0, p2}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :goto_f
    return-object v0

    .line 106
    :cond_10
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0}, Laef;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_1c
    iget-object v0, p0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_c

    .line 120
    invoke-virtual {v0, p0, p2}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    :goto_b
    return-void

    .line 123
    :cond_c
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0}, Laef;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_18
    iget-object v0, p0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Laeo;->a()Laeo;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Laeq;

    invoke-direct {v0, p0}, Laeq;-><init>(Laeo;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 84
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 85
    const/4 v0, 0x0

    .line 95
    :goto_5
    return-object v0

    .line 87
    :cond_6
    check-cast p1, Ljava/lang/String;

    .line 88
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_15

    .line 90
    invoke-virtual {v0, p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 92
    :cond_15
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0}, Laef;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_21
    iget-object v0, p0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Laeo;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Laeo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    .line 134
    :cond_22
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 138
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 139
    const/4 v0, 0x0

    .line 149
    :goto_5
    return-object v0

    .line 141
    :cond_6
    check-cast p1, Ljava/lang/String;

    .line 142
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_16

    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 146
    :cond_16
    iget-object v0, p0, Laeo;->a:Laef;

    invoke-virtual {v0}, Laef;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_22
    iget-object v0, p0, Laeo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method
