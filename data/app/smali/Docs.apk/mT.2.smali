.class LmT;
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
        "Lmy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LmP;


# direct methods
.method constructor <init>(LmP;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, LmT;->a:LmP;

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
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, LmT;->a()Lmy;

    move-result-object v0

    return-object v0
.end method

.method public a()Lmy;
    .registers 2

    .prologue
    .line 196
    invoke-static {}, LmW;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmy;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 216
    invoke-static {}, LmW;->a()V

    .line 217
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
            "Lmy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, LmW;->a(LanD;)V

    .line 212
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, LmW;->a(LanG;)V

    .line 202
    return-void
.end method
