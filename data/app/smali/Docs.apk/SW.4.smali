.class LSW;
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
        "LSS;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LSU;


# direct methods
.method constructor <init>(LSU;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, LSW;->a:LSU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LSS;
    .registers 2

    .prologue
    .line 250
    invoke-static {}, LTa;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSS;

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
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 247
    invoke-virtual {p0}, LSW;->a()LSS;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 270
    invoke-static {}, LTa;->a()V

    .line 271
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
            "LSS;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p1}, LTa;->a(LanD;)V

    .line 266
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    invoke-static {p1}, LTa;->a(LanG;)V

    .line 256
    return-void
.end method
