.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;

.field private final mReceivers:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 9

    const/4 v2, 0x0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    monitor-exit v1

    return-void

    :cond_e
    new-array v4, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3f

    move v3, v2

    :goto_1c
    array-length v0, v4

    if-ge v3, v0, :cond_1

    aget-object v5, v4, v3

    move v1, v2

    :goto_22
    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v7, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 4

    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_12

    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    :cond_12
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_16

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    new-instance v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v3, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_48

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    :cond_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v13

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_bd

    const/4 v1, 0x1

    move v12, v1

    :goto_2d
    if-eqz v12, :cond_59

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Resolving type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    if-eqz v8, :cond_15a

    if-eqz v12, :cond_81

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Action list: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    const/4 v10, 0x0

    const/4 v1, 0x0

    move v11, v1

    :goto_84
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_11f

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    move-object v9, v0

    if-eqz v12, :cond_aa

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "Matching against filter "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    iget-boolean v1, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_c1

    if-eqz v12, :cond_111

    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    :goto_b8
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v10, v1

    goto :goto_84

    :cond_bd
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_2d

    :cond_c1
    iget-object v1, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_f6

    if-eqz v12, :cond_e5

    const-string v7, "LocalBroadcastManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "  Filter matched!  match=0x"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e5
    if-nez v10, :cond_15d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_ec
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    iput-boolean v7, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z
    :try_end_f2
    .catchall {:try_start_5 .. :try_end_f2} :catchall_f3

    goto :goto_b8

    :catchall_f3
    move-exception v1

    monitor-exit v13

    throw v1

    :cond_f6
    if-eqz v12, :cond_111

    packed-switch v1, :pswitch_data_160

    :try_start_fb
    const-string v1, "unknown reason"

    :goto_fd
    const-string v7, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "  Filter did not match: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    move-object v1, v10

    goto :goto_b8

    :pswitch_113
    const-string v1, "action"

    goto :goto_fd

    :pswitch_116
    const-string v1, "category"

    goto :goto_fd

    :pswitch_119
    const-string v1, "data"

    goto :goto_fd

    :pswitch_11c
    const-string v1, "type"

    goto :goto_fd

    :cond_11f
    if-eqz v10, :cond_15a

    const/4 v1, 0x0

    move v2, v1

    :goto_123
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_136

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_123

    :cond_136
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_157

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_157
    const/4 v1, 0x1

    monitor-exit v13
    :try_end_159
    .catchall {:try_start_fb .. :try_end_159} :catchall_f3

    :goto_159
    return v1

    :cond_15a
    monitor-exit v13

    const/4 v1, 0x0

    goto :goto_159

    :cond_15d
    move-object v1, v10

    goto :goto_ec

    nop

    :pswitch_data_160
    .packed-switch -0x4
        :pswitch_116
        :pswitch_113
        :pswitch_119
        :pswitch_11c
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 12

    const/4 v5, 0x0

    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_10

    monitor-exit v8

    :goto_f
    return-void

    :cond_10
    move v7, v5

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_5e

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v5

    :goto_1e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_5a

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_56

    move v4, v5

    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_4b

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v3, v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_63

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v4, -0x1

    :goto_48
    add-int/lit8 v4, v3, 0x1

    goto :goto_33

    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_56

    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1e

    :cond_5a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_11

    :cond_5e
    monitor-exit v8
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_60

    goto :goto_f

    :catchall_60
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_63
    move v3, v4

    goto :goto_48
.end method
