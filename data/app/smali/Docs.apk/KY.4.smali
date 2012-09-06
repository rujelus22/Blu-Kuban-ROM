.class LKY;
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
        "LLi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LKT;


# direct methods
.method constructor <init>(LKT;)V
    .registers 2
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, LKY;->a:LKT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LLi;
    .registers 2

    .prologue
    .line 360
    invoke-static {}, LLf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLi;

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
    .line 370
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 357
    invoke-virtual {p0}, LKY;->a()LLi;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 380
    invoke-static {}, LLf;->a()V

    .line 381
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
            "LLi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {p1}, LLf;->a(LanD;)V

    .line 376
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    invoke-static {p1}, LLf;->a(LanG;)V

    .line 366
    return-void
.end method
