.class LrV;
.super Ljava/util/AbstractSet;
.source "DriveAppSetImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "LSE;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic a:LrS;


# direct methods
.method private constructor <init>(LrS;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, LrV;->a:LrS;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LrV;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(LrS;LrT;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, LrV;-><init>(LrS;)V

    return-void
.end method


# virtual methods
.method public a(LSE;)Z
    .registers 8
    .parameter

    .prologue
    .line 77
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, LrV;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    if-eqz v1, :cond_7f

    .line 80
    invoke-virtual {p1}, LSE;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, LSE;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LaiT;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-static {v0}, LrS;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 86
    const-string v3, "DriveAppSetImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4f
    iget-object v3, p0, LrV;->a:LrS;

    invoke-static {v3}, LrS;->a(LrS;)LakW;

    move-result-object v3

    invoke-interface {v3, v0, p1}, LakW;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1b

    .line 90
    :cond_59
    invoke-virtual {p1}, LSE;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, LSE;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LaiT;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    iget-object v3, p0, LrV;->a:LrS;

    invoke-static {v3}, LrS;->b(LrS;)LakW;

    move-result-object v3

    invoke-interface {v3, v0, p1}, LakW;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_69

    .line 94
    :cond_7f
    return v1
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 64
    check-cast p1, LSE;

    invoke-virtual {p0, p1}, LrV;->a(LSE;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, LrV;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 70
    iget-object v0, p0, LrV;->a:LrS;

    invoke-static {v0}, LrS;->a(LrS;)LakW;

    move-result-object v0

    invoke-interface {v0}, LakW;->a()V

    .line 71
    iget-object v0, p0, LrV;->a:LrS;

    invoke-static {v0}, LrS;->b(LrS;)LakW;

    move-result-object v0

    invoke-interface {v0}, LakW;->a()V

    .line 72
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, LrV;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "LSE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, LrV;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LaiY;->a(Ljava/util/Iterator;)Lalu;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, LrV;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
