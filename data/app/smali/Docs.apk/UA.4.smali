.class LUA;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LUb;


# direct methods
.method constructor <init>(LUb;)V
    .registers 2
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, LUA;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1276
    invoke-static {p1}, LUI;->a(Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;)V

    .line 1278
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1273
    check-cast p1, Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;

    invoke-virtual {p0, p1}, LUA;->a(Lcom/google/android/apps/docs/sync/syncadapter/OverallSyncStatusReceiver;)V

    return-void
.end method
