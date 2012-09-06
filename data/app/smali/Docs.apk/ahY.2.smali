.class final LahY;
.super LakG;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LakG",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:LafH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafH",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final a:LakG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakG",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LafH;LakG;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LafH",
            "<TF;+TT;>;",
            "LakG",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, LakG;-><init>()V

    .line 41
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafH;

    iput-object v0, p0, LahY;->a:LafH;

    .line 42
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LakG;

    iput-object v0, p0, LahY;->a:LakG;

    .line 43
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, LahY;->a:LakG;

    iget-object v1, p0, LahY;->a:LafH;

    invoke-interface {v1, p1}, LafH;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, LahY;->a:LafH;

    invoke-interface {v2, p2}, LafH;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LakG;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    if-ne p1, p0, :cond_5

    .line 58
    :cond_4
    :goto_4
    return v0

    .line 53
    :cond_5
    instance-of v2, p1, LahY;

    if-eqz v2, :cond_21

    .line 54
    check-cast p1, LahY;

    .line 55
    iget-object v2, p0, LahY;->a:LafH;

    iget-object v3, p1, LahY;->a:LafH;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, LahY;->a:LakG;

    iget-object v3, p1, LahY;->a:LakG;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 58
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, LahY;->a:LafH;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, LahY;->a:LakG;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LahY;->a:LakG;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LahY;->a:LafH;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
