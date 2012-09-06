.class LMt;
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
        "LMb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LMq;


# direct methods
.method constructor <init>(LMq;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LMt;->a:LMq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LMb;
    .registers 2

    .prologue
    .line 116
    invoke-static {}, LMv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb;

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
    .line 126
    const-class v0, LanN;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, LMt;->a()LMb;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 136
    invoke-static {}, LMv;->a()V

    .line 137
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
            "LMb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, LMv;->a(LanD;)V

    .line 132
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-static {p1}, LMv;->a(LanG;)V

    .line 122
    return-void
.end method
