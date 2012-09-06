.class public final Laql;
.super Ljava/lang/Object;
.source "DependencyAndSource.java"


# instance fields
.field private final a:Laqk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqk",
            "<*>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Laqk;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqk",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Laql;->a:Laqk;

    .line 38
    iput-object p2, p0, Laql;->a:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Laqk;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laqk",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Laql;->a:Laqk;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Laql;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Laql;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, LapX;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_12
    return-object v0

    .line 61
    :cond_13
    iget-object v0, p0, Laql;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_26

    .line 62
    iget-object v0, p0, Laql;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-static {v0}, LapX;->a(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 64
    :cond_26
    iget-object v0, p0, Laql;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 70
    invoke-virtual {p0}, Laql;->a()Laqk;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Laql;->a()Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v0, :cond_28

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_27
    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method
