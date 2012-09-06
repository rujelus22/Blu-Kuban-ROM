.class LmS;
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
        "Lmw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LmP;


# direct methods
.method constructor <init>(LmP;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, LmS;->a:LmP;

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
    .line 179
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, LmS;->a()Lmw;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmw;
    .registers 2

    .prologue
    .line 169
    invoke-static {}, LmV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 189
    invoke-static {}, LmV;->a()V

    .line 190
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
            "Lmw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, LmV;->a(LanD;)V

    .line 185
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    invoke-static {p1}, LmV;->a(LanG;)V

    .line 175
    return-void
.end method
