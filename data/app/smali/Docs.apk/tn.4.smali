.class Ltn;
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
        "Lta;",
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
    .line 427
    iput-object p1, p0, Ltn;->a:Ltf;

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
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 427
    invoke-virtual {p0}, Ltn;->a()Lta;

    move-result-object v0

    return-object v0
.end method

.method public a()Lta;
    .registers 2

    .prologue
    .line 430
    invoke-static {}, Ltv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lta;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 450
    invoke-static {}, Ltv;->a()V

    .line 451
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
            "Lta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Ltv;->a(LanD;)V

    .line 446
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    invoke-static {p1}, Ltv;->a(LanG;)V

    .line 436
    return-void
.end method
