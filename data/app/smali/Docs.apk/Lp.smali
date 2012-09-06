.class LLp;
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
        "LLA;",
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
    .line 218
    iput-object p1, p0, LLp;->a:LLl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LLA;
    .registers 2

    .prologue
    .line 221
    invoke-static {}, LLs;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLA;

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
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 218
    invoke-virtual {p0}, LLp;->a()LLA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 241
    invoke-static {}, LLs;->a()V

    .line 242
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
            "LLA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {p1}, LLs;->a(LanD;)V

    .line 237
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    invoke-static {p1}, LLs;->a(LanG;)V

    .line 227
    return-void
.end method
