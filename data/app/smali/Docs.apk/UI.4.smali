.class public LUI;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1212
    invoke-static {}, LLe;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LUb;->au(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLh;

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;->a:LLh;

    .line 1218
    return-void
.end method
