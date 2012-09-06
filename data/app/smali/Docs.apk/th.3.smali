.class Lth;
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
        "Ltb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltf;


# direct methods
.method constructor <init>(Ltf;)V
    .registers 2
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lth;->a:Ltf;

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
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 535
    invoke-virtual {p0}, Lth;->a()Ltb;

    move-result-object v0

    return-object v0
.end method

.method public a()Ltb;
    .registers 2

    .prologue
    .line 538
    invoke-static {}, Ltw;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltb;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 558
    invoke-static {}, Ltw;->a()V

    .line 559
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
            "Ltb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {p1}, Ltw;->a(LanD;)V

    .line 554
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 543
    invoke-static {p1}, Ltw;->a(LanG;)V

    .line 544
    return-void
.end method
