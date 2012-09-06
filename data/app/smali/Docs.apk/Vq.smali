.class public LVq;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements LVp;


# instance fields
.field private final a:LFX;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTO;",
            ">;"
        }
    .end annotation
.end field

.field private final b:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;LanD;LFX;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "LTO;",
            ">;",
            "LanD",
            "<",
            "LTS;",
            ">;",
            "LFX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, LVq;->a:LanD;

    .line 97
    iput-object p2, p0, LVq;->b:LanD;

    .line 98
    iput-object p3, p0, LVq;->a:LFX;

    .line 99
    return-void
.end method


# virtual methods
.method public a()LTM;
    .registers 5

    .prologue
    .line 103
    new-instance v2, LTQ;

    iget-object v0, p0, LVq;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTO;

    iget-object v1, p0, LVq;->b:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LTS;

    iget-object v3, p0, LVq;->a:LFX;

    invoke-direct {v2, v0, v1, v3}, LTQ;-><init>(LTO;LTS;LFX;)V

    return-object v2
.end method
