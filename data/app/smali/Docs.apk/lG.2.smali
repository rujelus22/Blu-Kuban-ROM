.class LlG;
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
        "Lmj;",
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
    .line 348
    iput-object p1, p0, LlG;->a:LlB;

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
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 348
    invoke-virtual {p0}, LlG;->a()Lmj;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmj;
    .registers 2

    .prologue
    .line 351
    invoke-static {}, LlM;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmj;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 371
    invoke-static {}, LlM;->a()V

    .line 372
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
            "Lmj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {p1}, LlM;->a(LanD;)V

    .line 367
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    invoke-static {p1}, LlM;->a(LanG;)V

    .line 357
    return-void
.end method
