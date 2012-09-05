.class public Lcom/coremobility/integration/app/CM_App;
.super Landroid/app/Application;

# interfaces
.implements Lcom/coremobility/integration/app/k;


# static fields
.field private static F:Lcom/coremobility/integration/app/b;

.field private static G:I

.field private static H:I

.field private static I:Lcom/coremobility/integration/app/CM_App;

.field private static J:Landroid/os/PowerManager$WakeLock;

.field private static K:Z

.field private static L:Z

.field public static a:J

.field public static volatile b:Lcom/coremobility/integration/app/e;

.field public static c:I

.field public static d:I

.field protected static f:Lcom/coremobility/app/vnotes/cf;

.field protected static g:Z

.field private static h:Lcom/coremobility/integration/app/c;

.field private static i:Lcom/coremobility/integration/app/d;

.field private static j:Lcom/coremobility/integration/app/a;


# instance fields
.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    sput v2, Lcom/coremobility/integration/app/CM_App;->c:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->d:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->G:I

    sput v2, Lcom/coremobility/integration/app/CM_App;->H:I

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->K:Z

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->L:Z

    sput-object v3, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    sput-boolean v2, Lcom/coremobility/integration/app/CM_App;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "CM_App"

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_App;->e:Ljava/lang/String;

    return-void
.end method

.method public static final a()Lcom/coremobility/integration/app/CM_App;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/coremobility/integration/app/CM_App;->G:I

    return-void
.end method

.method public static a(II)V
    .registers 4

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->f()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.coremobility.app.vnotes.START_NOW"

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    monitor-enter v1

    :try_start_16
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/d;->a(I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/integration/app/c;->a(Landroid/os/Handler;I)V

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    sput p0, Lcom/coremobility/integration/app/CM_App;->c:I

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->i()V

    goto :goto_21
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public static a(Z)V
    .registers 3

    if-nez p0, :cond_6

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->K:Z

    if-ne v0, p0, :cond_1a

    :cond_6
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x2328

    iput v0, v1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_1d

    const/4 v0, 0x1

    :goto_13
    iput v0, v1, Landroid/os/Message;->arg1:I

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    sput-boolean p0, Lcom/coremobility/integration/app/CM_App;->K:Z

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static final b()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/coremobility/a/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final c()[I
    .registers 1

    invoke-static {}, Lcom/coremobility/a/c;->b()[I

    move-result-object v0

    return-object v0
.end method

.method public static d()V
    .registers 2

    :try_start_0
    const-string v0, "CM-RTNREQ"

    invoke-static {v0}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    const-string v1, "RTN"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12
.end method

.method public static g()Lcom/coremobility/app/vnotes/cf;
    .registers 1

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    return-object v0
.end method

.method public static h()Z
    .registers 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->K:Z

    return v0
.end method

.method public static i()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coremobility/integration/app/CM_App;->L:Z

    sget v0, Lcom/coremobility/integration/app/CM_App;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_15

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;

    if-nez v0, :cond_15

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-direct {v0}, Lcom/coremobility/integration/app/CM_App;->p()V

    :cond_15
    return-void
.end method

.method public static j()Z
    .registers 1

    sget-boolean v0, Lcom/coremobility/integration/app/CM_App;->L:Z

    return v0
.end method

.method public static n()V
    .registers 3

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/integration/app/c;->a(Landroid/os/Handler;I)V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_11

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized p()V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_3
    const-string v1, "Starting Service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_2a

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Starting CM_VnoteService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_2a
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    const-class v2, Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.coremobility.app.vnotes.APP_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/CM_App;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final e()Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "welcome_message"

    const-string v2, "raw"

    const-string v3, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15
.end method

.method public final f()Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "welcome_message_vtt"

    const-string v2, "raw"

    const-string v3, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x0

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_15
.end method

.method public final declared-synchronized k()V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_3
    const-string v1, "Service Created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/app/c;

    invoke-direct {v0}, Lcom/coremobility/integration/app/c;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    new-instance v0, Lcom/coremobility/integration/app/d;

    invoke-direct {v0}, Lcom/coremobility/integration/app/d;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()V
    .registers 9

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_3
    const-string v1, "Finish Starting Service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    :cond_17
    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    const/16 v1, 0x7e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(IJJLjava/lang/Object;Z)V

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_MessageReceiver;->a()V

    invoke-static {}, Lcom/coremobility/integration/message/CM_SMSReceiver;->a()V
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()V
    .registers 4

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_3
    const-string v1, "Service Destroyed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->J:Landroid/os/PowerManager$WakeLock;

    :cond_17
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->h:Lcom/coremobility/integration/app/c;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->i:Lcom/coremobility/integration/app/d;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()V
    .registers 4

    new-instance v0, Lcom/coremobility/integration/app/a;

    invoke-direct {v0}, Lcom/coremobility/integration/app/a;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/coremobility/integration/app/b;

    invoke-direct {v0}, Lcom/coremobility/integration/app/b;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->F:Lcom/coremobility/integration/app/b;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_App;->F:Lcom/coremobility/integration/app/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public declared-synchronized onCreate()V
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    if-nez v1, :cond_c2

    sput-object p0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    const/4 v1, 0x1

    sput v1, Lcom/coremobility/integration/app/CM_App;->H:I

    invoke-static {}, Lcom/coremobility/integration/i/f;->i()V

    const/16 v1, 0x17

    const-string v2, "CM_App created"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_c4

    :try_start_1b
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CM-RTNREQ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_c9

    move-result v1

    if-eqz v1, :cond_95

    :try_start_4b
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    array-length v3, v2

    move v1, v0

    :goto_57
    if-ge v1, v3, :cond_61

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Lcom/coremobility/integration/app/CM_App;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    :cond_61
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_76

    array-length v2, v1

    :goto_6c
    if-ge v0, v2, :cond_76

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/coremobility/integration/app/CM_App;->deleteDatabase(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_76
    const-string v0, "cmconfigstring"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V

    const-string v0, "cmconfigvalue"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V

    const-string v0, "cmconfigdata"

    invoke-direct {p0, v0}, Lcom/coremobility/integration/app/CM_App;->a(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_c4

    :try_start_85
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_95
    .catchall {:try_start_85 .. :try_end_95} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_95} :catch_c7

    :cond_95
    :goto_95
    :try_start_95
    const-string v0, "CM_App"

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_App;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    new-instance v0, Lcom/coremobility/integration/app/e;

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coremobility/integration/app/e;-><init>(Lcom/coremobility/integration/app/CM_App;Landroid/os/Looper;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    new-instance v0, Lcom/coremobility/app/vnotes/cf;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/cf;-><init>(Lcom/coremobility/integration/app/CM_App;)V

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    const/16 v0, 0x17

    const-string v1, "startService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_App;->p()V
    :try_end_c2
    .catchall {:try_start_95 .. :try_end_c2} :catchall_c4

    :cond_c2
    monitor-exit p0

    return-void

    :catchall_c4
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_c7
    move-exception v0

    goto :goto_95

    :catch_c9
    move-exception v0

    goto :goto_95
.end method

.method public declared-synchronized onTerminate()V
    .registers 4

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_2
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->o()V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->f:Lcom/coremobility/app/vnotes/cf;

    :cond_11
    sget v0, Lcom/coremobility/integration/app/CM_App;->H:I

    if-eq v0, v1, :cond_3a

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;

    if-eqz v0, :cond_3a

    const/4 v0, 0x2

    sput v0, Lcom/coremobility/integration/app/CM_App;->H:I

    const/16 v0, 0x17

    const-string v1, "CM_DestroyApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_5b

    const/16 v0, 0x17

    :try_start_28
    const-string v1, "CM_DestroyApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/integration/app/CM_Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/integration/app/CM_App;->stopService(Landroid/content/Intent;)Z
    :try_end_3a
    .catchall {:try_start_28 .. :try_end_3a} :catchall_5b
    .catch Lcom/coremobility/integration/a; {:try_start_28 .. :try_end_3a} :catch_56

    :cond_3a
    :goto_3a
    const-wide/16 v0, 0x0

    :try_start_3c
    sput-wide v0, Lcom/coremobility/integration/app/CM_App;->a:J

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->j:Lcom/coremobility/integration/app/a;

    :cond_51
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/CM_App;->I:Lcom/coremobility/integration/app/CM_App;
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_5b

    monitor-exit p0

    return-void

    :catch_56
    move-exception v0

    :try_start_57
    invoke-virtual {v0}, Lcom/coremobility/integration/a;->printStackTrace()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_3a

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
