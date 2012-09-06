.class Lvc;
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
        "Lvg;",
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
    .line 153
    iput-object p1, p0, Lvc;->a:Lva;

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
    .line 166
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lvc;->a()Lvg;

    move-result-object v0

    return-object v0
.end method

.method public a()Lvg;
    .registers 2

    .prologue
    .line 156
    invoke-static {}, Lve;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvg;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 176
    invoke-static {}, Lve;->a()V

    .line 177
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
            "Lvg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {p1}, Lve;->a(LanD;)V

    .line 172
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Lve;->a(LanG;)V

    .line 162
    return-void
.end method
