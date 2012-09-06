.class LTz;
.super LcI;
.source "ContentSyncService.java"


# instance fields
.field final synthetic a:LTy;


# direct methods
.method constructor <init>(LTy;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, LTz;->a:LTy;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, LTz;->a:LTy;

    iget-object v0, v0, LTy;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iget-object v1, p0, LTz;->a:LTy;

    iget-object v1, v1, LTy;->a:Lld;

    iget-object v2, p0, LTz;->a:LTy;

    iget-object v2, v2, LTy;->a:LVd;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LVd;)V

    .line 401
    return-void
.end method
