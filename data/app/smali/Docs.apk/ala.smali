.class final Lala;
.super LaiC;
.source "SingletonImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LaiC",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient a:Laiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiv",
            "<TV;>;"
        }
    .end annotation
.end field

.field final transient a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, LaiC;-><init>()V

    .line 46
    iput-object p1, p0, Lala;->a:Ljava/util/Map$Entry;

    .line 47
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lala;->a:Ljava/lang/Object;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lala;->b:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private a()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lala;->a:Ljava/util/Map$Entry;

    .line 53
    if-nez v0, :cond_e

    iget-object v0, p0, Lala;->a:Ljava/lang/Object;

    iget-object v1, p0, Lala;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lakz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lala;->a:Ljava/util/Map$Entry;

    :cond_e
    return-object v0
.end method


# virtual methods
.method public a()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lala;->a:LaiE;

    .line 86
    if-nez v0, :cond_e

    invoke-direct {p0}, Lala;->a()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v0

    iput-object v0, p0, Lala;->a:LaiE;

    :cond_e
    return-object v0
.end method

.method public a()Laiv;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laiv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lala;->a:Laiv;

    .line 100
    if-nez v0, :cond_d

    new-instance v0, Lalb;

    iget-object v1, p0, Lala;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lalb;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lala;->a:Laiv;

    :cond_d
    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public b()LaiE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LaiE",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lala;->b:LaiE;

    .line 93
    if-nez v0, :cond_c

    iget-object v0, p0, Lala;->a:Ljava/lang/Object;

    invoke-static {v0}, LaiE;->a(Ljava/lang/Object;)LaiE;

    move-result-object v0

    iput-object v0, p0, Lala;->b:LaiE;

    :cond_c
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lala;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lala;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lala;->a()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p1, p0, :cond_6

    move v2, v1

    .line 146
    :cond_5
    :goto_5
    return v2

    .line 137
    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 138
    check-cast p1, Ljava/util/Map;

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 142
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    iget-object v3, p0, Lala;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lala;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_39
    move v2, v0

    goto :goto_5

    :cond_3b
    move v0, v2

    goto :goto_39
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lala;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lala;->b:Ljava/lang/Object;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lala;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lala;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lala;->b()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lala;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lala;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lala;->a()Laiv;

    move-result-object v0

    return-object v0
.end method
