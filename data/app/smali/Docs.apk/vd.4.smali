.class Lvd;
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
        "Lvi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lva;


# direct methods
.method constructor <init>(Lva;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lvd;->a:Lva;

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
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lvd;->a()Lvi;

    move-result-object v0

    return-object v0
.end method

.method public a()Lvi;
    .registers 2

    .prologue
    .line 183
    invoke-static {}, Lvf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 203
    invoke-static {}, Lvf;->a()V

    .line 204
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
            "Lvi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lvf;->a(LanD;)V

    .line 199
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    invoke-static {p1}, Lvf;->a(LanG;)V

    .line 189
    return-void
.end method
