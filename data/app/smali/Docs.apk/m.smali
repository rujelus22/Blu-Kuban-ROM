.class Lm;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk;


# direct methods
.method constructor <init>(Lk;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lm;->a:Lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 87
    invoke-static {}, Ln;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lm;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Ln;->a()V

    .line 108
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Ln;->a(LanD;)V

    .line 103
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    invoke-static {p1}, Ln;->a(LanG;)V

    .line 93
    return-void
.end method
