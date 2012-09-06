.class public LcH;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 319
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lcq;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Ldd;->a:LanD;

    .line 325
    invoke-static {}, LcE;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lcq;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, Ldd;->b:LanD;

    .line 331
    return-void
.end method
