.class Liq;
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
        "Lij;",
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
    .line 1215
    iput-object p1, p0, Liq;->a:Lik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lij;
    .registers 2

    .prologue
    .line 1218
    invoke-static {}, LiQ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

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
    .line 1228
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1215
    invoke-virtual {p0}, Liq;->a()Lij;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 1238
    invoke-static {}, LiQ;->a()V

    .line 1239
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
            "Lij;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1233
    invoke-static {p1}, LiQ;->a(LanD;)V

    .line 1234
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 1223
    invoke-static {p1}, LiQ;->a(LanG;)V

    .line 1224
    return-void
.end method
