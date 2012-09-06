.class public final Ldbxyzptlk/a/g;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Ldbxyzptlk/a/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/ArrayList;

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldbxyzptlk/a/g;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/a/g;->d:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Ldbxyzptlk/a/g;->a:Landroid/content/Context;

    .line 110
    new-instance v0, Ldbxyzptlk/a/h;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldbxyzptlk/a/h;-><init>(Ldbxyzptlk/a/g;Landroid/os/Looper;)V

    iput-object v0, p0, Ldbxyzptlk/a/g;->e:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method public static a(Landroid/content/Context;)Ldbxyzptlk/a/g;
    .registers 4
    .parameter

    .prologue
    .line 100
    sget-object v1, Ldbxyzptlk/a/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    sget-object v0, Ldbxyzptlk/a/g;->g:Ldbxyzptlk/a/g;

    if-nez v0, :cond_12

    .line 102
    new-instance v0, Ldbxyzptlk/a/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ldbxyzptlk/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldbxyzptlk/a/g;->g:Ldbxyzptlk/a/g;

    .line 104
    :cond_12
    sget-object v0, Ldbxyzptlk/a/g;->g:Ldbxyzptlk/a/g;

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private a()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 284
    .line 285
    :cond_1
    iget-object v1, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 286
    :try_start_4
    iget-object v0, p0, Ldbxyzptlk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 287
    if-gtz v0, :cond_e

    .line 288
    monitor-exit v1

    return-void

    .line 290
    :cond_e
    new-array v4, v0, [Ldbxyzptlk/a/i;

    .line 291
    iget-object v0, p0, Ldbxyzptlk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Ldbxyzptlk/a/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3f

    move v3, v2

    .line 294
    :goto_1c
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 295
    aget-object v5, v4, v3

    move v1, v2

    .line 296
    :goto_22
    iget-object v0, v5, Ldbxyzptlk/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 297
    iget-object v0, v5, Ldbxyzptlk/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/a/j;

    iget-object v0, v0, Ldbxyzptlk/a/j;->b:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Ldbxyzptlk/a/g;->a:Landroid/content/Context;

    iget-object v7, v5, Ldbxyzptlk/a/i;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 293
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0

    .line 294
    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c
.end method

.method static synthetic a(Ldbxyzptlk/a/g;)V
    .registers 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ldbxyzptlk/a/g;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;)V
    .registers 12
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 164
    iget-object v8, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    monitor-enter v8

    .line 165
    :try_start_4
    iget-object v0, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 166
    if-nez v0, :cond_10

    .line 167
    monitor-exit v8

    .line 188
    :goto_f
    return-void

    :cond_10
    move v7, v5

    .line 169
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_5e

    .line 170
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    move v6, v5

    .line 171
    :goto_1e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge v6, v2, :cond_5a

    .line 172
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    iget-object v2, p0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 174
    if-eqz v2, :cond_56

    move v4, v5

    .line 175
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_4b

    .line 176
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldbxyzptlk/a/j;

    iget-object v3, v3, Ldbxyzptlk/a/j;->b:Landroid/content/BroadcastReceiver;

    if-ne v3, p1, :cond_63

    .line 177
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    add-int/lit8 v3, v4, -0x1

    .line 175
    :goto_48
    add-int/lit8 v4, v3, 0x1

    goto :goto_33

    .line 181
    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_56

    .line 182
    iget-object v2, p0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_56
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1e

    .line 169
    :cond_5a
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_11

    .line 187
    :cond_5e
    monitor-exit v8

    goto :goto_f

    :catchall_60
    move-exception v0

    monitor-exit v8
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    move v3, v4

    goto :goto_48
.end method

.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 134
    iget-object v2, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 135
    :try_start_3
    new-instance v3, Ldbxyzptlk/a/j;

    invoke-direct {v3, p2, p1}, Ldbxyzptlk/a/j;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 137
    if-nez v0, :cond_1d

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    iget-object v1, p0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ge v1, v0, :cond_48

    .line 143
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    .line 144
    iget-object v0, p0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

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
    iget-object v5, p0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 151
    :cond_48
    monitor-exit v2

    .line 152
    return-void

    .line 151
    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .registers 18
    .parameter

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Ldbxyzptlk/a/g;->b:Ljava/util/HashMap;

    monitor-enter v13

    .line 202
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Ldbxyzptlk/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c9

    const/4 v1, 0x1

    move v12, v1

    .line 211
    :goto_2d
    if-eqz v12, :cond_5d

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resolving type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 215
    :cond_5d
    move-object/from16 v0, p0

    iget-object v1, v0, Ldbxyzptlk/a/g;->c:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    .line 216
    if-eqz v8, :cond_16e

    .line 217
    if-eqz v12, :cond_89

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Action list: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_89
    const/4 v10, 0x0

    .line 220
    const/4 v1, 0x0

    move v11, v1

    :goto_8c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_133

    .line 221
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ldbxyzptlk/a/j;

    move-object v9, v0

    .line 222
    if-eqz v12, :cond_b6

    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Matching against filter "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v14, v9, Ldbxyzptlk/a/j;->a:Landroid/content/IntentFilter;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_b6
    iget-boolean v1, v9, Ldbxyzptlk/a/j;->c:Z

    if-eqz v1, :cond_cd

    .line 225
    if-eqz v12, :cond_125

    .line 226
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v10

    .line 220
    :goto_c4
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-object v10, v1

    goto :goto_8c

    .line 209
    :cond_c9
    const/4 v1, 0x0

    move v12, v1

    goto/16 :goto_2d

    .line 231
    :cond_cd
    iget-object v1, v9, Ldbxyzptlk/a/j;->a:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 233
    if-ltz v1, :cond_106

    .line 234
    if-eqz v12, :cond_f5

    const-string v7, "LocalBroadcastManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  Filter matched!  match=0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_f5
    if-nez v10, :cond_171

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :goto_fc
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v7, 0x1

    iput-boolean v7, v9, Ldbxyzptlk/a/j;->c:Z

    goto :goto_c4

    .line 267
    :catchall_103
    move-exception v1

    monitor-exit v13
    :try_end_105
    .catchall {:try_start_5 .. :try_end_105} :catchall_103

    throw v1

    .line 242
    :cond_106
    if-eqz v12, :cond_125

    .line 244
    packed-switch v1, :pswitch_data_174

    .line 249
    :try_start_10b
    const-string v1, "unknown reason"

    .line 251
    :goto_10d
    const-string v7, "LocalBroadcastManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  Filter did not match: "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    move-object v1, v10

    goto :goto_c4

    .line 245
    :pswitch_127
    const-string v1, "action"

    goto :goto_10d

    .line 246
    :pswitch_12a
    const-string v1, "category"

    goto :goto_10d

    .line 247
    :pswitch_12d
    const-string v1, "data"

    goto :goto_10d

    .line 248
    :pswitch_130
    const-string v1, "type"

    goto :goto_10d

    .line 256
    :cond_133
    if-eqz v10, :cond_16e

    .line 257
    const/4 v1, 0x0

    move v2, v1

    :goto_137
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_14a

    .line 258
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbxyzptlk/a/j;

    const/4 v3, 0x0

    iput-boolean v3, v1, Ldbxyzptlk/a/j;->c:Z

    .line 257
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_137

    .line 260
    :cond_14a
    move-object/from16 v0, p0

    iget-object v1, v0, Ldbxyzptlk/a/g;->d:Ljava/util/ArrayList;

    new-instance v2, Ldbxyzptlk/a/i;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v10}, Ldbxyzptlk/a/i;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Ldbxyzptlk/a/g;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16b

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Ldbxyzptlk/a/g;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_16b
    const/4 v1, 0x1

    monitor-exit v13

    .line 268
    :goto_16d
    return v1

    .line 267
    :cond_16e
    monitor-exit v13
    :try_end_16f
    .catchall {:try_start_10b .. :try_end_16f} :catchall_103

    .line 268
    const/4 v1, 0x0

    goto :goto_16d

    :cond_171
    move-object v1, v10

    goto :goto_fc

    .line 244
    nop

    :pswitch_data_174
    .packed-switch -0x4
        :pswitch_12a
        :pswitch_127
        :pswitch_12d
        :pswitch_130
    .end packed-switch
.end method

.method public final b(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Ldbxyzptlk/a/g;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0}, Ldbxyzptlk/a/g;->a()V

    .line 280
    :cond_9
    return-void
.end method
