.class LzR;
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
        "LzH;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LzO;


# direct methods
.method constructor <init>(LzO;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, LzR;->a:LzO;

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
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, LzR;->a()LzH;

    move-result-object v0

    return-object v0
.end method

.method public a()LzH;
    .registers 2

    .prologue
    .line 165
    invoke-static {}, LzU;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzH;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 185
    invoke-static {}, LzU;->a()V

    .line 186
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
            "LzH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {p1}, LzU;->a(LanD;)V

    .line 181
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    invoke-static {p1}, LzU;->a(LanG;)V

    .line 171
    return-void
.end method
