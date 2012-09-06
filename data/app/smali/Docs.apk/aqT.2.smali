.class public final LaqT;
.super Ljava/lang/Object;
.source "TypeConverterBinding.java"

# interfaces
.implements Laqm;


# instance fields
.field private final a:LapZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LapZ",
            "<-",
            "LanP",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:LaqS;

.field private final a:Ljava/lang/Object;


# virtual methods
.method public a()LaqS;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, LaqT;->a:LaqS;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, LaqT;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LaqT;->a:LaqS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " which matches "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaqT;->a:LapZ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (bound at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaqT;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
