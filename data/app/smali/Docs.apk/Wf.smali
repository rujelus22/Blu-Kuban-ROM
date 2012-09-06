.class LWf;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWX",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LWa;


# direct methods
.method constructor <init>(LWa;)V
    .registers 2
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, LWf;->a:LWa;

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
    .line 935
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 925
    invoke-static {}, LWy;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 922
    invoke-virtual {p0}, LWf;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 945
    invoke-static {}, LWy;->a()V

    .line 946
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 940
    invoke-static {p1}, LWy;->a(LanD;)V

    .line 941
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 930
    invoke-static {p1}, LWy;->a(LanG;)V

    .line 931
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 950
    invoke-static {p1}, LWy;->a(Ljava/lang/Integer;)V

    .line 951
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 922
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, LWf;->a(Ljava/lang/Integer;)V

    return-void
.end method
