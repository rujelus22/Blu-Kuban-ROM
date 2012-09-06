.class public LnN;
.super Ljava/lang/Object;
.source "SqlWhereClause.java"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LnN;->a:Ljava/util/Collection;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Collection;LnM;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, LnN;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a()LnL;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LnN;->a:Ljava/util/Collection;

    invoke-static {v0, v1}, LnL;->a(Ljava/lang/String;Ljava/util/Collection;)LnL;

    move-result-object v0

    return-object v0
.end method

.method public a(LnO;Ljava/lang/String;Ljava/util/Collection;)LnN;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LnO;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LnN;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, LnN;->a:Ljava/util/Collection;

    invoke-interface {v0, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "("

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LnO;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, LnN;->a:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public varargs a(LnO;Ljava/lang/String;[Ljava/lang/String;)LnN;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LnN;->a(LnO;Ljava/lang/String;Ljava/util/Collection;)LnN;

    move-result-object v0

    return-object v0
.end method

.method public a(LnO;LnL;)LnN;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p2}, LnL;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LnL;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, LnN;->a(LnO;Ljava/lang/String;Ljava/util/Collection;)LnN;

    move-result-object v0

    return-object v0
.end method
