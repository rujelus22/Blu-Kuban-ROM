.class LSI;
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
        "LSy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LSF;


# direct methods
.method constructor <init>(LSF;)V
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, LSI;->a:LSF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LSy;
    .registers 2

    .prologue
    .line 224
    invoke-static {}, LSL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSy;

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
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 221
    invoke-virtual {p0}, LSI;->a()LSy;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 244
    invoke-static {}, LSL;->a()V

    .line 245
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
            "LSy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p1}, LSL;->a(LanD;)V

    .line 240
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, LSL;->a(LanG;)V

    .line 230
    return-void
.end method
