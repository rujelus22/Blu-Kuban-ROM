.class Labx;
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
        "Labt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labu;


# direct methods
.method constructor <init>(Labu;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Labx;->a:Labu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Labt;
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Laby;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labt;

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
    .line 189
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Labx;->a()Labt;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 199
    invoke-static {}, Laby;->a()V

    .line 200
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
            "Labt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Laby;->a(LanD;)V

    .line 195
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    invoke-static {p1}, Laby;->a(LanG;)V

    .line 185
    return-void
.end method
