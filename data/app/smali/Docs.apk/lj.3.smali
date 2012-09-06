.class Llj;
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
        "Llu;",
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
    .line 353
    iput-object p1, p0, Llj;->a:Llg;

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
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Llj;->a()Llu;

    move-result-object v0

    return-object v0
.end method

.method public a()Llu;
    .registers 2

    .prologue
    .line 356
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 376
    invoke-static {}, Llr;->a()V

    .line 377
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
            "Llu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p1}, Llr;->a(LanD;)V

    .line 372
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 361
    invoke-static {p1}, Llr;->a(LanG;)V

    .line 362
    return-void
.end method
