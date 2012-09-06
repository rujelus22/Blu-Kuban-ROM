.class final LapH;
.super LapG;
.source "Scoping.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LapG;-><init>(LapH;)V

    return-void
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 49
    sget-object v0, LanI;->b:LanG;

    return-object v0
.end method

.method public a(Laqd;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Laqd",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p1}, Laqd;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    sget-object v0, LanI;->b:LanG;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
