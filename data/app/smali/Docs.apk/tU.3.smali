.class public final LtU;
.super Ljava/lang/Object;
.source "UploadQueueService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:LXy;


# direct methods
.method public constructor <init>(LXy;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, LtU;->a:LXy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 311
    check-cast p2, LtV;

    invoke-virtual {p2}, LtV;->a()Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)Lck;

    move-result-object v1

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 314
    iget-object v1, p0, LtU;->a:LXy;

    invoke-interface {v1, v0}, LXy;->a(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter

    .prologue
    .line 319
    return-void
.end method
