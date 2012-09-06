.class public LTy;
.super LcI;
.source "ContentSyncService.java"


# instance fields
.field final synthetic a:LVd;

.field final synthetic a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

.field final synthetic a:Lld;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LVd;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, LTy;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iput-object p2, p0, LTy;->a:Lld;

    iput-object p3, p0, LTy;->a:LVd;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 397
    iget-object v0, p0, LTy;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iget-object v0, v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LZC;

    iget-object v1, p0, LTy;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    const-string v2, "ContentSyncService"

    new-instance v3, LTz;

    invoke-direct {v3, p0}, LTz;-><init>(LTy;)V

    invoke-interface {v0, v1, v2, v3}, LZC;->a(Landroid/content/Context;Ljava/lang/String;LcI;)V

    .line 403
    return-void
.end method
