.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 284
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 286
    :try_start_4
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 287
    if-gtz v1, :cond_e

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_e
    new-array v1, v1, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    .line 291
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 293
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3f

    move v2, v7

    .line 294
    :goto_1c
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 295
    aget-object v3, v1, v2

    move v4, v7

    .line 296
    :goto_22
    iget-object v0, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_42

    .line 297
    iget-object v0, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v6, v3, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v5, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_22

    .line 293
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1

    .line 294
    :cond_42
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 4
    .parameter "context"

    .prologue
    .line 100
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v1, :cond_12

    .line 102
    new-instance v1, Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    .line 104
    :cond_12
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    monitor-exit v0

    return-object v1

    .line 105
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 135
    :try_start_3
    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    if-nez v0, :cond_1d

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    iget-object v3, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v0, 0x0

    move v3, v0

    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v3, v0, :cond_48

    .line 143
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 145
    if-nez v0, :cond_41

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_22

    .line 151
    :cond_48
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 19
    .parameter

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 202
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_b6

    const/4 v3, 0x1

    move v13, v3

    .line 211
    :goto_30
    if-eqz v13, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolving type "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " scheme "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " of intent "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 216
    if-eqz v10, :cond_157

    .line 217
    if-eqz v13, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Action list: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    :cond_82
    const/4 v3, 0x0

    .line 220
    const/4 v9, 0x0

    move v14, v9

    move-object v15, v3

    :goto_86
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_117

    .line 221
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    move-object v11, v0

    .line 222
    if-eqz v13, :cond_aa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Matching against filter "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    :cond_aa
    iget-boolean v3, v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v3, :cond_ba

    .line 225
    if-eqz v13, :cond_109

    move-object v3, v15

    .line 220
    :goto_b1
    add-int/lit8 v9, v14, 0x1

    move v14, v9

    move-object v15, v3

    goto :goto_86

    .line 209
    :cond_b6
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_30

    .line 231
    :cond_ba
    iget-object v3, v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v9, "LocalBroadcastManager"

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    .line 233
    if-ltz v3, :cond_f0

    .line 234
    if-eqz v13, :cond_df

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter matched!  match=0x"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    :cond_df
    if-nez v15, :cond_15a

    .line 237
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :goto_e6
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v9, 0x1

    iput-boolean v9, v11, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_b1

    .line 267
    :catchall_ed
    move-exception v3

    monitor-exit v12
    :try_end_ef
    .catchall {:try_start_6 .. :try_end_ef} :catchall_ed

    throw v3

    .line 242
    :cond_f0
    if-eqz v13, :cond_109

    .line 244
    packed-switch v3, :pswitch_data_15c

    .line 249
    :try_start_f5
    const-string v3, "unknown reason"

    .line 251
    :goto_f7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Filter did not match: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_109
    move-object v3, v15

    goto :goto_b1

    .line 245
    :pswitch_10b
    const-string v3, "action"

    goto :goto_f7

    .line 246
    :pswitch_10e
    const-string v3, "category"

    goto :goto_f7

    .line 247
    :pswitch_111
    const-string v3, "data"

    goto :goto_f7

    .line 248
    :pswitch_114
    const-string v3, "type"

    goto :goto_f7

    .line 256
    :cond_117
    if-eqz v15, :cond_157

    .line 257
    const/4 v3, 0x0

    move v4, v3

    :goto_11b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_12e

    .line 258
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 257
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_11b

    .line 260
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    move-object v3, v0

    new-instance v4, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_154

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_154
    const/4 v3, 0x1

    monitor-exit v12

    .line 268
    :goto_156
    return v3

    .line 267
    :cond_157
    monitor-exit v12
    :try_end_158
    .catchall {:try_start_f5 .. :try_end_158} :catchall_ed

    .line 268
    const/4 v3, 0x0

    goto :goto_156

    :cond_15a
    move-object v3, v15

    goto :goto_e6

    .line 244
    :pswitch_data_15c
    .packed-switch -0x4
        :pswitch_10e
        :pswitch_10b
        :pswitch_111
        :pswitch_114
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 280
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 164
    iget-object v4, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 165
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 166
    if-nez v0, :cond_10

    .line 167
    monitor-exit v4

    .line 188
    :goto_f
    return-void

    :cond_10
    move v5, v9

    .line 169
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_5f

    .line 170
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v9

    .line 171
    :goto_1e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_5b

    .line 172
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 174
    if-eqz v2, :cond_57

    move v8, v9

    .line 175
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_4c

    .line 176
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v3, v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_64

    .line 177
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    add-int/lit8 v3, v8, -0x1

    .line 175
    :goto_48
    add-int/lit8 v3, v3, 0x1

    move v8, v3

    goto :goto_33

    .line 181
    :cond_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_57

    .line 182
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_57
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1e

    .line 169
    :cond_5b
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_11

    .line 187
    :cond_5f
    monitor-exit v4

    goto :goto_f

    :catchall_61
    move-exception v0

    monitor-exit v4
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_61

    throw v0

    :cond_64
    move v3, v8

    goto :goto_48
.end method
