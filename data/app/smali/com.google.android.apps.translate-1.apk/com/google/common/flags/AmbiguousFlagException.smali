.class public Lcom/google/common/flags/AmbiguousFlagException;
.super Lcom/google/common/flags/FlagException;
.source "AmbiguousFlagException.java"


# static fields
.field private static final serialVersionUID:J = 0x14bae0066bL


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/flags/FlagDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, candidates:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/flags/FlagDescription;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ambiguous flag \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' matches "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/flags/FlagException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
