.class LoK;
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
        "LpF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LoC;


# direct methods
.method constructor <init>(LoC;)V
    .registers 2
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, LoK;->a:LoC;

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
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 610
    invoke-virtual {p0}, LoK;->a()LpF;

    move-result-object v0

    return-object v0
.end method

.method public a()LpF;
    .registers 2

    .prologue
    .line 613
    invoke-static {}, Lpf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpF;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 633
    invoke-static {}, Lpf;->a()V

    .line 634
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
            "LpF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {p1}, Lpf;->a(LanD;)V

    .line 629
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 618
    invoke-static {p1}, Lpf;->a(LanG;)V

    .line 619
    return-void
.end method
