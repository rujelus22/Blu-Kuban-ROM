.class LSJ;
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
        "LRa;",
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
    .line 248
    iput-object p1, p0, LSJ;->a:LSF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LSB;
    .registers 2

    .prologue
    .line 251
    invoke-static {}, LSM;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSB;

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
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 248
    invoke-virtual {p0}, LSJ;->a()LSB;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 271
    invoke-static {}, LSM;->a()V

    .line 272
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
            "LRa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p1}, LSM;->a(LanD;)V

    .line 267
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    invoke-static {p1}, LSM;->a(LanG;)V

    .line 257
    return-void
.end method
