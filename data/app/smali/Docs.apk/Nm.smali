.class public LNm;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 572
    invoke-static {}, Lj;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LME;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LMA;->a:LanD;

    .line 578
    invoke-static {}, LcE;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LME;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    sput-object v0, LMA;->b:LanD;

    .line 584
    return-void
.end method
