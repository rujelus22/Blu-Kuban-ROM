.class Ljv;
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
        "Lkc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljo;


# direct methods
.method constructor <init>(Ljo;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Ljv;->a:Ljo;

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
    .line 449
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Ljv;->a()Lkc;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkc;
    .registers 2

    .prologue
    .line 439
    invoke-static {}, LjA;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkc;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 459
    invoke-static {}, LjA;->a()V

    .line 460
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
            "Lkc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {p1}, LjA;->a(LanD;)V

    .line 455
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 444
    invoke-static {p1}, LjA;->a(LanG;)V

    .line 445
    return-void
.end method
