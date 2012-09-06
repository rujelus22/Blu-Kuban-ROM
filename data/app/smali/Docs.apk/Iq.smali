.class LIq;
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
        "LIi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LIm;


# direct methods
.method constructor <init>(LIm;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, LIq;->a:LIm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LIi;
    .registers 2

    .prologue
    .line 240
    invoke-static {}, LIr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIi;

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
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 237
    invoke-virtual {p0}, LIq;->a()LIi;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 260
    invoke-static {}, LIr;->a()V

    .line 261
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
            "LIi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {p1}, LIr;->a(LanD;)V

    .line 256
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 245
    invoke-static {p1}, LIr;->a(LanG;)V

    .line 246
    return-void
.end method
