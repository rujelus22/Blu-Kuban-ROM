.class LyU;
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
        "LyX;",
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
    .line 171
    iput-object p1, p0, LyU;->a:LyR;

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
    .line 184
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, LyU;->a()LyX;

    move-result-object v0

    return-object v0
.end method

.method public a()LyX;
    .registers 2

    .prologue
    .line 174
    invoke-static {}, LyV;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LyX;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 194
    invoke-static {}, LyV;->a()V

    .line 195
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
            "LyX;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, LyV;->a(LanD;)V

    .line 190
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    invoke-static {p1}, LyV;->a(LanG;)V

    .line 180
    return-void
.end method