.class LIT;
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
        "LIE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIN;


# direct methods
.method constructor <init>(LIN;)V
    .registers 2
    .parameter

    .prologue
    .line 543
    iput-object p1, p0, LIT;->a:LIN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIE;
    .registers 2

    .prologue
    .line 546
    invoke-static {}, LIY;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIE;

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
    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 543
    invoke-virtual {p0}, LIT;->a()LIE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 566
    invoke-static {}, LIY;->a()V

    .line 567
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
            "LIE;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    invoke-static {p1}, LIY;->a(LanD;)V

    .line 562
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    invoke-static {p1}, LIY;->a(LanG;)V

    .line 552
    return-void
.end method
