.class Liz;
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
        "Lii;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lik;


# direct methods
.method constructor <init>(Lik;)V
    .registers 2
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Liz;->a:Lik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lii;
    .registers 2

    .prologue
    .line 948
    invoke-static {}, LiP;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lii;

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
    .line 958
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 945
    invoke-virtual {p0}, Liz;->a()Lii;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 968
    invoke-static {}, LiP;->a()V

    .line 969
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
            "Lii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    invoke-static {p1}, LiP;->a(LanD;)V

    .line 964
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 953
    invoke-static {p1}, LiP;->a(LanG;)V

    .line 954
    return-void
.end method
