.class LOb;
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
        "LNW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LNX;


# direct methods
.method constructor <init>(LNX;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, LOb;->a:LNX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LNW;
    .registers 2

    .prologue
    .line 180
    invoke-static {}, LOf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNW;

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
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 177
    invoke-virtual {p0}, LOb;->a()LNW;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 200
    invoke-static {}, LOf;->a()V

    .line 201
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
            "LNW;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p1}, LOf;->a(LanD;)V

    .line 196
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    invoke-static {p1}, LOf;->a(LanG;)V

    .line 186
    return-void
.end method
