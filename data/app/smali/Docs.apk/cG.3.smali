.class public LcG;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 336
    invoke-static {}, LcE;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lcq;->q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LcI;->b:LanD;

    .line 342
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lcq;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LcI;->a:LanD;

    .line 348
    return-void
.end method
