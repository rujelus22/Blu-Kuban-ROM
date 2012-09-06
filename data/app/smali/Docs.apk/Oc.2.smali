.class LOc;
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
        "LOh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LNX;


# direct methods
.method constructor <init>(LNX;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, LOc;->a:LNX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOh;
    .registers 2

    .prologue
    .line 207
    invoke-static {}, LOg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOh;

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
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 204
    invoke-virtual {p0}, LOc;->a()LOh;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 227
    invoke-static {}, LOg;->a()V

    .line 228
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
            "LOh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, LOg;->a(LanD;)V

    .line 223
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    invoke-static {p1}, LOg;->a(LanG;)V

    .line 213
    return-void
.end method
