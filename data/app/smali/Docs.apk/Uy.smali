.class LUy;
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
        "Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;",
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
    .line 1257
    iput-object p1, p0, LUy;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;)V
    .registers 2
    .parameter

    .prologue
    .line 1260
    invoke-static {p1}, LUG;->a(Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;)V

    .line 1262
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1257
    check-cast p1, Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;

    invoke-virtual {p0, p1}, LUy;->a(Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;)V

    return-void
.end method
