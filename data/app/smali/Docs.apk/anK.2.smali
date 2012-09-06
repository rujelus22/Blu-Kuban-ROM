.class LanK;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LanD;

.field final synthetic a:LanJ;

.field private volatile a:Ljava/lang/Object;


# direct methods
.method constructor <init>(LanJ;LanD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, LanK;->a:LanJ;

    iput-object p2, p0, LanK;->a:LanD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, LanK;->a:Ljava/lang/Object;

    if-nez v0, :cond_35

    .line 63
    const-class v1, Lape;

    monitor-enter v1

    .line 64
    :try_start_7
    iget-object v0, p0, LanK;->a:Ljava/lang/Object;

    if-nez v0, :cond_34

    .line 65
    iget-object v0, p0, LanK;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-static {v0}, LanI;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 69
    monitor-exit v1

    .line 87
    :cond_18
    :goto_18
    return-object v0

    .line 72
    :cond_19
    if-nez v0, :cond_1f

    invoke-static {}, LanI;->a()Ljava/lang/Object;

    move-result-object v0

    .line 73
    :cond_1f
    iget-object v2, p0, LanK;->a:Ljava/lang/Object;

    if-eqz v2, :cond_32

    iget-object v2, p0, LanK;->a:Ljava/lang/Object;

    if-eq v2, v0, :cond_32

    .line 74
    new-instance v0, LanF;

    const-string v2, "Provider was reentrant while creating a singleton"

    invoke-direct {v0, v2}, LanF;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v0

    .line 78
    :cond_32
    :try_start_32
    iput-object v0, p0, LanK;->a:Ljava/lang/Object;

    .line 80
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2f

    .line 83
    :cond_35
    iget-object v0, p0, LanK;->a:Ljava/lang/Object;

    .line 86
    invoke-static {}, LanI;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    goto :goto_18
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 92
    const-string v0, "%s[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LanK;->a:LanD;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, LanI;->a:LanG;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
