.class LVD;
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
        "LVJ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LVB;


# direct methods
.method constructor <init>(LVB;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, LVD;->a:LVB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LVJ;
    .registers 2

    .prologue
    .line 211
    invoke-static {}, LVH;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVJ;

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
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 208
    invoke-virtual {p0}, LVD;->a()LVJ;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 231
    invoke-static {}, LVH;->a()V

    .line 232
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
            "LVJ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {p1}, LVH;->a(LanD;)V

    .line 227
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    invoke-static {p1}, LVH;->a(LanG;)V

    .line 217
    return-void
.end method
