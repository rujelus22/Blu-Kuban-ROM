.class LfO;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "LdX;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 2163
    iput-object p1, p0, LfO;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LdX;
    .registers 2

    .prologue
    .line 2166
    invoke-static {}, LgA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdX;

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
    .line 2176
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2163
    invoke-virtual {p0}, LfO;->a()LdX;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 2186
    invoke-static {}, LgA;->a()V

    .line 2187
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
            "LdX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2181
    invoke-static {p1}, LgA;->a(LanD;)V

    .line 2182
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 2171
    invoke-static {p1}, LgA;->a(LanG;)V

    .line 2172
    return-void
.end method

.method public a(LdX;)V
    .registers 2
    .parameter

    .prologue
    .line 2191
    invoke-static {p1}, LgA;->a(LdX;)V

    .line 2192
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 2163
    check-cast p1, LdX;

    invoke-virtual {p0, p1}, LfO;->a(LdX;)V

    return-void
.end method
