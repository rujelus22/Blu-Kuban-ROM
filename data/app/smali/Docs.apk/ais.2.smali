.class public final Lais;
.super LahX;
.source "HashMultimap.java"


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


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, LahX;-><init>(Ljava/util/Map;)V

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lais;->a:I

    .line 92
    return-void
.end method

.method public static a()Lais;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lais",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lais;

    invoke-direct {v0}, Lais;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lais;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, LahX;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, LahX;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, LahX;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()V
    .registers 1

    .prologue
    .line 49
    invoke-super {p0}, LahX;->a()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, LahX;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lais;->a:I

    invoke-static {v0}, LakX;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, LahX;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, LahX;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    invoke-super {p0}, LahX;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
