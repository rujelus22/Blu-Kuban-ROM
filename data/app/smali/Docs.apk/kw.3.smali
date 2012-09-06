.class Lkw;
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
        "Lkm;",
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
    .line 252
    iput-object p1, p0, Lkw;->a:Lku;

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
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lkw;->a()Lkm;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkm;
    .registers 2

    .prologue
    .line 255
    invoke-static {}, LkC;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkm;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 275
    invoke-static {}, LkC;->a()V

    .line 276
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
            "Lkm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, LkC;->a(LanD;)V

    .line 271
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    invoke-static {p1}, LkC;->a(LanG;)V

    .line 261
    return-void
.end method
