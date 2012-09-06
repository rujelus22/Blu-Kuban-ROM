.class public LGy;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LGm;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    invoke-static {}, LGA;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LGn;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, LGm;->a:LanD;

    .line 424
    return-void
.end method
