.class LLo;
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
        "LLz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LLl;


# direct methods
.method constructor <init>(LLl;)V
    .registers 2
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, LLo;->a:LLl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LLz;
    .registers 2

    .prologue
    .line 194
    invoke-static {}, LLr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLz;

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
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, LLo;->a()LLz;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 214
    invoke-static {}, LLr;->a()V

    .line 215
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
            "LLz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1}, LLr;->a(LanD;)V

    .line 210
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    invoke-static {p1}, LLr;->a(LanG;)V

    .line 200
    return-void
.end method
