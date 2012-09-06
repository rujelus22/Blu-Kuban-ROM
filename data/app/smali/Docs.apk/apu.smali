.class abstract Lapu;
.super Ljava/lang/Object;
.source "ProviderInternalFactory.java"

# interfaces
.implements Lapc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Object;

.field private final a:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "source"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lapu;->a:Ljava/lang/Object;

    .line 40
    iput-boolean p2, p0, Lapu;->a:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected a(LasT;Laoy;Lapb;Laqk;ZLapD;)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
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
            "Lapb;",
            "Laqk",
            "<*>;Z",
            "LapD",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p4}, Laqk;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    .line 48
    invoke-virtual {p3, p0}, Lapb;->a(Ljava/lang/Object;)Laoo;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Laoo;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 52
    iget-boolean v1, p0, Lapu;->a:Z

    if-nez v1, :cond_23

    .line 53
    invoke-virtual {p2, v0}, Laoy;->g(Ljava/lang/Class;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 57
    :cond_23
    invoke-virtual {v5, p2, v0}, Laoo;->a(Laoy;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    :goto_27
    return-object v0

    .line 63
    :cond_28
    invoke-virtual {v5}, Laoo;->b()V

    .line 65
    :try_start_2b
    invoke-virtual {p6}, LapD;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 66
    invoke-virtual {p0, p1, p2, p4, v5}, Lapu;->a(LasT;Laoy;Laqk;Laoo;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_50

    move-result-object v0

    .line 75
    invoke-virtual {v5}, Laoo;->a()V

    .line 76
    invoke-virtual {v5}, Laoo;->c()V

    goto :goto_27

    .line 68
    :cond_3c
    :try_start_3c
    new-instance v0, Lapv;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lapv;-><init>(Lapu;LasT;Laoy;Laqk;Laoo;)V

    invoke-virtual {p6, p2, p3, v0}, LapD;->a(Laoy;Lapb;LapF;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_50

    move-result-object v0

    .line 75
    invoke-virtual {v5}, Laoo;->a()V

    .line 76
    invoke-virtual {v5}, Laoo;->c()V

    goto :goto_27

    .line 75
    :catchall_50
    move-exception v0

    invoke-virtual {v5}, Laoo;->a()V

    .line 76
    invoke-virtual {v5}, Laoo;->c()V

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
    .line 86
    invoke-interface {p1}, LasT;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lapu;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p3}, Laoy;->a(Ljava/lang/Object;Ljava/lang/Object;Laqk;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    invoke-virtual {p4, v0}, Laoo;->b(Ljava/lang/Object;)V

    .line 88
    return-object v0
.end method
