.class LSH;
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
        "LSw;",
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
    .line 194
    iput-object p1, p0, LSH;->a:LSF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LSw;
    .registers 2

    .prologue
    .line 197
    invoke-static {}, LSK;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSw;

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
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 194
    invoke-virtual {p0}, LSH;->a()LSw;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 217
    invoke-static {}, LSK;->a()V

    .line 218
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
            "LSw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p1}, LSK;->a(LanD;)V

    .line 213
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, LSK;->a(LanG;)V

    .line 203
    return-void
.end method
