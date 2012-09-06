.class final Laik;
.super LaiC;
.source "EmptyImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaiC",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Laik;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Laik;

    invoke-direct {v0}, Laik;-><init>()V

    sput-object v0, Laik;->a:Laik;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, LaiC;-><init>()V

    return-void
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
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public a()Laiv;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laiv",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Laiv;->a:Laiv;

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
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Laik;->a()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 72
    check-cast p1, Ljava/util/Map;

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 75
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Laik;->b()LaiE;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "{}"

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Laik;->a()Laiv;

    move-result-object v0

    return-object v0
.end method
