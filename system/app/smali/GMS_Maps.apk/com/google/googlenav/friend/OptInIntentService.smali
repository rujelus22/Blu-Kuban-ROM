.class public Lcom/google/googlenav/friend/OptInIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/List;


# instance fields
.field b:Z

.field c:I

.field private d:LQ/a;

.field private e:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/OptInIntentService;->a:Ljava/util/List;

    .line 56
    sget-object v0, Lcom/google/googlenav/friend/OptInIntentService;->a:Ljava/util/List;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/google/googlenav/friend/OptInIntentService;->a:Ljava/util/List;

    const-string v1, "com.google.googlenav.friend.intenttest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 94
    const-string v0, "OptInIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 87
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->c:I

    .line 95
    return-void
.end method

.method private a(Landroid/os/Messenger;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->b:Z

    if-eqz v0, :cond_7

    .line 278
    iput p2, p0, Lcom/google/googlenav/friend/OptInIntentService;->c:I

    .line 291
    :goto_6
    return-void

    .line 281
    :cond_7
    invoke-static {p2}, Lcom/google/googlenav/friend/af;->a(I)V

    .line 283
    const/4 v0, 0x0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 285
    :try_start_f
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_6

    .line 286
    :catch_13
    move-exception v0

    .line 289
    invoke-static {}, Lcom/google/googlenav/friend/af;->I()V

    goto :goto_6
.end method

.method private a(Landroid/accounts/Account;Landroid/os/Messenger;ILandroid/app/PendingIntent;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 221
    if-nez p2, :cond_9

    .line 223
    invoke-static {v3}, Lcom/google/googlenav/friend/af;->a(I)V

    .line 257
    :goto_8
    return v0

    .line 227
    :cond_9
    if-nez p1, :cond_f

    .line 229
    invoke-direct {p0, p2, v3}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_8

    .line 233
    :cond_f
    if-nez p4, :cond_15

    .line 235
    invoke-direct {p0, p2, v3}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_8

    .line 239
    :cond_15
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/friend/OptInIntentService;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 241
    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_8

    .line 245
    :cond_23
    const/high16 v2, -0x8000

    if-ne p3, v2, :cond_2b

    .line 247
    invoke-direct {p0, p2, v3}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_8

    .line 251
    :cond_2b
    if-eq p3, v1, :cond_32

    .line 253
    const/4 v1, 0x4

    invoke-direct {p0, p2, v1}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_8

    :cond_32
    move v0, v1

    .line 257
    goto :goto_8
.end method

.method private b(Landroid/accounts/Account;)Z
    .registers 4
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->a()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_10

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 200
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->v()Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method a(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 119
    invoke-static {}, Lcom/google/googlenav/friend/af;->G()V

    .line 122
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 123
    const-string v1, "messenger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 125
    invoke-direct {p0, v1, v4}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    .line 150
    :goto_1d
    return-void

    .line 129
    :cond_1e
    const-string v2, "version"

    const/high16 v3, -0x8000

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 130
    const-string v2, "sender"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 131
    invoke-direct {p0, v0, v1, v3, v2}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/accounts/Account;Landroid/os/Messenger;ILandroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 132
    invoke-static {}, Lcom/google/googlenav/friend/af;->H()V

    goto :goto_1d

    .line 138
    :cond_38
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/OptInIntentService;->b(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 140
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_1d

    .line 145
    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_1d

    .line 148
    :cond_4e
    invoke-direct {p0, v1, v4}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/os/Messenger;I)V

    goto :goto_1d
.end method

.method protected a(Landroid/accounts/Account;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/googlenav/common/io/j;->a(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 174
    invoke-static {}, LQ/a;->b()V

    .line 178
    :cond_1a
    if-nez v0, :cond_31

    .line 179
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 180
    const/4 v1, 0x0

    invoke-static {v0, p1, v2, v2, v1}, Las/j;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;ZZLandroid/app/Activity;)V

    .line 184
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Las/f;->a(Ljava/lang/String;)V

    .line 186
    :cond_31
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->a()V

    .line 187
    return v3
.end method

.method a(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 264
    sget-object v0, Lcom/google/googlenav/friend/OptInIntentService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    const/4 v0, 0x1

    .line 269
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected b()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 298
    new-instance v0, Lcom/google/googlenav/friend/aR;

    invoke-direct {v0, v1, v1, v2, v5}, Lcom/google/googlenav/friend/aR;-><init>(ZIILcom/google/googlenav/friend/aS;)V

    .line 304
    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/aR;->a(Z)V

    .line 306
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aR;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aT;

    .line 308
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aT;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_19
    move v0, v2

    .line 356
    :goto_1a
    return v0

    .line 312
    :cond_1b
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lbq/G;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 313
    invoke-virtual {v0, v1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 314
    const/4 v3, 0x7

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 318
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 320
    new-instance v3, Lcom/google/googlenav/friend/aO;

    invoke-direct {v3, v0, v5}, Lcom/google/googlenav/friend/aO;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/friend/aP;)V

    .line 322
    invoke-virtual {v3}, Lcom/google/googlenav/friend/aO;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aQ;

    .line 325
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aQ;->a()Z

    move-result v0

    if-nez v0, :cond_43

    :cond_41
    move v0, v2

    .line 326
    goto :goto_1a

    .line 334
    :cond_43
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/OptInSyncBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 337
    invoke-static {}, Lcom/google/googlenav/friend/ae;->e()Lcom/google/googlenav/friend/bk;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/googlenav/friend/bk;->a(ZLjava/lang/String;Lcom/google/googlenav/friend/be;)V

    .line 344
    invoke-static {v1}, Lcom/google/googlenav/friend/au;->a(Z)Z

    .line 347
    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/d;->b()V

    .line 350
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 354
    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    move v0, v1

    .line 356
    goto :goto_1a
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 100
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/OptInIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 101
    const/4 v1, 0x1

    const-string v2, "OptInIntentService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->e:Landroid/os/PowerManager$WakeLock;

    .line 102
    new-instance v0, LQ/a;

    invoke-direct {v0}, LQ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->d:LQ/a;

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->d:LQ/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/OptInIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LQ/a;->a(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/OptInIntentService;->a(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_e

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/friend/OptInIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 114
    return-void

    .line 112
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/OptInIntentService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
