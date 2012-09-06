.class LlI;
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
        "Lms;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LlB;


# direct methods
.method constructor <init>(LlB;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, LlI;->a:LlB;

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
    .line 415
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 402
    invoke-virtual {p0}, LlI;->a()Lms;

    move-result-object v0

    return-object v0
.end method

.method public a()Lms;
    .registers 2

    .prologue
    .line 405
    invoke-static {}, LlO;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 425
    invoke-static {}, LlO;->a()V

    .line 426
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
            "Lms;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p1}, LlO;->a(LanD;)V

    .line 421
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    invoke-static {p1}, LlO;->a(LanG;)V

    .line 411
    return-void
.end method
