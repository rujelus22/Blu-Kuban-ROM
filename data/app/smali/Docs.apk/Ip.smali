.class LIp;
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
        "LIA;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIm;


# direct methods
.method constructor <init>(LIm;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, LIp;->a:LIm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIA;
    .registers 2

    .prologue
    .line 213
    invoke-static {}, LIt;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIA;

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
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, LIp;->a()LIA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 233
    invoke-static {}, LIt;->a()V

    .line 234
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
            "LIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, LIt;->a(LanD;)V

    .line 229
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    invoke-static {p1}, LIt;->a(LanG;)V

    .line 219
    return-void
.end method
