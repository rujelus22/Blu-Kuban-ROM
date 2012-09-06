.class Lkx;
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
        "Lki;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lku;


# direct methods
.method constructor <init>(Lku;)V
    .registers 2
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lkx;->a:Lku;

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
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lkx;->a()Lki;

    move-result-object v0

    return-object v0
.end method

.method public a()Lki;
    .registers 2

    .prologue
    .line 282
    invoke-static {}, LkA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lki;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 302
    invoke-static {}, LkA;->a()V

    .line 303
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
            "Lki;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p1}, LkA;->a(LanD;)V

    .line 298
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    invoke-static {p1}, LkA;->a(LanG;)V

    .line 288
    return-void
.end method
