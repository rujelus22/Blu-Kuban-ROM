.class LlF;
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
        "Lmi;",
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
    .line 321
    iput-object p1, p0, LlF;->a:LlB;

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
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 321
    invoke-virtual {p0}, LlF;->a()Lmi;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmi;
    .registers 2

    .prologue
    .line 324
    invoke-static {}, LlL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 344
    invoke-static {}, LlL;->a()V

    .line 345
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
            "Lmi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, LlL;->a(LanD;)V

    .line 340
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    invoke-static {p1}, LlL;->a(LanG;)V

    .line 330
    return-void
.end method
