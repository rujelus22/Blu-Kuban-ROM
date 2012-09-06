.class public Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;
.super Lcom/google/android/apps/docs/GuiceService;
.source "ContentSyncService.java"


# static fields
.field public static final a:J


# instance fields
.field private a:I

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LRU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LTC;

.field public a:LVg;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LVw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LXL;

.field public a:LZC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZR;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LVg;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/ExecutorService;

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private b:J

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lld;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceService;-><init>()V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/util/Map;

    .line 171
    new-instance v0, LTC;

    invoke-direct {v0}, LTC;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 499
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exportFormat"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 501
    return-object v0
.end method

.method private a(LkR;)Landroid/util/Pair;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p1}, LkR;->a()Lld;

    move-result-object v0

    .line 513
    invoke-virtual {p1}, LkR;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 514
    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LVw;

    invoke-interface {v1, v0}, LVw;->a(Lld;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_10
    if-nez v0, :cond_1b

    .line 519
    const/4 v0, 0x0

    .line 570
    :goto_13
    return-object v0

    .line 516
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LRU;

    invoke-interface {v1, v0}, LRU;->a(Lld;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 522
    :cond_1b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 535
    sget-object v0, LTA;->b:[I

    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v2

    invoke-virtual {v2}, LkU;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_aa

    .line 562
    invoke-virtual {p1}, LkR;->b()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 563
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LVw;

    invoke-interface {v0}, LVw;->a()Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_3a
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_13

    .line 537
    :pswitch_41
    const-string v0, "zip"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "honorPageSize"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "footnotesAsEndnotes"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "showComments"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 547
    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkU;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 550
    :pswitch_70
    const-string v0, "pdf"

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 551
    const-string v0, "application/pdf"

    goto :goto_3a

    .line 554
    :pswitch_79
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LFX;

    const-string v2, "offlineKixReadFromIndexJson"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 556
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "exportFormat"

    const-string v3, "zip"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "idxp"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 558
    invoke-virtual {p1}, LkR;->a()LkU;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(LkU;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 565
    :cond_a5
    invoke-virtual {p1}, LkR;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 535
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_41
        :pswitch_70
        :pswitch_79
    .end packed-switch
.end method

.method private a(Lld;LVd;)Ljava/util/concurrent/Future;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lld;",
            "LVd;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LTy;

    invoke-direct {v1, p0, p1, p2}, LTy;-><init>(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LVd;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 405
    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0}, LTC;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v1}, LTC;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v1}, LTC;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v1}, LTC;->a()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_7a

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.docs.sync.syncadapter.OVERALL_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tasks_active"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v2}, LTC;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tasks_completed"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v2}, LTC;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tasks_failed"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v2}, LTC;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tasks_canceled"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v2}, LTC;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "total_bytes_loaded"

    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v2}, LTC;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "service_start_time"

    iget-wide v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 225
    const-string v1, "com.google.android.apps.docs.permission.SYNC_STATUS"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 227
    :cond_7a
    return-void
.end method

.method public static a(Landroid/content/Context;Lld;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;Z)V

    .line 601
    return-void
.end method

.method public static a(Landroid/content/Context;Lld;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.SYNC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 610
    const-string v1, "hide_notification"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 612
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LTE;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LTE;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LVd;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LVd;)V

    return-void
.end method

.method private a(LkR;LVd;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/util/Map;

    invoke-virtual {p1}, LkR;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVg;

    .line 580
    if-nez v0, :cond_10

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LVg;

    .line 584
    :cond_10
    invoke-virtual {p1}, LkR;->a()Lld;

    move-result-object v2

    .line 585
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(LkR;)Landroid/util/Pair;

    move-result-object v4

    .line 586
    if-eqz v4, :cond_35

    .line 587
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 589
    iget-object v1, v2, Lld;->b:Ljava/lang/String;

    iget-object v2, v2, Lld;->a:Ljava/lang/String;

    sget-object v5, LQM;->a:LQM;

    invoke-virtual {v5}, LQM;->name()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, LVg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)V

    .line 594
    return-void

    .line 592
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Null content URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lld;LTE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, p1}, LTC;->a(Lld;)LTE;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_11

    invoke-virtual {v0}, LTE;->a()LTD;

    move-result-object v0

    sget-object v1, LTD;->e:LTD;

    if-ne v0, v1, :cond_11

    .line 188
    :goto_10
    return-void

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, p1, p2}, LTC;->b(Lld;LTE;)V

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b(Lld;LTE;)V

    .line 187
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a()V

    goto :goto_10
.end method

.method private a(Lld;LVd;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x1

    const-wide/16 v0, 0x0

    .line 410
    .line 411
    const/4 v3, 0x1

    .line 413
    :try_start_5
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 414
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 415
    if-nez v2, :cond_73

    .line 417
    const-string v2, "ContentSyncService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deleted before content is synced"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3e2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_37} :catch_ff
    .catch LarL; {:try_start_5 .. :try_end_37} :catch_15a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_37} :catch_1ab
    .catch Lasn; {:try_start_5 .. :try_end_37} :catch_1fc
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_37} :catch_24d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5 .. :try_end_37} :catch_29e
    .catch LJi; {:try_start_5 .. :try_end_37} :catch_2ef
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_37} :catch_340
    .catch LJk; {:try_start_5 .. :try_end_37} :catch_391

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_3a
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v3, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_70

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v3, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_6a

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v3

    .line 468
    cmp-long v0, v3, v0

    if-nez v0, :cond_62

    .line 469
    :cond_62
    add-long v0, v3, v11

    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 476
    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6f} :catch_42d

    .line 484
    :goto_6f
    return-void

    .line 460
    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0

    .line 422
    :cond_73
    :try_start_73
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LZR;

    invoke-interface {v4}, LZR;->b()V

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 425
    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(LkR;LVd;)V

    .line 427
    iget-object v6, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v6, p1}, LTC;->a(Lld;)LTE;

    move-result-object v6

    invoke-virtual {v6}, LTE;->a()J

    move-result-wide v6

    long-to-int v6, v6

    .line 428
    iget-object v7, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    const-string v8, "pinning"

    const-string v9, "content_sync_succeed"

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    const/4 v3, 0x0

    .line 432
    const-string v6, "ContentSyncService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Syncing file number  document id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " completed.  Time taken: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v7, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_73 .. :try_end_c1} :catchall_f8

    .line 435
    :try_start_c1
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LZR;

    invoke-interface {v2}, LZR;->c()V
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_3e2
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c6} :catch_ff
    .catch LarL; {:try_start_c1 .. :try_end_c6} :catch_15a
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c6} :catch_1ab
    .catch Lasn; {:try_start_c1 .. :try_end_c6} :catch_1fc
    .catch Ljava/lang/InterruptedException; {:try_start_c1 .. :try_end_c6} :catch_24d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_c1 .. :try_end_c6} :catch_29e
    .catch LJi; {:try_start_c1 .. :try_end_c6} :catch_2ef
    .catch Ljava/net/URISyntaxException; {:try_start_c1 .. :try_end_c6} :catch_340
    .catch LJk; {:try_start_c1 .. :try_end_c6} :catch_391

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_c9
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v3, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_146

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v3, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_f1

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v3

    .line 468
    cmp-long v3, v3, v0

    if-nez v3, :cond_149

    .line 481
    :cond_f1
    :goto_f1
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 435
    :catchall_f8
    move-exception v2

    :try_start_f9
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LZR;

    invoke-interface {v4}, LZR;->c()V

    throw v2
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_3e2
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_ff} :catch_ff
    .catch LarL; {:try_start_f9 .. :try_end_ff} :catch_15a
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_ff} :catch_1ab
    .catch Lasn; {:try_start_f9 .. :try_end_ff} :catch_1fc
    .catch Ljava/lang/InterruptedException; {:try_start_f9 .. :try_end_ff} :catch_24d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_f9 .. :try_end_ff} :catch_29e
    .catch LJi; {:try_start_f9 .. :try_end_ff} :catch_2ef
    .catch Ljava/net/URISyntaxException; {:try_start_f9 .. :try_end_ff} :catch_340
    .catch LJk; {:try_start_f9 .. :try_end_ff} :catch_391

    .line 437
    :catch_ff
    move-exception v2

    .line 438
    :try_start_100
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_106
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_114
    .catchall {:try_start_106 .. :try_end_114} :catchall_150

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_13a

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_130

    if-eqz v3, :cond_13a

    .line 469
    :cond_130
    if-eqz v3, :cond_134

    add-long v0, v4, v11

    :cond_134
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_13a
    if-eqz v3, :cond_153

    .line 476
    :try_start_13c
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_141
    .catch Ljava/lang/InterruptedException; {:try_start_13c .. :try_end_141} :catch_143

    goto/16 :goto_6f

    .line 477
    :catch_143
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_146
    move-exception v0

    :try_start_147
    monitor-exit v2
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    throw v0

    .line 469
    :cond_149
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    goto :goto_f1

    .line 460
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0

    .line 481
    :cond_153
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 439
    :catch_15a
    move-exception v2

    .line 440
    :try_start_15b
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_15e
    .catchall {:try_start_15b .. :try_end_15e} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_161
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_16f
    .catchall {:try_start_161 .. :try_end_16f} :catchall_1a1

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_195

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_18b

    if-eqz v3, :cond_195

    .line 469
    :cond_18b
    if-eqz v3, :cond_18f

    add-long v0, v4, v11

    :cond_18f
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_195
    if-eqz v3, :cond_1a4

    .line 476
    :try_start_197
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_19c
    .catch Ljava/lang/InterruptedException; {:try_start_197 .. :try_end_19c} :catch_19e

    goto/16 :goto_6f

    .line 477
    :catch_19e
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_1a1
    move-exception v0

    :try_start_1a2
    monitor-exit v2
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    throw v0

    .line 481
    :cond_1a4
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 441
    :catch_1ab
    move-exception v2

    .line 442
    :try_start_1ac
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_1af
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_1b2
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_1c0
    .catchall {:try_start_1b2 .. :try_end_1c0} :catchall_1f2

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_1e6

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_1dc

    if-eqz v3, :cond_1e6

    .line 469
    :cond_1dc
    if-eqz v3, :cond_1e0

    add-long v0, v4, v11

    :cond_1e0
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_1e6
    if-eqz v3, :cond_1f5

    .line 476
    :try_start_1e8
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_1ed
    .catch Ljava/lang/InterruptedException; {:try_start_1e8 .. :try_end_1ed} :catch_1ef

    goto/16 :goto_6f

    .line 477
    :catch_1ef
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_1f2
    move-exception v0

    :try_start_1f3
    monitor-exit v2
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_1f2

    throw v0

    .line 481
    :cond_1f5
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 443
    :catch_1fc
    move-exception v2

    .line 444
    :try_start_1fd
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_203
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_211
    .catchall {:try_start_203 .. :try_end_211} :catchall_243

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_237

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_22d

    if-eqz v3, :cond_237

    .line 469
    :cond_22d
    if-eqz v3, :cond_231

    add-long v0, v4, v11

    :cond_231
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_237
    if-eqz v3, :cond_246

    .line 476
    :try_start_239
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_23e
    .catch Ljava/lang/InterruptedException; {:try_start_239 .. :try_end_23e} :catch_240

    goto/16 :goto_6f

    .line 477
    :catch_240
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_243
    move-exception v0

    :try_start_244
    monitor-exit v2
    :try_end_245
    .catchall {:try_start_244 .. :try_end_245} :catchall_243

    throw v0

    .line 481
    :cond_246
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 445
    :catch_24d
    move-exception v2

    .line 446
    :try_start_24e
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_251
    .catchall {:try_start_24e .. :try_end_251} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_254
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_262
    .catchall {:try_start_254 .. :try_end_262} :catchall_294

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_288

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_27e

    if-eqz v3, :cond_288

    .line 469
    :cond_27e
    if-eqz v3, :cond_282

    add-long v0, v4, v11

    :cond_282
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_288
    if-eqz v3, :cond_297

    .line 476
    :try_start_28a
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_28f
    .catch Ljava/lang/InterruptedException; {:try_start_28a .. :try_end_28f} :catch_291

    goto/16 :goto_6f

    .line 477
    :catch_291
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_294
    move-exception v0

    :try_start_295
    monitor-exit v2
    :try_end_296
    .catchall {:try_start_295 .. :try_end_296} :catchall_294

    throw v0

    .line 481
    :cond_297
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 447
    :catch_29e
    move-exception v2

    .line 448
    :try_start_29f
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_2a2
    .catchall {:try_start_29f .. :try_end_2a2} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_2a5
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_2b3
    .catchall {:try_start_2a5 .. :try_end_2b3} :catchall_2e5

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_2d9

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_2cf

    if-eqz v3, :cond_2d9

    .line 469
    :cond_2cf
    if-eqz v3, :cond_2d3

    add-long v0, v4, v11

    :cond_2d3
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_2d9
    if-eqz v3, :cond_2e8

    .line 476
    :try_start_2db
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_2e0
    .catch Ljava/lang/InterruptedException; {:try_start_2db .. :try_end_2e0} :catch_2e2

    goto/16 :goto_6f

    .line 477
    :catch_2e2
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_2e5
    move-exception v0

    :try_start_2e6
    monitor-exit v2
    :try_end_2e7
    .catchall {:try_start_2e6 .. :try_end_2e7} :catchall_2e5

    throw v0

    .line 481
    :cond_2e8
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 449
    :catch_2ef
    move-exception v2

    .line 450
    :try_start_2f0
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_2f6
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_304
    .catchall {:try_start_2f6 .. :try_end_304} :catchall_336

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_32a

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_320

    if-eqz v3, :cond_32a

    .line 469
    :cond_320
    if-eqz v3, :cond_324

    add-long v0, v4, v11

    :cond_324
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_32a
    if-eqz v3, :cond_339

    .line 476
    :try_start_32c
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_331
    .catch Ljava/lang/InterruptedException; {:try_start_32c .. :try_end_331} :catch_333

    goto/16 :goto_6f

    .line 477
    :catch_333
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_336
    move-exception v0

    :try_start_337
    monitor-exit v2
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_336

    throw v0

    .line 481
    :cond_339
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 451
    :catch_340
    move-exception v2

    .line 452
    :try_start_341
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_344
    .catchall {:try_start_341 .. :try_end_344} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_347
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_355
    .catchall {:try_start_347 .. :try_end_355} :catchall_387

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_37b

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_371

    if-eqz v3, :cond_37b

    .line 469
    :cond_371
    if-eqz v3, :cond_375

    add-long v0, v4, v11

    :cond_375
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_37b
    if-eqz v3, :cond_38a

    .line 476
    :try_start_37d
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_382
    .catch Ljava/lang/InterruptedException; {:try_start_37d .. :try_end_382} :catch_384

    goto/16 :goto_6f

    .line 477
    :catch_384
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_387
    move-exception v0

    :try_start_388
    monitor-exit v2
    :try_end_389
    .catchall {:try_start_388 .. :try_end_389} :catchall_387

    throw v0

    .line 481
    :cond_38a
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 453
    :catch_391
    move-exception v2

    .line 454
    :try_start_392
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Ljava/lang/Exception;Lld;)V
    :try_end_395
    .catchall {:try_start_392 .. :try_end_395} :catchall_3e2

    .line 456
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_398
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v4, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v2
    :try_end_3a6
    .catchall {:try_start_398 .. :try_end_3a6} :catchall_3d8

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v4, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 465
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_3cc

    .line 467
    invoke-virtual {v2}, LkR;->d()J

    move-result-wide v4

    .line 468
    cmp-long v6, v4, v0

    if-nez v6, :cond_3c2

    if-eqz v3, :cond_3cc

    .line 469
    :cond_3c2
    if-eqz v3, :cond_3c6

    add-long v0, v4, v11

    :cond_3c6
    invoke-virtual {v2, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v2}, LkR;->c()V

    .line 474
    :cond_3cc
    if-eqz v3, :cond_3db

    .line 476
    :try_start_3ce
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_3d3
    .catch Ljava/lang/InterruptedException; {:try_start_3ce .. :try_end_3d3} :catch_3d5

    goto/16 :goto_6f

    .line 477
    :catch_3d5
    move-exception v0

    goto/16 :goto_6f

    .line 460
    :catchall_3d8
    move-exception v0

    :try_start_3d9
    monitor-exit v2
    :try_end_3da
    .catchall {:try_start_3d9 .. :try_end_3da} :catchall_3d8

    throw v0

    .line 481
    :cond_3db
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto/16 :goto_6f

    .line 456
    :catchall_3e2
    move-exception v2

    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 457
    :try_start_3e6
    iget-object v5, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v5, p1}, LTC;->a(Lld;)V

    .line 458
    iget-object v5, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 460
    monitor-exit v4
    :try_end_3f4
    .catchall {:try_start_3e6 .. :try_end_3f4} :catchall_422

    .line 464
    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v5, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v4

    .line 465
    iget-object v5, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Llu;

    iget-object v6, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v4

    .line 466
    if-eqz v4, :cond_41a

    .line 467
    invoke-virtual {v4}, LkR;->d()J

    move-result-wide v5

    .line 468
    cmp-long v7, v5, v0

    if-nez v7, :cond_410

    if-eqz v3, :cond_41a

    .line 469
    :cond_410
    if-eqz v3, :cond_414

    add-long v0, v5, v11

    :cond_414
    invoke-virtual {v4, v0, v1}, LkR;->d(J)V

    .line 470
    invoke-virtual {v4}, LkR;->c()V

    .line 474
    :cond_41a
    if-eqz v3, :cond_425

    .line 476
    :try_start_41c
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->b()V
    :try_end_421
    .catch Ljava/lang/InterruptedException; {:try_start_41c .. :try_end_421} :catch_42b

    .line 481
    :goto_421
    throw v2

    .line 460
    :catchall_422
    move-exception v0

    :try_start_423
    monitor-exit v4
    :try_end_424
    .catchall {:try_start_423 .. :try_end_424} :catchall_422

    throw v0

    .line 481
    :cond_425
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    invoke-virtual {v0}, LXL;->a()V

    goto :goto_421

    .line 477
    :catch_42b
    move-exception v0

    goto :goto_421

    :catch_42d
    move-exception v0

    goto/16 :goto_6f
.end method

.method private b()V
    .registers 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0}, LTC;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 387
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a()V

    .line 388
    iget v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->stopSelf(I)V

    .line 390
    :cond_13
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static b(Landroid/content/Context;Lld;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    const-string v1, "com.google.android.apps.docs.sync.syncadapter.CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 622
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 623
    return-void
.end method

.method private b(Lld;LTE;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.docs.sync.syncadapter.NEW_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lld;->a(Landroid/content/Intent;)V

    .line 193
    sget-object v1, LTA;->a:[I

    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v2

    invoke-virtual {v2}, LTD;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_62

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_40
    const-string v1, "bytes_loaded"

    invoke-virtual {p2}, LTE;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v1, "bytes_expected"

    invoke-virtual {p2}, LTE;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    :goto_52
    :pswitch_52
    const-string v1, "com.google.android.apps.docs.permission.SYNC_STATUS"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 210
    return-void

    .line 202
    :pswitch_58
    const-string v1, "error_code"

    invoke-virtual {p2}, LTE;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_52

    .line 193
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_40
        :pswitch_58
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method a(Ljava/lang/Exception;Lld;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 488
    const-string v0, "ContentSyncService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error syncing id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lld;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    const/4 v0, -0x1

    invoke-static {v0}, LTE;->a(I)LTE;

    move-result-object v0

    .line 491
    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LTE;)V

    .line 493
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, p2}, LTC;->a(Lld;)LTE;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    const-string v2, "pinning"

    const-string v3, "content_sync_error"

    const/4 v4, 0x0

    invoke-virtual {v0}, LTE;->a()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 496
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v1, 0x4

    .line 266
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceService;->onCreate()V

    .line 267
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1d

    .line 274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 276
    :cond_1d
    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/util/concurrent/ExecutorService;

    .line 278
    new-instance v0, LXL;

    iget-object v1, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LFX;

    const-string v2, "contentSyncBackoffMinWait"

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3}, LFX;->a(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LFX;

    const-string v4, "contentSyncBackoffWaitGrowthFactor"

    const-wide/high16 v5, 0x4000

    invoke-interface {v3, v4, v5, v6}, LFX;->a(Ljava/lang/String;D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LFX;

    const-string v6, "contentSyncBackoffMaxWait"

    const v7, 0x927c0

    invoke-interface {v5, v6, v7}, LFX;->a(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct/range {v0 .. v6}, LXL;-><init>(JDJ)V

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXL;

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    invoke-virtual {v0}, LdE;->a()V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:J

    .line 289
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 302
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceService;->onDestroy()V

    .line 303
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/GuiceService;->onStartCommand(Landroid/content/Intent;II)I

    .line 316
    invoke-static {p1}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v1

    .line 318
    iget-object v0, v1, Lld;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    const-string v2, "Action should not be null"

    invoke-static {v0, v2}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "com.google.android.apps.docs.sync.syncadapter.SYNC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 323
    const-string v0, "hide_notification"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_27
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v3, v1}, LTC;->a(Lld;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 326
    monitor-exit v2

    .line 378
    :goto_30
    return v9

    .line 328
    :cond_31
    new-instance v3, LTB;

    iget-object v4, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LXC;

    invoke-direct {v3, p0, v1, v4}, LTB;-><init>(Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;Lld;LXC;)V

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LVd;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 329
    invoke-static {}, LTE;->a()LTE;

    move-result-object v4

    .line 330
    invoke-virtual {v4, v0}, LTE;->a(Z)V

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, v1, v4}, LTC;->a(Lld;LTE;)V

    .line 333
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LTE;)V

    .line 334
    iput p3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:I

    .line 336
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    const-string v1, "pinning"

    const-string v3, "request_content_sync"

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v3, v4, v5}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    monitor-exit v2

    goto :goto_30

    :catchall_5f
    move-exception v0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_5f

    throw v0

    .line 341
    :cond_62
    const-string v2, "com.google.android.apps.docs.sync.syncadapter.CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 342
    iget-object v2, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_6d
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 346
    invoke-static {}, LTE;->c()LTE;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LTE;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 348
    if-eqz v0, :cond_8a

    .line 353
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 356
    :cond_8a
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)LTE;

    move-result-object v0

    .line 357
    iget-object v3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LdE;

    const-string v4, "pinning"

    const-string v5, "content_sync_cancelled"

    const/4 v6, 0x0

    invoke-virtual {v0}, LTE;->a()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v4, v5, v6, v0}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)V

    .line 364
    :cond_a4
    iput p3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:I

    .line 365
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    .line 366
    monitor-exit v2

    goto :goto_30

    :catchall_ab
    move-exception v0

    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_6d .. :try_end_ad} :catchall_ab

    throw v0

    .line 369
    :cond_ae
    const-string v2, "com.google.android.apps.docs.sync.syncadapter.QUERY_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)LTE;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_c1

    .line 372
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Lld;LTE;)V

    .line 375
    :cond_c1
    iput p3, p0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a:I

    .line 376
    invoke-direct {p0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->b()V

    goto/16 :goto_30

    .line 381
    :cond_c8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
