.class LyT;
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
        "Lzd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LyR;


# direct methods
.method constructor <init>(LyR;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, LyT;->a:LyR;

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
    .line 157
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 144
    invoke-virtual {p0}, LyT;->a()Lzd;

    move-result-object v0

    return-object v0
.end method

.method public a()Lzd;
    .registers 2

    .prologue
    .line 147
    invoke-static {}, LyW;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 167
    invoke-static {}, LyW;->a()V

    .line 168
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
            "Lzd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, LyW;->a(LanD;)V

    .line 163
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    invoke-static {p1}, LyW;->a(LanG;)V

    .line 153
    return-void
.end method
