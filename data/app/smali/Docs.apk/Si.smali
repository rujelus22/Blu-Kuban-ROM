.class public LSi;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LRY;)V
    .registers 2
    .parameter

    .prologue
    .line 332
    invoke-static {}, LJD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LRZ;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJP;

    iput-object v0, p0, LRY;->a:LJP;

    .line 338
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LRZ;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LRY;->a:LanD;

    .line 344
    return-void
.end method
