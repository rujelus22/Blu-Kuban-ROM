.class Laps;
.super Lapu;
.source "ProvidedByInternalFactory.java"

# interfaces
.implements Laow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lapu",
        "<TT;>;",
        "Laow;"
    }
.end annotation


# instance fields
.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<+",
            "LanD",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private a:Laoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<+",
            "LanD",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private a:LapD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "LanD",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lant;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "LanD",
            "<*>;>;",
            "Lant",
            "<+",
            "LanD",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p3, p4}, Lapu;-><init>(Ljava/lang/Object;Z)V

    .line 48
    iput-object p1, p0, Laps;->a:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Laps;->b:Ljava/lang/Class;

    .line 50
    iput-object p3, p0, Laps;->a:Lant;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Lapb;",
            "Laqk;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Laps;->a:Laoc;

    if-eqz v1, :cond_36

    :goto_5
    const-string v1, "not initialized"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 67
    iget-object v0, p0, Laps;->a:Lant;

    iget-object v1, p0, Laps;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lapb;->a(Lant;Ljava/lang/Object;)V

    .line 69
    :try_start_15
    iget-object v0, p0, Laps;->a:Lant;

    invoke-virtual {p1, v0}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v2

    .line 70
    iget-object v0, p0, Laps;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lapc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v2, p2, p3, v1}, Lapc;->a(Laoy;Lapb;Laqk;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LanD;

    .line 72
    iget-object v6, p0, Laps;->a:LapD;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Laps;->a(LasT;Laoy;Lapb;Laqk;ZLapD;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_38

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Lapb;->a()V

    return-object v0

    .line 65
    :cond_36
    const/4 v0, 0x0

    goto :goto_5

    .line 74
    :catchall_38
    move-exception v0

    invoke-virtual {p2}, Lapb;->a()V

    throw v0
.end method

.method protected a(LasT;Laoy;Laqk;Laoo;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LasT",
            "<+TT;>;",
            "Laoy;",
            "Laqk",
            "<*>;",
            "Laoo",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lapu;->a(LasT;Laoy;Laqk;Laoo;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_25

    iget-object v1, p0, Laps;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 85
    iget-object v0, p0, Laps;->b:Ljava/lang/Class;

    iget-object v1, p0, Laps;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Laoy;->a(Ljava/lang/Class;Ljava/lang/Class;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 90
    :catch_1b
    move-exception v0

    .line 91
    invoke-virtual {p2, v0}, Laoy;->a(Ljava/lang/RuntimeException;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 89
    :cond_25
    return-object v0
.end method

.method public a(LaoP;Laoy;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Laps;->a:Lant;

    sget-object v1, LaoV;->c:LaoV;

    invoke-virtual {p1, v0, p2, v1}, LaoP;->a(Lant;Laoy;LaoV;)Laoc;

    move-result-object v0

    iput-object v0, p0, Laps;->a:Laoc;

    .line 60
    return-void
.end method

.method a(LapD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LapD",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Laps;->a:LapD;

    .line 55
    return-void
.end method
