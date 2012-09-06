.class Lli;
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
        "Llv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llg;


# direct methods
.method constructor <init>(Llg;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lli;->a:Llg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lli;->a()Llv;

    move-result-object v0

    return-object v0
.end method

.method public a()Llv;
    .registers 2

    .prologue
    .line 329
    invoke-static {}, Lls;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llv;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 349
    invoke-static {}, Lls;->a()V

    .line 350
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
            "Llv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {p1}, Lls;->a(LanD;)V

    .line 345
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    invoke-static {p1}, Lls;->a(LanG;)V

    .line 335
    return-void
.end method
