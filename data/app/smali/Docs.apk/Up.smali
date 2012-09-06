.class LUp;
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
        "LVx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LUb;


# direct methods
.method constructor <init>(LUb;)V
    .registers 2
    .parameter

    .prologue
    .line 1609
    iput-object p1, p0, LUp;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LVx;
    .registers 2

    .prologue
    .line 1612
    invoke-static {}, LVc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVx;

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
    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1609
    invoke-virtual {p0}, LUp;->a()LVx;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1632
    invoke-static {}, LVc;->a()V

    .line 1633
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
            "LVx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1627
    invoke-static {p1}, LVc;->a(LanD;)V

    .line 1628
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1617
    invoke-static {p1}, LVc;->a(LanG;)V

    .line 1618
    return-void
.end method
