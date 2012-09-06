.class final LapK;
.super LapG;
.source "Scoping.java"


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LapG;-><init>(LapH;)V

    return-void
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 103
    sget-object v0, LanI;->a:LanG;

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
    .line 99
    invoke-interface {p1}, Laqd;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    const-string v0, "eager singleton"

    return-object v0
.end method
