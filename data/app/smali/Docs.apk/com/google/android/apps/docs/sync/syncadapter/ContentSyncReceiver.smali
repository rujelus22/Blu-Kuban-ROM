.class public Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContentSyncReceiver.java"


# static fields
.field private static a:LTC;

.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "LTx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, LTC;

    invoke-direct {v0}, LTC;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Lld;)LTE;
    .registers 3
    .parameter

    .prologue
    .line 95
    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v0, p0}, LTC;->a(Lld;)LTE;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(LTx;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 88
    monitor-exit v1

    return-void

    .line 87
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 44
    invoke-static {p1}, Lld;->a(Landroid/content/Intent;)Lld;

    move-result-object v1

    .line 45
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LTD;

    .line 47
    sget-object v2, LTw;->a:[I

    invoke-virtual {v0}, LTD;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_80

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentSyncReceiver:Unexpected intent received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_32
    invoke-static {}, LTE;->a()LTE;

    move-result-object v0

    .line 50
    sget-object v2, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v2, v1, v0}, LTC;->a(Lld;LTE;)V

    .line 51
    invoke-static {v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;LTE;)V

    .line 75
    :goto_3e
    return-void

    .line 54
    :pswitch_3f
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)V

    .line 55
    invoke-static {}, LTE;->b()LTE;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;LTE;)V

    goto :goto_3e

    .line 58
    :pswitch_4c
    const-string v0, "bytes_loaded"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    const-string v0, "bytes_expected"

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 60
    invoke-static {v2, v3, v4, v5}, LTE;->a(JJ)LTE;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v2, v1, v0}, LTC;->a(Lld;LTE;)V

    .line 62
    invoke-static {v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;LTE;)V

    goto :goto_3e

    .line 65
    :pswitch_65
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)V

    .line 66
    const/4 v0, -0x1

    invoke-static {v0}, LTE;->a(I)LTE;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;LTE;)V

    goto :goto_3e

    .line 69
    :pswitch_73
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:LTC;

    invoke-virtual {v0, v1}, LTC;->a(Lld;)V

    .line 70
    invoke-static {}, LTE;->c()LTE;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Lld;LTE;)V

    goto :goto_3e

    .line 47
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3f
        :pswitch_4c
        :pswitch_65
        :pswitch_73
    .end packed-switch
.end method

.method private static declared-synchronized a(Lld;LTE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 81
    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTx;

    .line 82
    invoke-interface {v0, p0, p1}, LTx;->a(Lld;LTE;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 81
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    .line 84
    :cond_1c
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b(LTx;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    const-class v1, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 92
    monitor-exit v1

    return-void

    .line 91
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncReceiver;->a(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
