.class public LXS;
.super Ljava/lang/Object;
.source "FutureUtils.java"


# static fields
.field private static final a:LalJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LalJ",
            "<",
            "LalU",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, LXT;

    invoke-direct {v0}, LXT;-><init>()V

    sput-object v0, LXS;->a:LalJ;

    return-void
.end method

.method public static a(LalU;)LalU;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LalU",
            "<+",
            "LalU",
            "<+TV;>;>;)",
            "LalU",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, LXS;->a:LalJ;

    invoke-static {p0, v0}, LalO;->a(LalU;LalJ;)LalU;

    move-result-object v0

    return-object v0
.end method
