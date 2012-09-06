.class Lasr;
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
        "Lasu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lasp;


# direct methods
.method constructor <init>(Lasp;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lasr;->a:Lasp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lasu;
    .registers 2

    .prologue
    .line 86
    invoke-static {}, Lass;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lasu;

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
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lasr;->a()Lasu;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 106
    invoke-static {}, Lass;->a()V

    .line 107
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
            "Lasu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {p1}, Lass;->a(LanD;)V

    .line 102
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    invoke-static {p1}, Lass;->a(LanG;)V

    .line 92
    return-void
.end method
