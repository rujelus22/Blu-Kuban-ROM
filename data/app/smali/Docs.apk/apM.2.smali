.class final LapM;
.super LapG;
.source "Scoping.java"


# instance fields
.field final synthetic a:LanG;


# direct methods
.method constructor <init>(LanG;)V
    .registers 3
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, LapM;->a:LanG;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LapG;-><init>(LapH;)V

    return-void
.end method


# virtual methods
.method public a()LanG;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, LapM;->a:LanG;

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
    .line 147
    iget-object v0, p0, LapM;->a:LanG;

    invoke-interface {p1, v0}, Laqd;->a(LanG;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, LapM;->a:LanG;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
