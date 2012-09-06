.class Lll;
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
        "Llf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llg;


# direct methods
.method constructor <init>(Llg;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lll;->a:Llg;

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
    .line 420
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lll;->a()Llf;

    move-result-object v0

    return-object v0
.end method

.method public a()Llf;
    .registers 2

    .prologue
    .line 410
    invoke-static {}, Llq;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 430
    invoke-static {}, Llq;->a()V

    .line 431
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
            "Llf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {p1}, Llq;->a(LanD;)V

    .line 426
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    invoke-static {p1}, Llq;->a(LanG;)V

    .line 416
    return-void
.end method
