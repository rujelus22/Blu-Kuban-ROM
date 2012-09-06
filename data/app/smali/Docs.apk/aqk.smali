.class public final Laqk;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Laqt;

.field private final a:Z


# direct methods
.method constructor <init>(Laqt;Lant;ZI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqt;",
            "Lant",
            "<TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Laqk;->a:Laqt;

    .line 47
    const-string v0, "key"

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lant;

    iput-object v0, p0, Laqk;->a:Lant;

    .line 48
    iput-boolean p3, p0, Laqk;->a:Z

    .line 49
    iput p4, p0, Laqk;->a:I

    .line 50
    return-void
.end method

.method public static a(Lant;)Laqk;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "Laqk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Laqk;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Laqk;-><init>(Laqt;Lant;ZI)V

    return-object v0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 65
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqt;

    .line 66
    invoke-virtual {v0}, Laqt;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 68
    :cond_1c
    invoke-static {v1}, LaiE;->a(Ljava/util/Collection;)LaiE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Laqk;->a:I

    return v0
.end method

.method public a()Lant;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Laqk;->a:Lant;

    return-object v0
.end method

.method public a()Laqt;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Laqk;->a:Laqt;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Laqk;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 107
    instance-of v1, p1, Laqk;

    if-eqz v1, :cond_2e

    .line 108
    check-cast p1, Laqk;

    .line 109
    iget-object v1, p0, Laqk;->a:Laqt;

    iget-object v2, p1, Laqk;->a:Laqt;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, p0, Laqk;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Laqk;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Laqk;->a:Lant;

    iget-object v2, p1, Laqk;->a:Lant;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 113
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Laqk;->a:Laqt;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Laqk;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Laqk;->a:Lant;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object v1, p0, Laqk;->a:Lant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Laqk;->a:Laqt;

    if-eqz v1, :cond_2f

    .line 121
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laqk;->a:Laqt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Laqk;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2f

    .line 123
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laqk;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
