.class LzS;
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
        "LzW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LzO;


# direct methods
.method constructor <init>(LzO;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, LzS;->a:LzO;

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
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 189
    invoke-virtual {p0}, LzS;->a()LzW;

    move-result-object v0

    return-object v0
.end method

.method public a()LzW;
    .registers 2

    .prologue
    .line 192
    invoke-static {}, LzV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzW;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 212
    invoke-static {}, LzV;->a()V

    .line 213
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
            "LzW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {p1}, LzV;->a(LanD;)V

    .line 208
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    invoke-static {p1}, LzV;->a(LanG;)V

    .line 198
    return-void
.end method
