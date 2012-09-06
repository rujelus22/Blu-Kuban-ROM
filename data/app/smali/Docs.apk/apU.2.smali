.class final LapU;
.super Laoc;
.source "UntargettedBindingImpl.java"

# interfaces
.implements LaqU;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "LaqU",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lant;LapG;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lant",
            "<TT;>;",
            "LapG;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Laoc;-><init>(Ljava/lang/Object;Lant;LapG;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lant;)Laoc;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<TT;>;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, LapU;

    invoke-virtual {p0}, LapU;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LapU;->a()LapG;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, LapU;-><init>(Ljava/lang/Object;Lant;LapG;)V

    return-object v0
.end method

.method public a(LapG;)Laoc;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LapG;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, LapU;

    invoke-virtual {p0}, LapU;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LapU;->a()Lant;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, LapU;-><init>(Ljava/lang/Object;Lant;LapG;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    instance-of v1, p1, LapU;

    if-eqz v1, :cond_24

    .line 66
    check-cast p1, LapU;

    .line 67
    invoke-virtual {p0}, LapU;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, LapU;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, LapU;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, LapU;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    .line 70
    :cond_24
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, LapU;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, LapU;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 57
    const-class v0, LaqU;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, LapU;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, LapU;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
