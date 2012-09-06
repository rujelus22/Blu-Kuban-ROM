.class public LUG;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;)V
    .registers 2
    .parameter

    .prologue
    .line 1172
    invoke-static {}, LUN;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->ap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTH;

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;->a:LTH;

    .line 1178
    return-void
.end method
