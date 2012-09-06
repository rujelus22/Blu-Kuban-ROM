.class Lju;
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
        "Lid;",
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
    .line 409
    iput-object p1, p0, Lju;->a:Ljo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LjE;
    .registers 2

    .prologue
    .line 412
    invoke-static {}, Ljz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LjE;

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
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lju;->a()LjE;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 432
    invoke-static {}, Ljz;->a()V

    .line 433
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
            "Lid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {p1}, Ljz;->a(LanD;)V

    .line 428
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    invoke-static {p1}, Ljz;->a(LanG;)V

    .line 418
    return-void
.end method
