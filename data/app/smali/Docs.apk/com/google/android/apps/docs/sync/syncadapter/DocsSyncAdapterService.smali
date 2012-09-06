.class public Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;
.super Lcom/google/android/apps/docs/GuiceService;
.source "DocsSyncAdapterService.java"


# instance fields
.field public a:LTH;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/DocsSyncAdapterService;->a:LTH;

    invoke-virtual {v0}, LTH;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
