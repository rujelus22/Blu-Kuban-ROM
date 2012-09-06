.class public LTB;
.super LTu;
.source "ContentSyncService.java"


# instance fields
.field private a:J

.field private final a:LXC;

.field private final a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

.field private final a:Lld;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LXC;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, LTu;-><init>()V

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LTB;->a:J

    .line 236
    iput-object p1, p0, LTB;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    .line 237
    iput-object p2, p0, LTB;->a:Lld;

    .line 238
    iput-object p3, p0, LTB;->a:LXC;

    .line 239
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 253
    invoke-static {p1}, LTE;->a(I)LTE;

    move-result-object v0

    .line 254
    iget-object v1, p0, LTB;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iget-object v2, p0, LTB;->a:Lld;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LTE;)V

    .line 255
    return-void
.end method

.method public a(JJ)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, LTB;->a:LXC;

    invoke-interface {v0}, LXC;->a()J

    move-result-wide v0

    .line 244
    iget-wide v2, p0, LTB;->a:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1d

    .line 245
    iput-wide v0, p0, LTB;->a:J

    .line 246
    invoke-static {p1, p2, p3, p4}, LTE;->a(JJ)LTE;

    move-result-object v0

    .line 247
    iget-object v1, p0, LTB;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iget-object v2, p0, LTB;->a:Lld;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LTE;)V

    .line 249
    :cond_1d
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 259
    invoke-static {}, LTE;->b()LTE;

    move-result-object v0

    .line 260
    iget-object v1, p0, LTB;->a:Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    iget-object v2, p0, LTB;->a:Lld;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LTE;)V

    .line 261
    return-void
.end method
