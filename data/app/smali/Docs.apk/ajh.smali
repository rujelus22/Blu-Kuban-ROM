.class public final Lajh;
.super LahX;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LahX",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient a:I

.field transient a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, LahX;-><init>(Ljava/util/Map;)V

    .line 75
    const/16 v0, 0x8

    iput v0, p0, Lajh;->a:I

    .line 123
    invoke-static {}, LakX;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lajh;->a:Ljava/util/Collection;

    .line 124
    return-void
.end method

.method public static a()Lajh;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lajh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lajh;

    invoke-direct {v0}, Lajh;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lajh;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Laji;

    invoke-virtual {p0}, Lajh;->b()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Laji;-><init>(Lajh;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, LahX;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, LahX;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, LahX;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, LahX;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, LahX;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lajh;->a:I

    invoke-static {v1}, Lakz;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, LahX;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, LahX;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, LahX;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
