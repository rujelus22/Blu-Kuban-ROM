.class public LTH;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "DocsSyncAdapter.java"


# static fields
.field private static final a:Ljava/util/concurrent/locks/Lock;


# instance fields
.field a:LKR;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:LVo;

.field a:LZC;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/app/NotificationManager;

.field private final a:Landroid/content/Context;

.field private final a:Lans;

.field a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LeZ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lans;Landroid/content/Context;LVo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 76
    iput-object p1, p0, LTH;->a:Lans;

    .line 77
    iput-object p3, p0, LTH;->a:LVo;

    .line 78
    iput-object p2, p0, LTH;->a:Landroid/content/Context;

    .line 79
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, LTH;->a:Landroid/app/NotificationManager;

    .line 81
    return-void
.end method

.method static synthetic a(LTH;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LTH;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(LTH;)Lans;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LTH;->a:Lans;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/locks/Lock;
    .registers 1

    .prologue
    .line 50
    sget-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(LTH;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, LTH;->a(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    return-void
.end method

.method private a(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 151
    iget-object v1, p0, LTH;->a:Lans;

    invoke-virtual {p0}, LTH;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 153
    iget-object v1, p0, LTH;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 155
    invoke-static {p1, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 156
    if-eqz v1, :cond_22

    iget-object v1, p0, LTH;->a:LeZ;

    sget-object v2, LeV;->f:LeV;

    invoke-interface {v1, v2}, LeZ;->a(LeV;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 157
    :cond_22
    invoke-virtual {p0}, LTH;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, LVn;->a(Landroid/content/Context;Landroid/accounts/Account;Z)V

    .line 161
    const-string v0, "feed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 162
    const-string v0, "DocsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync requested due to GSync feed request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "feed"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "gsyncNotifyEvent"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    :cond_58
    :try_start_58
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/content/SyncStats;->numEntries:J

    .line 169
    iget-object v0, p0, LTH;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 170
    iget-object v0, p0, LTH;->a:LVo;

    iget-object v1, p0, LTH;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p4}, LVo;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 171
    iget-object v0, p0, LTH;->a:LKR;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, LKR;->a(Ljava/lang/String;)Z

    .line 173
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "entriesChanged"

    const/4 v3, 0x0

    iget-object v4, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v4, Landroid/content/SyncStats;->numEntries:J

    long-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_83
    .catch Landroid/accounts/AuthenticatorException; {:try_start_58 .. :try_end_83} :catch_89
    .catch LFx; {:try_start_58 .. :try_end_83} :catch_a2
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_83} :catch_bd
    .catch LarZ; {:try_start_58 .. :try_end_83} :catch_d1
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_83} :catch_e5
    .catch LarL; {:try_start_58 .. :try_end_83} :catch_f9
    .catch LJi; {:try_start_58 .. :try_end_83} :catch_10e
    .catch Lasn; {:try_start_58 .. :try_end_83} :catch_123

    .line 212
    :goto_83
    iget-object v0, p0, LTH;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 213
    return-void

    .line 175
    :catch_89
    move-exception v0

    .line 176
    const-string v1, "Cannot obtain required authentication."

    invoke-direct {p0, v1, v0}, LTH;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    const-string v1, "DocsSyncAdapter"

    const-string v2, "AuthenticationCredentialException"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "AuthenicationCredentialException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_83

    .line 181
    :catch_a2
    move-exception v0

    .line 182
    invoke-virtual {v0}, LFx;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, LTH;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    const-string v1, "DocsSyncAdapter"

    const-string v2, "SyncException"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "SyncException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_83

    .line 186
    :catch_bd
    move-exception v0

    .line 187
    const-string v1, "DocsSyncAdapter"

    const-string v2, "Interrupted"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "InterruptedException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_83

    .line 190
    :catch_d1
    move-exception v0

    .line 191
    const-string v1, "DocsSyncAdapter"

    const-string v2, "Network error"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "HttpException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_83

    .line 194
    :catch_e5
    move-exception v0

    .line 195
    const-string v1, "DocsSyncAdapter"

    const-string v2, "Network error"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "IOException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_83

    .line 198
    :catch_f9
    move-exception v0

    .line 199
    const-string v1, "DocsSyncAdapter"

    const-string v2, "AuthenticationException"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "AuthenticationException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_83

    .line 202
    :catch_10e
    move-exception v0

    .line 203
    const-string v1, "DocsSyncAdapter"

    const-string v2, "Invalid credentials"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "InvalidCredentialsException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_83

    .line 206
    :catch_123
    move-exception v0

    .line 207
    const-string v1, "DocsSyncAdapter"

    const-string v2, "Error parsing gdata XML"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    iget-object v0, p0, LTH;->a:LdE;

    const-string v1, "sync"

    const-string v2, "error"

    const-string v3, "ParseException"

    invoke-virtual {v0, v1, v2, v3, v6}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_83
.end method

.method private a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080078

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 219
    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, LTH;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    const-string v2, "notification_message"

    sget v3, LcY;->ouch_msg_sync_error_drivev2:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v2, "stack_trace"

    invoke-static {p2}, LZA;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0}, LTH;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 231
    invoke-virtual {p0}, LTH;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Google Docs Synchronisation Error"

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 234
    iget-object v1, p0, LTH;->a:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_49} :catch_4a

    .line 238
    return-void

    .line 235
    :catch_4a
    move-exception v0

    .line 236
    throw v0
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, LTH;->a:Lans;

    iget-object v1, p0, LTH;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 87
    const-string v0, "DocsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onPerformSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "upload"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 147
    :goto_3c
    return-void

    .line 99
    :cond_3d
    iget-object v0, p0, LTH;->a:Lans;

    iget-object v1, p0, LTH;->a:Landroid/content/Context;

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 100
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 101
    invoke-virtual {p5}, Landroid/content/SyncResult;->clear()V

    .line 102
    sget-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_51
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 106
    const-string v0, "DocsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync canceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_51 .. :try_end_79} :catchall_e2

    .line 144
    sget-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3c

    .line 110
    :cond_7f
    :try_start_7f
    const-string v0, "DocsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v8

    .line 113
    new-instance v0, LTI;

    const-string v2, "DocsSyncAdapter"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, LTI;-><init>(LTH;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    :cond_b6
    invoke-interface {v8}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 142
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_bc
    .catchall {:try_start_7f .. :try_end_bc} :catchall_e2

    move-result v0

    if-eqz v0, :cond_b6

    .line 144
    sget-object v0, LTH;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 146
    const-string v0, "DocsSyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync completed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 144
    :catchall_e2
    move-exception v0

    sget-object v1, LTH;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
