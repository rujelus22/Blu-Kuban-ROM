.class Lim;
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
        "Ljc;",
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
    .line 1107
    iput-object p1, p0, Lim;->a:Lik;

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
    .line 1120
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1107
    invoke-virtual {p0}, Lim;->a()Ljc;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljc;
    .registers 2

    .prologue
    .line 1110
    invoke-static {}, LiS;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljc;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1130
    invoke-static {}, LiS;->a()V

    .line 1131
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
            "Ljc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-static {p1}, LiS;->a(LanD;)V

    .line 1126
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1115
    invoke-static {p1}, LiS;->a(LanG;)V

    .line 1116
    return-void
.end method
