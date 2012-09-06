.class final LakV;
.super LakG;
.source "ReverseOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LakG",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:LakG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakG",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LakG;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LakG",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, LakG;-><init>()V

    .line 34
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LakG;

    iput-object v0, p0, LakV;->a:LakG;

    .line 35
    return-void
.end method


# virtual methods
.method public a()LakG;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "LakG",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, LakV;->a:LakG;

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, LakV;->a:LakG;

    invoke-virtual {v0, p2, p1}, LakG;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 85
    if-ne p1, p0, :cond_4

    .line 86
    const/4 v0, 0x1

    .line 92
    :goto_3
    return v0

    .line 88
    :cond_4
    instance-of v0, p1, LakV;

    if-eqz v0, :cond_13

    .line 89
    check-cast p1, LakV;

    .line 90
    iget-object v0, p0, LakV;->a:LakG;

    iget-object v1, p1, LakV;->a:LakG;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 92
    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, LakV;->a:LakG;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LakV;->a:LakG;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
