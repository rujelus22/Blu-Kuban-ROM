.class public final Ldbxyzptlk/n/d;
.super Ldbxyzptlk/n/a;
.source "panda.py"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-static {p0, p1}, Ldbxyzptlk/n/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldbxyzptlk/n/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Ldbxyzptlk/n/b;
    .registers 3
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Ldbxyzptlk/n/a;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ldbxyzptlk/n/k;
    .registers 5
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_34

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting array to have an element at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but it only has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldbxyzptlk/n/d;->a(Ljava/lang/String;)Ldbxyzptlk/n/b;

    move-result-object v0

    throw v0

    .line 30
    :cond_34
    new-instance v1, Ldbxyzptlk/n/k;

    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ldbxyzptlk/n/d;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Ldbxyzptlk/n/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final a(Ldbxyzptlk/n/c;)Ljava/util/ArrayList;
    .registers 6
    .parameter

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ldbxyzptlk/n/d;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    new-instance v3, Ldbxyzptlk/n/k;

    invoke-direct {v3, v2}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ldbxyzptlk/n/c;->b(Ldbxyzptlk/n/k;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 81
    :cond_28
    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 5

    .prologue
    .line 62
    new-instance v1, Ldbxyzptlk/n/f;

    iget-object v2, p0, Ldbxyzptlk/n/d;->b:Ljava/lang/String;

    iget-object v0, p0, Ldbxyzptlk/n/d;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ldbxyzptlk/n/f;-><init>(Ljava/lang/String;Ljava/util/Iterator;Ldbxyzptlk/n/e;)V

    return-object v1
.end method
