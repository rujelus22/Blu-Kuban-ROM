.class Ljt;
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
        "LjD;",
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
    .line 382
    iput-object p1, p0, Ljt;->a:Ljo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LjD;
    .registers 2

    .prologue
    .line 385
    invoke-static {}, Ljy;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LjD;

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
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 382
    invoke-virtual {p0}, Ljt;->a()LjD;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 405
    invoke-static {}, Ljy;->a()V

    .line 406
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
            "LjD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    invoke-static {p1}, Ljy;->a(LanD;)V

    .line 401
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 390
    invoke-static {p1}, Ljy;->a(LanG;)V

    .line 391
    return-void
.end method
