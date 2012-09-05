.class public final LK/bf;
.super LK/G;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, LK/G;-><init>(Ljava/util/Map;)V

    const/16 v0, 0x8

    iput v0, p0, LK/bf;->a:I

    return-void
.end method

.method public static g()LK/bf;
    .registers 1

    new-instance v0, LK/bf;

    invoke-direct {v0}, LK/bf;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Set;
    .registers 2

    iget v0, p0, LK/bf;->a:I

    invoke-static {v0}, LK/cw;->a(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3

    invoke-super {p0, p1}, LK/G;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4

    invoke-super {p0, p1, p2}, LK/G;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-super {p0, p1, p2}, LK/G;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, LK/G;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/bf;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Z
    .registers 2

    invoke-super {p0}, LK/G;->d()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .registers 1

    invoke-super {p0}, LK/G;->e()V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, LK/G;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, LK/G;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, LK/G;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, LK/G;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
