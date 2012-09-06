.class Lanw;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lanv;


# instance fields
.field final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    const-string v0, "annotation type"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lanw;->a:Ljava/lang/Class;

    .line 450
    iput-object p2, p0, Lanw;->a:Ljava/lang/annotation/Annotation;

    .line 451
    return-void
.end method


# virtual methods
.method public a()Lanv;
    .registers 3

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Key already has no attributes."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lanw;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lanw;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 470
    instance-of v0, p1, Lanw;

    if-nez v0, :cond_6

    .line 471
    const/4 v0, 0x0

    .line 475
    :goto_5
    return v0

    .line 474
    :cond_6
    check-cast p1, Lanw;

    .line 475
    iget-object v0, p0, Lanw;->a:Ljava/lang/Class;

    iget-object v1, p1, Lanw;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lanw;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lanw;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
