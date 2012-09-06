.class LGm;
.super Ljava/lang/Object;
.source "ClientFlagsModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "LFX;",
        ">;"
    }
.end annotation


# instance fields
.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LFZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFX;
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, LGm;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFZ;

    .line 28
    new-instance v1, LGd;

    invoke-direct {v1}, LGd;-><init>()V

    .line 30
    :try_start_d
    invoke-interface {v0, v1}, LFZ;->b(LFX;)V
    :try_end_10
    .catch LGa; {:try_start_d .. :try_end_10} :catch_11

    .line 34
    :goto_10
    return-object v1

    .line 31
    :catch_11
    move-exception v0

    .line 32
    const-string v2, "ClientFlagsModule"

    const-string v3, "Unable to load cached client flags, will use defaults until next sync."

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, LGm;->a()LFX;

    move-result-object v0

    return-object v0
.end method
