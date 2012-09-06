.class LUn;
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
        "Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;",
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
    .line 1233
    iput-object p1, p0, LUn;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;)V
    .registers 2
    .parameter

    .prologue
    .line 1236
    invoke-static {p1}, LUE;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;)V

    .line 1238
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1233
    check-cast p1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    invoke-virtual {p0, p1}, LUn;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;)V

    return-void
.end method
