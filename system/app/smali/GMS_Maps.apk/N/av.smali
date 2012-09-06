.class public Ln/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ln/av;->a:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public constructor <init>(Ln/av;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Ln/av;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ln/av;->a:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static a(Ln/av;Ln/aq;)Ln/ao;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public a(Ln/av;)I
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {}, Ln/aq;->values()[Ln/aq;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_23

    aget-object v0, v3, v2

    .line 103
    invoke-virtual {p0, v0}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v5

    .line 104
    invoke-virtual {p1, v0}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v0

    .line 105
    if-nez v5, :cond_19

    .line 106
    if-eqz v0, :cond_1f

    .line 107
    const/4 v0, -0x1

    .line 116
    :cond_18
    :goto_18
    return v0

    .line 111
    :cond_19
    invoke-interface {v5, v0}, Ln/ao;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 112
    if-nez v0, :cond_18

    .line 102
    :cond_1f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_23
    move v0, v1

    .line 116
    goto :goto_18
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/aq;)Ln/ao;
    .registers 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ao;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Ln/av;
    .registers 6
    .parameter

    .prologue
    .line 158
    new-instance v1, Ln/av;

    invoke-direct {v1}, Ln/av;-><init>()V

    .line 159
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ao;

    .line 160
    invoke-interface {v0, p1}, Ln/ao;->a(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 161
    invoke-virtual {v1, v0}, Ln/av;->a(Ln/ao;)V

    goto :goto_f

    .line 164
    :cond_25
    return-object v1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/ao;

    .line 128
    invoke-interface {v0, p1}, Ln/ao;->a(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 129
    invoke-interface {v0, p2}, Ln/ao;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_a

    .line 132
    :cond_20
    return-void
.end method

.method public a(Ln/ao;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {p1}, Ln/ao;->a()Ln/aq;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public b(Ln/aq;)Z
    .registers 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 19
    check-cast p1, Ln/av;

    invoke-virtual {p0, p1}, Ln/av;->a(Ln/av;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 82
    if-ne p0, p1, :cond_4

    .line 83
    const/4 v0, 0x1

    .line 92
    :goto_3
    return v0

    .line 85
    :cond_4
    if-nez p1, :cond_d

    .line 86
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    goto :goto_3

    .line 88
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_19

    .line 89
    const/4 v0, 0x0

    goto :goto_3

    .line 91
    :cond_19
    check-cast p1, Ln/av;

    .line 92
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    iget-object v1, p1, Ln/av;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 74
    .line 76
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    const/4 v0, 0x0

    :goto_d
    add-int/lit8 v0, v0, 0x1f

    .line 77
    return v0

    .line 76
    :cond_10
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ln/av;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
